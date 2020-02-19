package com.fp.twt.dao;

import java.util.List;

import com.fp.twt.vo.AirSearchVo;
import com.fp.twt.vo.HotelVo;
import com.fp.twt.vo.HotelroomVo;

public interface HotelAirDao {
	String NAMESPACE = "twt.";
	//찬우
	
	public String dateChange(String day);
	public String airSearch(AirSearchVo vo);
	
	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
		
	//범식
		
	public List<HotelVo> HselectList();
	public List<HotelroomVo> selectall_B();
	public HotelVo selectOne_B(String h_code);	
		
		
		
		


}
