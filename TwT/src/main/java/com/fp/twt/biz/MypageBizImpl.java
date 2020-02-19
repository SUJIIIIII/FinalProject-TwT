package com.fp.twt.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.twt.dao.MypageDao;
import com.fp.twt.vo.AirplaneInfoVo;
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

	// 네이버 로그인
	@Override
	public MemberVo naverlogin(MemberVo vo) {
		// TODO Auto-generated method stub
		return dao.naverlogin(vo);
	}

	// 내 항공권 전체 조회
	@Override
	public List<AirplaneInfoVo> selectAirList(String m_Code) {
		// TODO Auto-generated method stub
		return dao.selectAirList(m_Code);
	}

	// 항공권 정보 입력
	@Override
	public int insertAir(AirplaneInfoVo vo) {
		// TODO Auto-generated method stub
		return dao.insertAir(vo);
	}

	// 유저 메일 인증 메소드
	@Override
	public int GetKey(String m_Id, String key) {
		// TODO Auto-generated method stub
		return dao.GetKey(m_Id, key);
	}

	// 이메일 인증 확인 메소드
	@Override
	public int alterUserkey(String m_Id, String key) {
		// TODO Auto-generated method stub
		return dao.alterUserKey(m_Id, key);
	}

	// 항공권 정보 삭제 메소드
	@Override
	public Object deleteAir(String air_Code) {
		// TODO Auto-generated method stub
		return dao.deleteAir(air_Code);
	}

	// 회원탈퇴
	@Override
	public Object deleteAccount(String m_Code) {
		// TODO Auto-generated method stub
		return dao.deleteAccount(m_Code);
	}

	// 항공권 정보 수정
	@Override
	public Object selectOne(AirplaneInfoVo vo, String air_Code) {
		// TODO Auto-generated method stub
		return dao.updateAir(vo, air_Code);
	}
}
