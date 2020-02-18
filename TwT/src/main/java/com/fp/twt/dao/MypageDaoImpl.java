package com.fp.twt.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.twt.vo.AirplaneInfoVo;
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

	// 네이버 로그인
	@Override
	public MemberVo naverlogin(MemberVo vo) {
		MemberVo res = null;

		res = sqlSession.selectOne(namespace + "naverM", vo);

		return res;
	}

	// 항공권 조회
	@Override
	public List<AirplaneInfoVo> selectAirList(String m_Code) {
		List<AirplaneInfoVo> list = new ArrayList<AirplaneInfoVo>();

		System.out.println("마이페이지 다오 임플 : " + m_Code);

		try {
			list = sqlSession.selectList(namespace + "selectAllAirM", m_Code);
		} catch (Exception e) {
			System.out.println("전체 항공권 리스트 에러");
			e.printStackTrace();
		}
		return list;
	}

	// 항공권 입력
	@Override
	public int insertAir(AirplaneInfoVo vo) {
		int res = 0;

		try {
			res = sqlSession.insert(namespace + "insertAirM", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	// 유저 인증키 생성
	@Override
	public int GetKey(String m_Id, String key) {
		System.out.println("다오 임플에 들어오는 아이디:" + m_Id);
		System.out.println("다오 임플에 들어오는 키 : " + key);
		return sqlSession.update(namespace+"GetKey", key);
	}
}
