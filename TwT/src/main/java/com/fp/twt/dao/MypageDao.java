package com.fp.twt.dao;

import com.fp.twt.vo.MemberVo;

public interface MypageDao {

	String namespace = "twt.";
	
	// 회원가입
	public int memberInsert(MemberVo vo);

	// 로그인
	public MemberVo memberLogin(MemberVo vo);
	
	// 아이디 중복검사
	public int idChk(String m_Id);

	// 유저 인증키 생성 메소드
	public int GetKey(String m_Id, String key);
	
	// 유저 인증키 Y로 바꿔주는 메소드
	public int alter_userKey(String m_Id, String key);
}
