package com.fp.twt.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fp.twt.biz.PlanBiz;
import com.fp.twt.vo.CityVo;

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
	public String planDetail(Model model) {
		// city 모든 정보
		List<CityVo> allCity = biz.selectCityAll();
		model.addAttribute("allCity",allCity);
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
