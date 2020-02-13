package com.fp.twt.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fp.twt.HomeController;
import com.fp.twt.biz.MypageBiz;
import com.fp.twt.vo.MemberVo;

@Controller
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private MypageBiz biz;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	// 회원가입
	@RequestMapping("/createAccount.do")
	public String memberInsert(MemberVo vo, HttpServletRequest request) {
		vo.setmPass(passwordEncoder.encode(vo.getmPass()));
		System.out.println("암호화 된 비밀번호 : " + vo.getmPass());

		if (biz.memberInsert(vo) > 0) {
			System.out.println("회원가입 성공" + vo.toString());
			return "login";
		} else {
			System.out.println("회원가입 실패");
			return "login";
		}
	}

	// TODO : 회원조회

	// TODO : 회원수정

	// TODO : 회원탈퇴

	// 로그인
	@RequestMapping("/enter.do")
	public String login(MemberVo vo, HttpSession session) {
		MemberVo res = biz.login(vo);

		boolean check = false;

		// 비밀번호 해독
		if (passwordEncoder.matches(vo.getmPass(), res.getmPass())) {
			session.setAttribute("login", res);

			check = true;
		}

		return "redirect:/index.jsp";
	}

	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {

		session.getAttribute("login");

		session.invalidate();

		return "redirect:/index.jsp";
	}

	// 아이디 중복 검사
	@RequestMapping(value = "idChk.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<Object, Object> idCheck(String mId) {
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		System.out.println("들어오는 아이디 : "+mId);
		int result = biz.idChk(mId);
		System.out.println("확인 : "+result);
		map.put("check", result);

		return map;
	}

}
