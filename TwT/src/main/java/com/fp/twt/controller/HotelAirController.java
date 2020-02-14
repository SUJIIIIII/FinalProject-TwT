package com.fp.twt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelAirController {
	//찬우
	
	
	@RequestMapping("/airsearch.do")//항공권 검색 
	public String airSearch() {
		
		
		return "TwTFlight/flight_list";
	}
	
	
	
	//---------------------------------------------------------------------------------------------------
	
	//범식
	
	
	
	
	

}
