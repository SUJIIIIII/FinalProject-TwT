package com.fp.twt.biz;

import java.util.List;

import com.fp.twt.vo.HotelVo;
import com.fp.twt.vo.HotelroomVo;

public interface HotelAirBiz {
	//찬우
	
	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//범식
	
	
	public List<HotelVo> HselectList();
	public List<HotelroomVo> selectall_B();
	public HotelVo selectOne_B(String h_code);
	
	
	
	

}
