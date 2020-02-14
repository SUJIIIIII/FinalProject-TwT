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
			res = sqlSession.insert(namespace + "insert", vo);
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
			res = sqlSession.selectOne(namespace + "login", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	// 아이디 중복검사
	@Override
	public int idChk(String mId) {
		return sqlSession.selectOne(namespace + "idChk", mId);
	}

}
