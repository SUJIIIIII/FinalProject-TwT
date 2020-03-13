﻿package com.fp.twt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fp.twt.biz.HotelAirBiz;
import com.fp.twt.vo.HotelVo;
import com.fp.twt.vo.PagingVo;
import com.fp.twt.vo.AirSearchVo;


@Controller
public class HotelAirController {

	private static final Logger logger = LoggerFactory.getLogger(HotelAirController.class);
	
	@Autowired
	private HotelAirBiz biz;
	
	//찬우
	
	
	@RequestMapping(value = "/airsearch.do")//항공권 검색 
	public String airSearch(Model model, AirSearchVo vo) {
		
		logger.info("SELECT AIR");
		
		model.addAttribute("url", biz.airSearch(vo));
		/*
		 * System.out.println(vo.getAirtype()); System.out.println(vo.getComing_day());
		 * System.out.println(vo.getDeparture_day());
		 * System.out.println(vo.getDestination());
		 * System.out.println(vo.getPersonnel());
		 * System.out.println(vo.getStarting_point());
		 */
		
		return "TwTFlight/flight_list";
	}
	
	@RequestMapping(value = "/Success.do")//예약시 예약 카운트
	public String success(@RequestParam String hotelname) {
		
		logger.info("insert con");

		//String hotelname = request.getParameter("hotelname");
		System.out.println("호텔이름"+hotelname);
		
		biz.success(hotelname);
		
		return "redirect:hotel.do";//호텔.두 실행
	}
	
	
	
	//---------------------------------------------------------------------------------------------------
	
	//범식
	
	// 호텔 리스트
	@RequestMapping("/hotel.do")
	public String hotel(Model model) {
		logger.info("SELECT LIST");
		model.addAttribute("hotellist",biz.HselectList());
		
		
		return "TwTHotel/hotel_list";
	}
	
	// 호텔 객실
	@RequestMapping("hotelDetail.do")
	public String hotelDetail(Model model, HttpServletRequest request) {
		
		logger.info("SELECT ONE");
		
		String h_code = request.getParameter("h_Code");
		System.out.println("컨트롤러 h_code : " + h_code);
		
		
		model.addAttribute("hvo",biz.selectOne_B(h_code));
		model.addAttribute("detailList_B",biz.detailList_B(h_code));
		
		return "TwTHotel/hotel_detail";
	}
	
	
	
	
	
	
	
	
	
	
	

}
