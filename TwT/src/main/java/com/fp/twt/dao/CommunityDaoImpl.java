package com.fp.twt.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.twt.vo.TravelScheduleVo;

@Repository
public class CommunityDaoImpl implements CommunityDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//용훈
	
	
	
	
	
	
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

}
