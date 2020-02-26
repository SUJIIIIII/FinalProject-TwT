package com.fp.twt.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.twt.vo.CityVo;
import com.fp.twt.vo.TravelPointVo;

@Repository
public class PlanDaoImpl implements PlanDao{
	@Autowired
	private SqlSessionTemplate sqlSession;
	//철환
	
	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//수지
	@Override
	public List<CityVo> selectCityAll() { // city 정보 전부 불러오기
		List<CityVo> res = new ArrayList<CityVo>();
		
		try {
			res = sqlSession.selectList(NAMESPACE+"selectcityall_S");
			System.out.println("dao에서 res : "+res);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	
	@Override
	public List<TravelPointVo> selectAllSpot() { // spot 정보 전부 불러오기
		List<TravelPointVo> res = new ArrayList<TravelPointVo>();
		try {
			res = sqlSession.selectList(NAMESPACE+"selectallspot_S");
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("dao에서 데이터 불러오기 오류");
		}
		
		return res;
	}


	@Override
	public CityVo selectCityOne(String citycode) {
		CityVo res = null;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"selectcityone_S",citycode);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}





	
	
	
	

}
