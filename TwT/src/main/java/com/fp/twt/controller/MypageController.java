package com.fp.twt.controller;

import java.io.IOException;
import java.util.HashMap;

import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.codehaus.jackson.JsonParser;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.google.connect.GoogleOAuth2Template;
import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.fp.twt.HomeController;
import com.fp.twt.biz.MypageBiz;
import com.fp.twt.common.social.KakaoAPI;
import com.fp.twt.common.social.NaverLoginBO;
import com.fp.twt.vo.AirplaneInfoVo;
import com.fp.twt.vo.MemberVo;
import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private MypageBiz biz;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	

	@Autowired
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	@Autowired
	private KakaoAPI kakao;

	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;

	@Autowired
	private OAuth2Parameters googleOAuth2Parameters;

	public void setGoogleConnectionFactory(GoogleConnectionFactory googleConnectionFactory) {
		this.googleConnectionFactory = googleConnectionFactory;
	}

	public void setGoogleOAuth2Parameters(OAuth2Parameters googleOAuth2Parameters) {
		this.googleOAuth2Parameters = googleOAuth2Parameters;
	}

	// 회원가입
	@RequestMapping("/createAccount.do")
	public String memberInsert(MemberVo vo, HttpServletRequest request) {

		// 비밀번호 암호화
		vo.setm_Pass(passwordEncoder.encode(vo.getm_Pass()));
		System.out.println("암호화 된 비밀번호 : " + vo.getm_Pass());

		if (biz.memberInsert(vo) > 0) {
			System.out.println("회원가입 성공" + vo.toString());
			return "TwTAccount/login";
		} else {
			System.out.println("회원가입 실패");
			return "TwTAccount/login";
		}
	}

	// TODO : 회원조회

	// TODO : 회원수정

	// TODO : 회원탈퇴

	// 로그인
	@RequestMapping("/enter.do")
	public String login(MemberVo vo, HttpSession session, Model model) {
		
		MemberVo res = biz.login(vo);

		boolean check = false;

		// 비밀번호 해독
		if (passwordEncoder.matches(vo.getm_Pass(), res.getm_Pass())) {
			session.setAttribute("user", res);
			check = true;
		}

		return "redirect:/index.jsp";
	}

	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		// 카카오 로그아웃
		kakao.kakaoLogout((String) session.getAttribute("access_Token"));
		session.removeAttribute("access_Token");
		session.removeAttribute("kakaoId");

		// 네이버 로그아웃
		session.removeAttribute("naverId");
		
		// 구글 로그아웃
		session.removeAttribute("googleId");

		// 일반 로그아웃
		session.getAttribute("login");
		session.invalidate();

		return "redirect:/index.jsp";
	}

	// 아이디 중복 검사
	@RequestMapping(value = "idChk.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<Object, Object> idCheck(String m_Id) {

		Map<Object, Object> map = new HashMap<Object, Object>();
		System.out.println("들어오는 아이디 : " + m_Id);
		int result = biz.idChk(m_Id);
		System.out.println("확인 : " + result);

		map.put("check", result);

		return map;
	}

	// 네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/callback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session,
			HttpServletRequest request, MemberVo vo) throws IOException, ParseException {

		int resultCnt = 0;
		System.out.println("여기는 callback");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);

		// 로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginBO.getUserProfile(oauthToken);
		System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
		model.addAttribute("result", apiResult);
		System.out.println("result" + apiResult);

		// DB와 세션에 넣기
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject) jsonParser.parse(naverLoginBO.getUserProfile(oauthToken).toString());

		JSONObject response = (JSONObject) jsonObject.get("response");

		System.out.println("이것은 : " + jsonObject.get("response"));
		System.out.println("아이디는 : " + (String) response.get("id"));

		vo.setm_Id((String) response.get("id"));
		vo.setm_Pass("0000"); // DB에서 Not null로 처리했기에 임의로 준 값
		vo.setm_Name((String) response.get("name"));
		vo.setm_Email((String) response.get("email"));

		System.out.println("멤버아이디는 :  " + vo.getm_Id());

		// 생략 가능_세션에 담기 위해 사용했다.
		session.setAttribute("naverId", vo.getm_Id());
		return "redirect:/index.jsp";

	}

	// 카카오 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/kakaologin.do")
	public String kakao(@RequestParam("code") String code, HttpSession session) {
		String access_Token = kakao.getAccessToken(code);
		System.out.println("카카오 : " + access_Token);

		HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
		System.out.println("login Controller : " + userInfo);

		// 클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
		if (userInfo.get("email") != null) {
			session.setAttribute("kakaoId", userInfo.get("email"));
			session.setAttribute("access_Token", access_Token);
		}

		return "redirect:/index.jsp";
	}

	// 구글 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/googlelogin.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String googleCallback(Model model, @RequestParam String code, HttpSession session) throws IOException {
		System.out.println("여기는 googleCallback");

		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
		AccessGrant accessGrant = oauthOperations.exchangeForAccess(code, googleOAuth2Parameters.getRedirectUri(),
				null);

		String accessToken = accessGrant.getAccessToken();
		System.out.println("accessToken:" + accessToken);

		Long expireTime = accessGrant.getExpireTime();
		if (expireTime != null && expireTime < System.currentTimeMillis()) {
			accessToken = accessGrant.getRefreshToken();
			System.out.printf("accessToken is expired. refresh token = {}", accessToken);
		}
      
		session.setAttribute("googleId", accessToken);
		
		return "redirect:/index.jsp";
	}
	
	// 항공권 예약 정보 입력
	@RequestMapping("/air_insert.do")
	public String insertAir(Model model, AirplaneInfoVo vo) {
		logger.info("항공권 정보 입력버튼 누름");
		model.addAttribute("airVo", biz.insertAir(vo));
		return "TwTAccount/mypage";
	}
}
