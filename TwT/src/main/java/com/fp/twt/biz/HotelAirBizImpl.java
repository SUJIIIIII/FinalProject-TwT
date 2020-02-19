package com.fp.twt.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.twt.dao.HotelAirDao;
import com.fp.twt.vo.AirSearchVo;
import com.fp.twt.vo.HotelVo;
import com.fp.twt.vo.HotelroomVo;

@Service
public class HotelAirBizImpl implements HotelAirBiz{
	
	@Autowired
	private HotelAirDao dao;
	
	
	//찬우
	
	
	@Override
	//항공 메인검색 
	public String airSearch(AirSearchVo vo) {
		
		return dao.airSearch(vo);
	}
	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//범식
	
	
	
	//호텔리스트
	public List<HotelVo> HselectList(){
		return dao.HselectList();
	}
	public List<HotelroomVo> selectall_B(){
		return dao.selectall_B();
	}
	
	
	
	
	
	

}
