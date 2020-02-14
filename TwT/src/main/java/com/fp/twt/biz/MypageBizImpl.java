package com.fp.twt.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.twt.dao.MypageDao;
import com.fp.twt.vo.MemberVo;

@Service
public class MypageBizImpl implements MypageBiz {
	
	@Autowired
	private MypageDao dao; 

	// 회원가입
	@Override
	public int memberInsert(MemberVo vo) {
		return dao.memberInsert(vo); 
	}

	// 로그인
	@Override
	public MemberVo login(MemberVo vo) {
		return dao.memberLogin(vo);
	}

	// 아이디 중복검사
	@Override
	public int idChk(String m_Id) {
		return dao.idChk(m_Id);
	}
}
