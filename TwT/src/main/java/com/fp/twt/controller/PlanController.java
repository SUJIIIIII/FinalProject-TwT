package com.fp.twt.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fp.twt.biz.PlanBiz;
import com.fp.twt.vo.CityVo;
import com.fp.twt.vo.TravelPointVo;

// http://localhost:8090/twt/plan.do

@Controller
public class PlanController {
	@Autowired
	public PlanBiz biz;
	//철환
	
	
	
	
	
	
	
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
		List<TravelPointVo> allSpot = biz.selectAllSpot();
		
		// 선택된 city 정보
		CityVo cityvo = biz.selectCityOne(citycode);
		
		System.out.println("allspot : " + allSpot);
		System.out.println("위도 : " + allSpot.get(0).gettp_Lati());
		System.out.println("경도 : " + allSpot.get(0).gettp_Long());
		
		model.addAttribute("allCity",allCity);
		model.addAttribute("allSpot",allSpot);
		model.addAttribute("citycode",citycode);
		model.addAttribute("cityvo",cityvo);
		
		return "TwTPlan/plan_detail";
	}
	
//	@RequestMapping("/cityJson.do")
//	@ResponseBody
//	public Map<String,List> cityJson(){
//		List<CityVo> res = biz.selectCityAll();
//		Map<String,List> map = new HashMap<String, List>();
//		
//		map.put("city", res);
//		
//		return map;
//	}
	
	
	
	
	

}
