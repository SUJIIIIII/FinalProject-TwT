package com.fp.twt.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.fp.twt.vo.HotelVo;

public class HotelAirDaoImpl implements HotelAirDao{
	//찬우
	
	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//범식
	
	//호텔 리스트
	@Inject
	private SqlSession session;
	
	@Override
	public List<HotelVo> hotel_list(HotelVo hotelVo){
		return session.selectList("hotelList",hotelVo);
	}
	
	
	
	

}
