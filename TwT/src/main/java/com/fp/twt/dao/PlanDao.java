package com.fp.twt.dao;

import java.util.List;

import com.fp.twt.vo.CityVo;
import com.fp.twt.vo.TravelPointVo;

public interface PlanDao {
	String NAMESPACE = "twt.";
	//철환
	
	
	
	
	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//수지
	public List<CityVo> selectCityAll(); //plan_create 페이지에서 city정보 전부 불러오기
	public List<TravelPointVo> selectAllSpot(); //spot 정보 전부 불러오기
	public CityVo selectCityOne(String citycode); // 선택된 city 정보 불러오기
	
	
	
	
	

}
