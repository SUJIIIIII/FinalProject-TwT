package com.fp.twt.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.twt.vo.MemberVo;

@Repository
public class MypageDaoImpl implements MypageDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 회원가입
	@Override
	public int memberInsert(MemberVo vo) {
		int res = 0;

		try {
			res = sqlSession.insert(namespace + "insertM", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	// 로그인
	@Override
	public MemberVo memberLogin(MemberVo vo) {
		MemberVo res = null;

		try {
			res = sqlSession.selectOne(namespace + "loginM", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	// 아이디 중복검사
	@Override
	public int idChk(String m_Id) {
		return sqlSession.selectOne(namespace + "idChkM", m_Id);
	}

	// 유저 인증키 생성 메소드
	@Override
	public int GetKey(String m_Id, String key) {
		return 0;
	}

	// 유저 인증키 Y로 바꿔주는 메소드
	@Override
	public int alter_userKey(String m_Id, String key) {
		return 0;
	}

}
