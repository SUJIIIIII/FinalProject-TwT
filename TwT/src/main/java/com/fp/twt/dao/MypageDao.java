package com.fp.twt.dao;

import com.fp.twt.vo.MemberVo;

public interface MypageDao {

	String namespace = "twt.";
	
	// 회원가입
	public int memberInsert(MemberVo vo);

	// 로그인
	public MemberVo memberLogin(MemberVo vo);
	
	// 아이디 중복검사
	public int idChk(String mId);
}
