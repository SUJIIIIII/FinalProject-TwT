package com.fp.twt.dao;

import java.util.List;

import com.fp.twt.vo.AirplaneInfoVo;
import com.fp.twt.vo.MemberVo;

public interface MypageDao {

	String namespace = "twt.";
	
	// 회원가입
	public int memberInsert(MemberVo vo);

	// 로그인
	public MemberVo memberLogin(MemberVo vo);
	
	// 아이디 중복검사
	public int idChk(String m_Id);

	// 네이버 로그인
	public MemberVo naverlogin(MemberVo vo);

	// 항공권 조회
	public List<AirplaneInfoVo> selectAirList(MemberVo m_Code);

	// 항공권 입력
	public int insertAir(AirplaneInfoVo vo);

}
