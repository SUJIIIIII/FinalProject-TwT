package com.fp.twt.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.twt.vo.AnswerVo;
import com.fp.twt.vo.ScheduleReviewVo;
import com.fp.twt.vo.TravelScheduleVo;

@Repository
public class CommunityDaoImpl implements CommunityDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//용훈
	@Override
	public int potoBookInsert(ScheduleReviewVo vo) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"insertPotoBook_Y", vo);
		} catch(Exception e) {
			System.out.println("[error] : insertPotoBook_Y");
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public List<ScheduleReviewVo> potoBookList() {
		List<ScheduleReviewVo> list = new ArrayList<ScheduleReviewVo>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"selectList_Y");
		} catch(Exception e) {
			System.out.println("[error] : selectList_Y");
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public ScheduleReviewVo potoOne(String sr_Code) {
		ScheduleReviewVo vo = null;
		
		try {
			vo = sqlSession.selectOne(NAMESPACE+"potoOne_Y", sr_Code);
		} catch(Exception e) {
			System.out.println("[error] : potoselect_Y");
			e.printStackTrace();
		}
		
		return vo;
	}

	@Override
	public int potoBookUpdate(ScheduleReviewVo vo) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE+"updatePotoBook_Y", vo);
		} catch(Exception e) {
			System.out.println("[error] : updatePotoBook_Y");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int potoBookDelete(String sr_Code) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"deletePotoBook_Y", sr_Code);
		} catch(Exception e) {
			System.out.println("[error] : deletePotoBook_Y");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int ansInsert(AnswerVo vo) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"ansInsert_Y", vo);
		} catch(Exception e) {
			System.out.println("[error] : ansInsert_Y");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public List<AnswerVo> ansList(String sr_Code) {
		List<AnswerVo> list = new ArrayList<AnswerVo>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"ansList_Y",sr_Code);
		} catch(Exception e) {
			System.out.println("[error] : ansList_Y");
			e.printStackTrace();
		}
		return list;
	}
	//--------------------------------------------------------------------------------------------------//
	
	//도영
	
	@Override
	public List<TravelScheduleVo> selectList_D() {
		List<TravelScheduleVo> list = new ArrayList<TravelScheduleVo>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"selectList_D");
		} catch(Exception e) {
			System.out.println("[error] : selectList_D");
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<TravelScheduleVo> PselectList_D() {
		List<TravelScheduleVo> list = new ArrayList<TravelScheduleVo>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"PselectList_D");
		} catch(Exception e) {
			System.out.println("[error] : PselectList_D");
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public TravelScheduleVo selectOne_D(String ts_code) {
		TravelScheduleVo vo = null;
		
		try {
			vo = sqlSession.selectOne(NAMESPACE+"selectOne_D", ts_code);
		} catch(Exception e) {
			System.out.println("[error] : selectOne_D");
			e.printStackTrace();
		}
		
		return vo;
	}
	@Override
	public List<TravelScheduleVo> detailList_D(String ts_code) {
		List<TravelScheduleVo> list = new ArrayList<TravelScheduleVo>();
		try {
			list = sqlSession.selectList(NAMESPACE+"detailList_D", ts_code);
			
		} catch(Exception e) {
			System.out.println("[error] : detailList_D");
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<TravelScheduleVo> themeList(String ts_theme) {
		List<TravelScheduleVo> list = new ArrayList<TravelScheduleVo>();
		try {
			list = sqlSession.selectList(NAMESPACE+"themeList_D", ts_theme);
		} catch(Exception e) {
			System.out.println("[error] : themeList_D");
			e.printStackTrace();
		}
		
		return list;
	}







}
