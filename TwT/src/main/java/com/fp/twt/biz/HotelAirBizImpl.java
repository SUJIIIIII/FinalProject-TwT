package com.fp.twt.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.twt.dao.HotelAirDao;
import com.fp.twt.vo.HotelVo;

@Service
public class HotelAirBizImpl implements HotelAirBiz{
	//찬우
	
	
	
	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//범식
	
	@Autowired
	private HotelAirDao dao;
	
	//호텔리스트
	public List<HotelVo> HselectList(){
		return dao.HselectList();
	}
	
	
	
	
	

}
