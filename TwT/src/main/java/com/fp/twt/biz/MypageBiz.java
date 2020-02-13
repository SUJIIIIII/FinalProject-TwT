package com.fp.twt.biz;

import com.fp.twt.vo.MemberVo;

public interface MypageBiz {
	// 회원가입
    public int memberInsert(MemberVo vo);
    
    // 로그인
    public MemberVo login(MemberVo vo);

    // 아이디 중복검사
    public int idChk(String mId);
   
}
