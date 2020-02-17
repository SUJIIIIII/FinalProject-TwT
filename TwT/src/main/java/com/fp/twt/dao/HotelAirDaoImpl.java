package com.fp.twt.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.twt.vo.HotelVo;

@Repository
public class HotelAirDaoImpl implements HotelAirDao{
	//찬우
	
	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//범식
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	//호텔 리스트
	@Override
	public List<HotelVo> HselectList() {
		List<HotelVo> hotellist = new ArrayList<HotelVo>();
		
		try {
		hotellist = sqlSession.selectList(NAMESPACE+"HselectList");
		}catch(Exception e) {
			System.out.println("[error] : HselectList");
			e.printStackTrace();
		}
		
		return hotellist;
	}
	
	
	

}
