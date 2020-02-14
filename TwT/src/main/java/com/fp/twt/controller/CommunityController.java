package com.fp.twt.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fp.twt.biz.CommunityBiz;


@Controller
public class CommunityController {
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);
	
	@Autowired
	private CommunityBiz biz;
	
	//용훈
	
	
	
	
	
	//----------------------------------------------------------------------------------------------
	
	// 도영
	// 리스트 뿌려주는
	@RequestMapping("/community.do")
	public String community(Model model) {
		
		 logger.info("SELECT LIST"); 
		 model.addAttribute("community", biz.TS_selectList());
		 System.out.println(model);
		
		return "TwTCommunity/community_list";
	}
	
	
	
	

}
