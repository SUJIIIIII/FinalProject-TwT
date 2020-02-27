
package com.fp.twt.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fp.twt.HomeController;
import com.fp.twt.biz.MypageBiz;
import com.fp.twt.common.email.UserMailSendService;
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
	private UserMailSendService mailsender;

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
	@RequestMapping(value = "/createAccount.do", method = RequestMethod.POST)
	public String memberInsert(MemberVo vo, HttpServletRequest request) {
		System.out.println("회원가입 시작");
		// 비밀번호 암호화
		vo.setm_Pass(passwordEncoder.encode(vo.getm_Pass()));
		System.out.println("암호화 된 비밀번호 : " + vo.getm_Pass());

		// 인증 메일 보내기 메소드
		mailsender.mailSendWithUserKey(vo.getm_Email(), vo.getm_Id(), request);

		if (biz.memberInsert(vo) > 0) {
			System.out.println("회원가입 성공" + vo.toString());
			return "TwTAccount/login";
		} else {
			System.out.println("회원가입 실패");
			return "TwTAccount/login";
		}
	}

	// 이메일 인증 컨트롤
	@RequestMapping(value = "/keyAlter.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String keyAlter(@RequestParam("m_Id") String m_Id, @RequestParam("m_Mailcheck") String key) {
		mailsender.alterUserkey(m_Id, key);
		return "TwTAccount/login";
	}

	// 회원수정(비밀번호 수정)
	@RequestMapping("/updatePwd.do")
	public String pwdUpdate(String m_Pass, HttpSession session) throws IOException {
		MemberVo res = (MemberVo) session.getAttribute("user");
		String m_Id = res.getm_Id();
		System.out.println("회원수정 버튼 누름");
		System.out.println("비밀번호 바꿀 아이디 : " + m_Id);
		System.out.println("수정하고싶은 비밀번호 :" + m_Pass);

		MemberVo vo = new MemberVo();
		vo.setm_Id(m_Id);
		// 비밀번호 암호화
		vo.setm_Pass(passwordEncoder.encode(m_Pass));
		System.out.println("암호화 된 비밀번호 : " + vo.getm_Pass());

		biz.memberUpdate(vo);

		return "redirect:mypage.do";
	}

	// 회원탈퇴
	@RequestMapping("/deleteAccount.do")
	public String deleteAccount(Model model, String m_Code, HttpSession session) throws IOException {
		System.out.println("회원탙퇴버튼 누름");
		model.addAttribute("user", biz.deleteAccount(m_Code));
		session.removeAttribute("user");
		session.invalidate();

		return "TwTAccount/login";
	}

	// 로그인
	@RequestMapping("/enter.do")
	public String login(MemberVo vo, HttpSession session, Model model) throws IOException {

		MemberVo res = biz.login(vo);

		boolean check = false;

		// 비밀번호 해독
		if (passwordEncoder.matches(vo.getm_Pass(), res.getm_Pass())) {
			System.out.println("로그인 정보 : " + res.toString());
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

	// 로그인시 유효한 아이디 비밀번호 확인
	@RequestMapping(value = "loginChk.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<Object, Object> loginCheck(String m_Id, String m_Pass) {
		Map<Object, Object> map = new HashMap<Object, Object>();
		MemberVo vo = new MemberVo();
		vo.setm_Id(m_Id);
		vo.setm_Pass(m_Pass);
		MemberVo res = biz.selectOneLogin(vo);

		System.out.println("들어오는 아이디 : " + m_Id);
		System.out.println("들어오는 비번 : " + m_Pass);

		int result1 = biz.loginIdChk(m_Id);
		int result2 = 0;
		int result3 = 0;
		
		System.out.println("로그인하려는 사람 이메일 체크 :" + res.getm_Mailcheck());

		if(res.getm_Mailcheck().contains("Y")) {
			result3 = 1;
		}
		
		// 비밀번호 해독
		if (passwordEncoder.matches(m_Pass, res.getm_Pass())) {
			System.out.println("로그인 체크 정보" + m_Id + ":" + m_Pass);
			result2 = 1;
		}

		System.out.println("확인 : " + result1 + result2 + result3);

		map.put("check1", result1);
		map.put("check2", result2);
		map.put("check3", result3);

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

		System.out.println("멤버아이디는 : " + vo.getm_Id());
		
		biz.memberSNSInsert(vo);
		
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
		System.out.println("항공권 입력 버튼 누름");
		model.addAttribute("airVo", biz.insertAir(vo));
		System.out.println("항공권 투스트링 : " + vo.toString());
		return "redirect:mypage.do";
	}

	// 항공권 예약 정보 수정
	@RequestMapping("/air_update.do")
	public String updateAir(Model model, AirplaneInfoVo vo, String air_Code) {
		System.out.println("항공권 수정 버튼 누름");
		System.out.println("수정할 항공권 정보의 번호 : " + air_Code);
		model.addAttribute("airVo", biz.selectOne(vo));
		return "redirect:mypage.do";
	}

	// 항공권 예약 정보 삭제
	@RequestMapping("/air_delete.do")
	public String deleteAir(Model model, String air_Code) {
		System.out.println("항공권 삭제 버튼 누름");
		System.out.println("여기까지 항공번호 들어오나요..." + air_Code);
		model.addAttribute("airVo", biz.deleteAir(air_Code));
		return "redirect:mypage.do";
	}

	// 비밀번호 찾기
	@RequestMapping(value = "searchPassword.do", method = RequestMethod.GET)
	@ResponseBody
	public String passwordSearch(@RequestParam("m_Id") String m_Id, @RequestParam("m_Email") String m_Email,
			HttpServletRequest request) {

		mailsender.mailSendWithPassword(m_Id, m_Email, request);

		return "TwTAccount/login";
	}

}
