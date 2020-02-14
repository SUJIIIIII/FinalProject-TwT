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

@Controller
public class PlanController {
	@Autowired
	public PlanBiz biz;
	//철환
	
	
	
	
	
	
	
	//-------------------------------------------------------------------------------------------------------------
	
	//수지
	@RequestMapping("/plan.do")
	public String createSelect(Model model) {
		
		List<CityVo> res = biz.selectCityAll();
		model.addAttribute("res",res);
		System.out.println("1번째 res의 위도 : " + res.get(0).getcity_Lati());
		return "TwTPlan/plan_create";
	}
	
	@RequestMapping("/cityJson.do")
	@ResponseBody
	public Map<String,List> cityJson(){
		List<CityVo> res = biz.selectCityAll();
		Map<String,List> map = new HashMap<String, List>();
		
		map.put("city", res);
		
		return map;
	}
	
	
	
	
	

}
