package com.fp.twt.biz;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fp.twt.dao.HotelAirDao;
import com.fp.twt.vo.HotelVo;

@Service
public class HotelAirBizImpl implements HotelAirBiz{
	//찬우
	
	
	
	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//범식
	
	//호텔 리스트
	@Inject
	private HotelAirDao dao;
	
	@Override
	public List<HotelVo> hotel_list(HotelVo hotelvo){
		
		return dao.hotel_list(hotelvo);
	}
	
	
	
	
	
	
	

}
