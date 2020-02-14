package com.fp.twt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
//		List<CityVo> res = biz.selectCityAll();
//		model.addAttribute("res",res);
//		System.out.println("1번째 res의 위도 : " + res.get(1).getcity_Lati());
		return "TwTPlan/plan_create";
	}
	
	
	
	
	

}
