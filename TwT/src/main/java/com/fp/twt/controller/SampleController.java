package com.fp.twt.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class SampleController {

	private static final Logger logger = LoggerFactory.getLogger(SampleController.class);
	
	//@Setter(onMethod_ = @Autowired)
	@Autowired
    private KakaoPay kakaopay;
    
    @GetMapping("/kakao.do") 
	 public String kakaobut() {
    		logger.info("카카오두");
    		System.out.println("프린트 카카오두");
		  return "TwTHotel/kakaoPay";
	 }
	
	 @GetMapping("/kakaoPay.do") 
	 public void kakaoPayGet() {
		 System.out.println("프린트 카카오겟");
		 logger.info("카카오겟");
	 }
	 
    
    @PostMapping("/kakaoPay.do")
    public String kakaoPay() {
    	System.out.println("프린트 카카오포스트");
    	logger.info("kakaoPay post............................................");
        
        return "redirect:" + kakaopay.kakaoPayReady();
 
    }
    
    @GetMapping("/kakaoPaySuccess.do")
    public String kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
    	
    	System.out.println("프린트 카카오페이 석세스");
    	System.out.println("프린트 카카오페이 석세스 : " + pg_token);
    	logger.info("kakaoPaySuccess get............................................");
    	logger.info("kakaoPaySuccess pg_token : " + pg_token);
        
        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));
        
        return "TwTHotel/kakaoPaySuccess";
    }
    
    @GetMapping("/kakaoSuccess.do")
    public String dd(){
    	
    	return "TwTHotel/kakaoPaySuccess";
    }
    
}
