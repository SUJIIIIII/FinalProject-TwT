package com.fp.twt.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.twt.vo.AirSearchVo;
import com.fp.twt.vo.HotelVo;

@Repository
public class HotelAirDaoImpl implements HotelAirDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//찬우
	
	public String dateChange(String day) {
		
		 // 특정 문자가 반복될 경우 : '-' 가 반복된다.
        String change = day;
        
        // split()을 이용해 '-'를 기준으로 문자열을 자른다.
        // split()은 지정한 문자를 기준으로 문자열을 잘라 배열로 반환한다.
        String date[] = change.split("/");
        
        System.out.println(date[0]);
        System.out.println(date[1]);
        System.out.println(date[2]);
        
        change = date[2]+"-"+date[0]+"-"+date[1];

		
		return change;
	}
	
	
	@Override
	public String airSearch(AirSearchVo vo) {
		
		String departure_day = vo.getDeparture_day();
		String coming_day = vo.getComing_day();
		
		
		String url = "";
		
		if(vo.getAirtype().equals("v2&tripType=2")) {
			System.out.println("왕복접근");
			
			vo.setDeparture_day(dateChange(departure_day)); //출발일 변환
			vo.setComing_day(dateChange(coming_day));	//도착일 변환
			
			url= "https://www.whypaymore.co.kr/d/flt/intl/"
					+ "sched-deals?appId=v2&tripType=2"
					+ "&searchSource=P&depLocCodes=SEL&depLocNames=서울%28모든공항%29"
					+ "&arrLocCodes=BKK&arrLocNames=방콕%28모든공항%29"
					+ "&dates="+vo.getDeparture_day()+"&dates="+vo.getComing_day()
					+ "&cabinCls=Y&adtCnt="+vo.getPersonnel()+"&chdCnt=0&infCnt=0\r\n";
			
			//왕복일때
		}else if (vo.getAirtype().equals("v2&tripType=1")) {
			System.out.println("편도접근");
			
			vo.setDeparture_day(dateChange(departure_day)); //출발일 변환
			
			url= "https://www.whypaymore.co.kr/d/flt/intl/"
					+ "sched-deals?appId=v2&tripType=1"
					+ "&searchSource=P&depLocCodes=SEL&depLocNames=서울%28모든공항%29"
					+ "&arrLocCodes=BKK&arrLocNames=방콕%28모든공항%29"
					+ "&dates="+vo.getDeparture_day()+"&cabinCls=Y&adtCnt="+vo.getPersonnel()+"&chdCnt=0&infCnt=0";
			//편도일때
		}
		
		System.out.println(url);
		return url;
	}
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//범식
	
	
	
	
	//호텔 리스트
	@Override
	public List<HotelVo> HselectList(HotelVo hotelVo) {
		List<HotelVo> hotellist = new ArrayList<HotelVo>();
		
		
		System.out.println(hotelVo.getStartIndex() +":::"+ hotelVo.getEndIndex());
		
		
		try {
			hotellist = sqlSession.selectList(NAMESPACE+"HselectList", hotelVo);
			System.out.println("dao 의 hotellist : "+hotellist);
		}catch(Exception e) {
			System.out.println("[error] : HselectList");
			e.printStackTrace();
		}
		
		return hotellist;
	}
	
	//호텔 리스트 목록 개수
	@Override
	public int HselectListCnt() {
		int HselectListCnt = 0;
		
		try {
			HselectListCnt = sqlSession.selectOne(NAMESPACE+"HselectListCnt");
			System.out.println("dao 의 HselectListCnt : "+HselectListCnt);
		}catch(Exception e) {
			System.out.println("[error] : HselectList");
			e.printStackTrace();
		}
		
		return HselectListCnt;
	}
	
	//호텔 디테일

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
	
	// 객실  
	
	@Override
	public List<HotelVo> detailList_B(String h_code) {
		List<HotelVo> list = new ArrayList<HotelVo>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"detailList_B", h_code);
			System.out.println("list 확인용 : " + list);
		} catch(Exception e) {
			System.out.println("[error] : detailList_B");
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
	

}
