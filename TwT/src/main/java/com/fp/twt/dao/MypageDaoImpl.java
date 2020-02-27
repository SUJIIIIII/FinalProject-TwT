package com.fp.twt.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.twt.vo.AirplaneInfoVo;
import com.fp.twt.vo.HotelBookingVo;
import com.fp.twt.vo.MemberVo;
import com.fp.twt.vo.TravelScheduleVo;

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
			for (AirplaneInfoVo i : list) {
				System.out.println(i.toString());
			}
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
		return sqlSession.update(namespace + "GetKey", m_Id);
	}

	// 유저 인증키 Y 변경
	@Override
	public int alterUserKey(String m_Id, String key) {
		System.out.println("다오 임플에 들어오는 아이디:" + m_Id);
		System.out.println("다오 임플에 들어오는 키 : " + key);
		return sqlSession.update(namespace + "alterUserKey", m_Id);
	}

	// 항공권 정보 삭제
	@Override
	public Object deleteAir(String air_Code) {
		System.out.println("삭제버튼 누른 항공권 정보의 에어코드 : " + air_Code);
		return sqlSession.delete(namespace + "deleteAirM", air_Code);
	}

	// 회원탈퇴
	@Override
	public Object deleteAccount(String m_Code) {
		System.out.println("탈퇴버튼 누른 회원 코드 : " + m_Code);
		return sqlSession.delete(namespace + "deleteUserM", m_Code);
	}

	// 항공권 정보 수정
	@Override
	public Object updateAir(AirplaneInfoVo vo) {
		System.out.println("수정할 항공권 vo : " + vo.toString());
		return sqlSession.update(namespace + "updateAirM", vo);
	}

	// 로그인시 디비에 저장된 아이디
	@Override
	public int loginIdChk(String m_Id) {
		return sqlSession.selectOne(namespace + "loginIdChk", m_Id);
	}

	// 로그인시 디비에 저장된 비번확인
	@Override
	public int loginPwdChk(String m_Pass) {
		return sqlSession.selectOne(namespace + "loginPwdChk", m_Pass);
	}

	// 로그인시 디비에 저장된 모든 정보 검토
	@Override
	public MemberVo selectOneLogin(MemberVo vo) {
		MemberVo res = sqlSession.selectOne(namespace + "loginSelectOne", vo);
		return res;
	}

	// 비밀번호 변경
	@Override
	public void memberUpdate(MemberVo vo) {
		sqlSession.update(namespace + "updateM", vo);
	}

	// 비밀번호 찾기
	@Override
	public void searchPassword(MemberVo vo) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "searchPasswordM", vo);
	}

	// 호텔 예약 조회
	@Override
	public List<HotelBookingVo> selectAllHotelBooking(String m_Code) {
		List<HotelBookingVo> list = new ArrayList<HotelBookingVo>();

		System.out.println("호텔 예약 조회할 멤버 번호 : " + m_Code);

		try {
			list = sqlSession.selectList(namespace + "selectAllBookM", m_Code);
			for (HotelBookingVo i : list) {
				System.out.println(i.toString());
			}
		} catch (Exception e) {
			System.out.println("전체 호텔 예약 리스트 에러");
			e.printStackTrace();
		}
		return list;
	}

	// SNS로그인 시 자동 회원가입
	@Override
	public int memberSNSInsert(MemberVo vo) {
		int res = 0;

		try {
			res = sqlSession.insert(namespace + "insertSNSM", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	// 찜 목록 조회
	@Override
	public List<TravelScheduleVo> selectAllLike(String m_Code) {
		List<TravelScheduleVo> list = new ArrayList<TravelScheduleVo>();

		try {
			list = sqlSession.selectList(namespace + "likeM", m_Code);
			for (TravelScheduleVo i : list) {
				System.out.println(i.toString());
			}
		} catch (Exception e) {
			System.out.println("찜목록 조회 실패");
			e.printStackTrace();
		}
		return list;
	}

	// 내가 쓴 일정 조회
	@Override
	public List<TravelScheduleVo> selectMyRoute(String m_Code) {
		List<TravelScheduleVo> list = new ArrayList<TravelScheduleVo>();
		
		try {
			list = sqlSession.selectList(namespace + "routeM", m_Code);
			for (TravelScheduleVo i : list) {
				System.out.println(i.toString());
			}
		} catch (Exception e) {
			System.out.println("내 일정 조회 실패");
			e.printStackTrace();
		}
		return list;
	}
}
