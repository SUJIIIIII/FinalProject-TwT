package com.fp.twt.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fp.twt.biz.HotelAirBiz;
import com.fp.twt.vo.HotelVo;
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
		System.out.println(vo.getAirtype());
		System.out.println(vo.getComing_day());
		System.out.println(vo.getDeparture_day());
		System.out.println(vo.getDestination());
		System.out.println(vo.getPersonnel());
		System.out.println(vo.getStarting_point());
		
		return "TwTFlight/flight_list";
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
	public String hotelDetail(Model model,String h_code) {
		
		logger.info("SELECT ONE");
		/*
		 * HotelVo vo = biz.selectOne_B(h_code); System.out.println(vo.geth_Code());
		 */
		
		model.addAttribute("hvo",biz.selectOne_B(h_code));
		
		
		return "TwTHotel/hotel_detail";
	}
	

}
