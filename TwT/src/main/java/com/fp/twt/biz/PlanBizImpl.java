package com.fp.twt.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.twt.dao.PlanDao;
import com.fp.twt.vo.CityVo;
import com.fp.twt.vo.TravelPointVo;

@Service
public class PlanBizImpl implements PlanBiz{
	@Autowired
	private PlanDao dao;
	//철환
	
	
	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	//수지
	@Override
	public List<CityVo> selectCityAll() {
		return dao.selectCityAll();
	}

	@Override
	public List<TravelPointVo> selectAllSpot() {
		return dao.selectAllSpot();
	}

	@Override
	public CityVo selectCityOne(String citycode) {
		return dao.selectCityOne(citycode);
	}
	
	
	
	
	

}
