package com.fp.twt.dao;

import java.util.List;

import com.fp.twt.vo.ScheduleReviewVo;
import com.fp.twt.vo.TravelScheduleVo;

public interface CommunityDao {
	String NAMESPACE = "twt.";
	//용훈
	
	public int insertForm();
	public String selectSrCode();
	public int potoBookUpdate(ScheduleReviewVo vo);	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//도영
	
	List<TravelScheduleVo> TS_selectList();

	
	
	
	
	

}
