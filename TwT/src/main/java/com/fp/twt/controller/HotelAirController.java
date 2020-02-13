package com.fp.twt.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fp.twt.biz.HotelAirBiz;
import com.fp.twt.vo.HotelVo;

@Controller
public class HotelAirController {
	//찬우
	
	
	
	
	
	//---------------------------------------------------------------------------------------------------
	
	//범식
	
	//호텔 리스트
	@Inject
	private HotelAirBiz service;
	
	
	@RequestMapping( value="/hotel_list.do",method=RequestMethod.GET)
	public String hotel_list(HotelVo hotelVo,Model model) {
		
		List<HotelVo> list = service.hotel_list(hotelVo);
		model.addAttribute("list",list);
		
		
		
		return "hotel_list";
	}
	
	
	
	

}
