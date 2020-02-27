package com.fp.twt.biz;

import java.util.List;

import com.fp.twt.vo.AirSearchVo;
import com.fp.twt.vo.HotelVo;

public interface HotelAirBiz {
	//찬우
	
	public String airSearch(AirSearchVo vo);
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//범식
	
	
	public List<HotelVo> HselectList(HotelVo hotelVo);
	public int HselectListCnt();
	public HotelVo selectOne_B(String h_code);
	public List<HotelVo> detailList_B(String h_code);
	

}
