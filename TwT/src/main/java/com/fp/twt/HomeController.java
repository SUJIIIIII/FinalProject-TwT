package com.fp.twt;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//페이지 이동
//	@RequestMapping("plan.do")
//	public String plan() {
//		return "TwTPlan/plan_create";
//	}
	@RequestMapping("planDetail.do")
	public String planDetail() {
		return "TwTPlan/plan_detail";
	}
	@RequestMapping("flight.do")
	public String flight() {
		return "TwTFlight/flight_main";
	}
	@RequestMapping("flightList.do")
	public String flightList() {
		return "TwTFlight/flight_list";
	}
	@RequestMapping("hotel.do")
	public String hotel() {
		return "TwTHotel/hotel_list";
	}
	@RequestMapping("hotelDetail.do")
	public String hotelDetail() {
		return "TwTHotel/hotel_detail";
	}
	@RequestMapping("community.do")
	public String community() {
		return "TwTCommunity/community_list";
	}
	@RequestMapping("communityDetail.do")
	public String communityDetail(){
		return "TwTCommunity/community_detail";
	}
	@RequestMapping("communityInsert.do")
	public String communityInsert(){
		return "TwTCommunity/community_insert";
	}
	@RequestMapping("mypage.do")
	public String mypage() {
		return "TwTAccount/mypage";
	}
	@RequestMapping("login.do")
	public String login() {
		return "TwTAccount/login";
	}
}
