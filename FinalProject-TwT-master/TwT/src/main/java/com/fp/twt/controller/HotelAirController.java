﻿package com.fp.twt.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fp.twt.biz.HotelAirBiz;

@Controller
public class HotelAirController {
	//찬우
	
	
	@RequestMapping("/airsearch.do")//항공권 검색 
	public String airSearch() {
		
		
		return "TwTFlight/flight_list";
	}
	
	
	
	//---------------------------------------------------------------------------------------------------
	
	//범식
	
	private static final Logger logger = LoggerFactory.getLogger(HotelAirController.class);
	
	@Autowired
	private HotelAirBiz biz;
	
	
	// 호텔 리스트
	@RequestMapping("/hotel.do")
	public String hotel(Model model) {
		logger.info("SELECT LIST");
		model.addAttribute("hotellist",biz.HselectList());
		
		
		return "TwTHotel/hotel_list";
	}
	
	
	
	

}