package com.fp.twt.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.twt.vo.ScheduleReviewVo;
import com.fp.twt.vo.TravelScheduleVo;

@Repository
public class CommunityDaoImpl implements CommunityDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//용훈
	
	@Override
	public int insertForm() {
		int res = 0;
		try {
			res = sqlSession.insert(NAMESPACE+"insertForm_Y");
		} catch(Exception e) {
			System.out.println("[error] : insertForm_Y");
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public String selectSrCode() {
		String srCode = null;
		try {
			srCode = sqlSession.selectOne(NAMESPACE+"selectSrCode_Y");
		} catch(Exception e) {
			System.out.println("[error] : selectSr_Code_Y");
			e.printStackTrace();
		}
		
		return srCode;
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
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//도영
	
	@Override
	public List<TravelScheduleVo> TS_selectList() {
		List<TravelScheduleVo> list = new ArrayList<TravelScheduleVo>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"selectList_D");
			
		} catch(Exception e) {
			System.out.println("[error] : selectList_D");
			e.printStackTrace();
		}
		return list;
	}


	
	
	
	
	
	

}
