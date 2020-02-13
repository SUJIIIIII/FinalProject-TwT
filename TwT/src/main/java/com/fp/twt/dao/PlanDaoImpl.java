package com.fp.twt.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.twt.vo.CityVo;

@Repository
public class PlanDaoImpl implements PlanDao{
	@Autowired
	private SqlSessionTemplate sqlSession;

	//철환
	
	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//수지
	@Override
	public List<CityVo> selectCityAll() {
		List<CityVo> res = new ArrayList<CityVo>();
		
		try {
			res = sqlSession.selectList(NAMESPACE+"selectcityall");
			System.out.println("dao에서 res : "+res);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	
	
	
	

}
