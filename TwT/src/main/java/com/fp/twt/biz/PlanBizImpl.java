package com.fp.twt.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.twt.dao.PlanDao;
import com.fp.twt.vo.CityVo;

@Service
public class PlanBizImpl implements PlanBiz{

	//철환
	
	
	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//수지
	@Autowired
	private PlanDao dao;
	@Override
	public List<CityVo> selectCityAll() {
		return dao.selectCityAll();
	}
	
	
	
	
	

}
