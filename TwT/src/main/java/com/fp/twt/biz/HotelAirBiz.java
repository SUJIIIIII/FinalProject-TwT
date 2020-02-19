package com.fp.twt.biz;

import java.util.List;

import com.fp.twt.vo.AirSearchVo;
import com.fp.twt.vo.HotelVo;
import com.fp.twt.vo.HotelroomVo;

public interface HotelAirBiz {
	//찬우
	
	public String airSearch(AirSearchVo vo);
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//범식
	
	
	public List<HotelVo> HselectList();
	public List<HotelroomVo> selectall_B();
	
	
	
	
	

}
