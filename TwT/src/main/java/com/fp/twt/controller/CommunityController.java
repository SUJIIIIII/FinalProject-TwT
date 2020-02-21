package com.fp.twt.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.fp.twt.biz.CommunityBiz;
import com.fp.twt.vo.AnswerVo;
import com.fp.twt.vo.MemberVo;
import com.fp.twt.vo.ScheduleReviewVo;
import com.fp.twt.vo.TravelScheduleVo;


@Controller
public class CommunityController {
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

	@Autowired
	private CommunityBiz biz;

	// 용훈

	// 포토북 이미지 업로드
	@PostMapping(value = "/uploadImageFile.do", produces = "application/json")
	@ResponseBody
	public Map<String, String> uploadSummernoteImageFile(HttpServletRequest request,
			@RequestParam("file") MultipartFile multipartFile) throws FileNotFoundException {

		Map<String, String> map = new HashMap<String, String>();

		String fileRoot = "C:\\potoBook_image\\"; // 저장될 외부 파일 경로

		String originalFileName = multipartFile.getOriginalFilename(); // 오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf(".")); // 파일 확장자

		String savedFileName = UUID.randomUUID() + extension; // 저장될 파일 명

		File targetFile = new File(fileRoot + savedFileName);

		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile); // 파일 저장
			map.put("url", "/potoBook/" + savedFileName);

		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile); // 저장된 파일 삭제
			e.printStackTrace();
		}

		return map;
	}
	
	//포토북 인설트폼
	@RequestMapping("/communityInsertForm.do")
	public String communityInsert(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		MemberVo member = (MemberVo) session.getAttribute("user");
		model.addAttribute("m_Code", member.getm_Id());

		return "TwTCommunity/community_insert";
	}

	
	//포토북 인설트
	@RequestMapping("/potoBookinsert.do")
	public ModelAndView communityInsert(Model model, ScheduleReviewVo vo, HttpServletRequest request) throws IOException {

		String[] imgs = request.getParameterValues("potoImg"); // 업로드된 사진 경로들
		String content = vo.getSr_Content();

		String imgsrc = "";
		
		for (String src : imgs) {
			if (content.contains(src)) {
				imgsrc += src+",";
			}
		}
		vo.setSr_ImgSrc(imgsrc);
		int res = biz.potoBookInsert(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/community.do");
		
		return mav;
	}

	@RequestMapping("/potoBookDetail.do")
	public String potoBookDetail(Model model, HttpServletRequest request, String sr_Code) {
		ScheduleReviewVo vo = biz.potoOne(sr_Code);
		model.addAttribute("poto", vo);
		
		HttpSession session = request.getSession(false);
		MemberVo member = (MemberVo) session.getAttribute("user");
		
		List<AnswerVo> anslist = biz.ansList(sr_Code);
		
		boolean tf = false;
		if(member != null) {
			if(vo.getM_Code().equals(member.getm_Name())) {
				tf = true;
			}
			model.addAttribute("user", member);
		}
		model.addAttribute("anslist", anslist);
		model.addAttribute("truefalse", tf);

		return "TwTCommunity/potoBook_detail";
	}
	
	@RequestMapping("/updatePotoForm.do")
	public String potoBookUpdateForm(Model model, String sr_Code) {
		ScheduleReviewVo vo = biz.potoOne(sr_Code);
		model.addAttribute("vo", vo);
		
		return "TwTCommunity/community_update";
	}
	
	@RequestMapping("/potoBookupdate.do")
	public ModelAndView potoBookUpdate(Model model, ScheduleReviewVo vo, HttpServletRequest request) {
		ScheduleReviewVo orgvo = biz.potoOne(vo.getSr_Code());
		String orgsrc = orgvo.getSr_ImgSrc();
		
		String content = vo.getSr_Content();
		String[] orgimgs = orgsrc.split(",");
		String[] imgs = request.getParameterValues("potoImg");
		
		String imgsrc = "";
		
		for(String src : orgimgs) {
			if(content.contains(src)) {
				imgsrc += src+",";
			}
		}
		for(String src : imgs) {
			if(content.contains(src)) {
				imgsrc += src+",";
			}
		}
		
		vo.setSr_ImgSrc(imgsrc);
		
		int res = biz.potoBookUpdate(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/community.do");
		
		return mav;
	}
	
	@RequestMapping("/potoBookDelete.do")
	public ModelAndView potoBookDelete(String sr_Code) {
		System.out.println(sr_Code);
		
		int res = biz.potoBookDelete(sr_Code);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/community.do");
		
		return mav;
	}
	
	@RequestMapping("/ansInsert.do")
	@ResponseBody
	public Map<String, AnswerVo> ansInsert(AnswerVo vo) {
		Map<String, AnswerVo> map = new HashMap<String, AnswerVo>();
		
		vo.setReple_Code("false");
		int res = biz.ansInsert(vo);
		
		/* List<AnswerVo> list = biz.ansList(); */
		
		
		
		return map;
	}
	// ----------------------------------------------------------------------------------------------

	// 도영
	// 여행 일정 리스트
	@RequestMapping("/community.do")
	public String newcommunity(Model model, String ts_theme) {
		logger.info("SELECT LIST");

		//도영
		List res = biz.selectList_D();
		TravelScheduleVo vo = (TravelScheduleVo) res.get(0);
		System.out.println("컨트롤러 id " + vo.getM_Id());
		model.addAttribute("community", biz.selectList_D());
		//
		
		//용훈
		List<ScheduleReviewVo> list = biz.potoBookList();
		model.addAttribute("potoList", list);
		//
		
		return "TwTCommunity/community_list";
	}

	@RequestMapping("/popcommunity.do")
	public String popcommunity(Model model) {
		logger.info("SELECT LIST"); 
		
		model.addAttribute("community", biz.PselectList_D());
		
		return "TwTCommunity/community_list";
	}

	// 여행 일정 디테일
	@RequestMapping("communityDetail.do")
	public String communityDetail(Model model, String ts_code) {
		logger.info("SELECT ONE");
		
		TravelScheduleVo vo = biz.selectOne_D(ts_code);
		System.out.println(vo.getTs_Day());
		System.out.println(vo.getTs_Memo());
		
		
		model.addAttribute("detail", biz.selectOne_D(ts_code));
		
		model.addAttribute("detailList", biz.detailList_D(ts_code));

		System.out.println(vo.getts_Theme());
		
		 model.addAttribute("themeList", biz.themeList(vo.getts_Theme()));
		 		 
		
		return "TwTCommunity/community_detail"; 
	}
	

}
