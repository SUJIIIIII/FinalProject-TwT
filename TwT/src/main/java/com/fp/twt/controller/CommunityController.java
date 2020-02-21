package com.fp.twt.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
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
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fp.twt.biz.CommunityBiz;
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
	@PostMapping(value = "uploadImageFile.do", produces = "application/json")
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
	@RequestMapping("communityInsertForm.do")
	public String communityInsert(Model model, HttpServletRequest request) {
		int res = biz.insertForm();

		HttpSession session = request.getSession(false);
		MemberVo member = (MemberVo) session.getAttribute("user");

		if (res > 0) {
			String srCode = "SR" + biz.selectSrCode();
			model.addAttribute("sr_Code", srCode);
			model.addAttribute("m_Code", member.getm_Code());
		}

		return "TwTCommunity/community_insert";
	}

	
	//포토북 인설트
	@RequestMapping("potoBookinsert.do")
	public String communityUpdate(Model model, ScheduleReviewVo vo, HttpServletRequest request) throws IOException {

		String[] imgs = request.getParameterValues("potoImg"); // 업로드된 사진 경로들
		String content = vo.getSr_Content();

		List<String> existimgs = new ArrayList<String>();

		for (String src : imgs) {
			if (content.contains(src)) {
				existimgs.add(src);
			}
		}

		for (String src : existimgs) {
			String fileRoot = "C:\\potoBook_image\\" + vo.getSr_Code() + "\\";
			String extension = src.substring(src.lastIndexOf("."));
			String savedFileName = UUID.randomUUID() + extension;
			
			String path = src.substring(10);
			
			File file = new File("C:\\potoBook_image\\"+path); //임시저장된 파일
			File newFile = new File(fileRoot + savedFileName); //새로저장할 파일
			
			FileInputStream fis = null;

			try {
			fis = new FileInputStream(file); // 원본파일
			
			FileUtils.copyInputStreamToFile(fis, newFile);

			} catch(Exception e) {
			e.printStackTrace();
			} finally {
			fis.close();
			}
		}
		int res = biz.potoBookUpdate(vo);
		
		return "TwTCommunity/community_list";
	}
	
	@RequestMapping("potoBookList.do")
	@ResponseBody
	public Map<String, Object> potoBookList(){
		List<ScheduleReviewVo> list = biz.potoBookList();
		
		System.out.println(list.size());
		for(ScheduleReviewVo vo : list) {
			System.out.println(vo.getSr_Title());
		}
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("potoList", list);
		
		return map;
	}

	@RequestMapping("potoBookDetail.do")
	public String potoBookDetail(Model model) {

		return "TwTCommunity/potoBook_detail";
	}
	// ----------------------------------------------------------------------------------------------

	// 도영
	// 여행 일정 리스트
	@RequestMapping("/community.do")
	public String newcommunity(Model model) {

		logger.info("SELECT LIST");

		List res = biz.selectList_D();
		TravelScheduleVo vo = (TravelScheduleVo) res.get(0);
		System.out.println("컨트롤러 id " + vo.getM_Id());

		model.addAttribute("community", biz.selectList_D());

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
		
		model.addAttribute("detail", biz.selectOne_D(ts_code));
		
		return "TwTCommunity/community_detail"; 
	}
	

}
