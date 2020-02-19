package com.fp.twt.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.twt.vo.HotelVo;
import com.fp.twt.vo.HotelroomVo;

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
		System.out.println("dao 의 hotellist : "+hotellist);
		}catch(Exception e) {
			System.out.println("[error] : HselectList");
			e.printStackTrace();
		}
		
		return hotellist;
	}
	
	//호텔 방 
	public List<HotelroomVo> selectall_B(){
		List<HotelroomVo> hotelroomlist = new ArrayList<HotelroomVo>();
		
		try {
		hotelroomlist = sqlSession.selectList(NAMESPACE+"selectall_B");
		System.out.println("dao 의  hotelroomlist : "+hotelroomlist);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return hotelroomlist;
	}

	@Override
	public HotelVo selectOne_B(String h_code) {
		HotelVo vo = null;
		
		try {
			vo = sqlSession.selectOne(NAMESPACE+"selectOne_B", h_code);
			System.out.println("vo 확인용 : " + vo);
		} catch(Exception e) {
			System.out.println("[error] : selectOne_B");
			e.printStackTrace();
		}
		
		return vo;
	}
	
	
	
	
	
	

}
