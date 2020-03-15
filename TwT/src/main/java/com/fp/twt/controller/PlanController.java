package com.fp.twt.controller;

import java.io.File;


import java.io.IOException;
import java.util.HashMap;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fp.twt.biz.PlanBiz;
import com.fp.twt.vo.CityVo;
import com.fp.twt.vo.TravelPointVo;



// http://localhost:8090/twt/plan.do

@Controller
public class PlanController {
	@Autowired
	public PlanBiz biz;
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	//철환
	
	@RequestMapping("/selectCity.do")
	public String selectCity(Model model, HttpServletRequest request) {
		// 도시변경
		System.out.println("selectCity");
		// city 모든 정보
		List<CityVo> allCity = biz.selectCityAll();

		// 해당하는 도시에 대한 Spot 정보
		String citycode = request.getParameter("citycode");
		System.out.println("controller에서 citycode : " + citycode);
		List<TravelPointVo> cityspot = biz.selectCitySpot(citycode);// 도시별 spot 불러오기s

		// 선택된 city 정보
		CityVo cityvo = biz.selectCityOne(citycode);

/*		System.out.println("allspot : " + allSpot);
		System.out.println("위도 : " + allSpot.get(0).gettp_Lati());
		System.out.println("경도 : " + allSpot.get(0).gettp_Long());*/

		model.addAttribute("allCity", allCity);
		model.addAttribute("allSpot", cityspot);
		model.addAttribute("citycode", citycode);
		model.addAttribute("cityvo", cityvo);
		
		return "TwTPlan/plan_spot_box";
	}
	
	
	
	
	
	//-------------------------------------------------------------------------------------------------------------
	
	//수지
	@RequestMapping("/plan.do")
	public String createSelect(Model model) {
		// city 모든 정보
		List<CityVo> res = biz.selectCityAll(); 
		model.addAttribute("res",res);
		return "TwTPlan/plan_create";
	}
	
	@RequestMapping("planDetail.do")
	public String planDetail(Model model, HttpServletRequest request) {
		// Day1 추가해서 만들기
		
		
		// city 모든 정보
		List<CityVo> allCity = biz.selectCityAll();
		
		// spot 모든 정보
		String citycode = request.getParameter("citycode");
		System.out.println("controller에서 citycode : " + citycode);
//		List<TravelPointVo> allSpot = biz.selectAllSpot();
		List<TravelPointVo> cityspot = biz.selectCitySpot(citycode);// 도시별 spot 불러오기s
		
		// 선택된 city 정보
		CityVo cityvo = biz.selectCityOne(citycode);
		
//		System.out.println("allspot : " + cityspot);
		System.out.println("allcity : " + allCity);
		System.out.println("위도 : " + cityspot.get(0).gettp_Lati());
		System.out.println("경도 : " + cityspot.get(0).gettp_Long());
		
		model.addAttribute("allCity",allCity);
		model.addAttribute("allSpot",cityspot);
		model.addAttribute("citycode",citycode);
		model.addAttribute("cityvo",cityvo);
		
		return "TwTPlan/plan_detail";
	}
	
	@RequestMapping("/insertPlan.do")
	public String insertPlan(MultipartFile file,Object pn_dayList) {
		System.out.println("컨트롤러에서 daylist : " + pn_dayList);
		
		// ------- file upload --------
		// 고유 id 부여
		UUID uuid = UUID.randomUUID();
		// 고유 id + 저장하려는 실제 파일 이름
		String fileName = uuid.toString() + "_" + file.getOriginalFilename();
		System.out.println("파일 이름 : " + fileName);
		// 저장 경로, 이름 지정
		File target = new File(uploadPath, fileName);
		
		try {
			// 임시 디렉토리에 저장된 파일을 지정된 디렉토리로 복사
			FileCopyUtils.copy(file.getBytes(), target);
		} catch (IOException e) {
			e.printStackTrace();
		}
		// ------- file upload end --------
		
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("/testInsert.do")
	public String testInsert(@RequestBody Map<String,Object> map) {
		System.out.println("form : " + map.get("form_data"));
		System.out.println("day : " + map.get("day_list"));
		
		
		return "redirect:/index.jsp";
	}
	

}
