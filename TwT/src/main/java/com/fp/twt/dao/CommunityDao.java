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

	public List<TravelScheduleVo> selectList_D();
	public List<TravelScheduleVo> PselectList_D();
	public TravelScheduleVo selectOne_D(String ts_code);
	public List<TravelScheduleVo> relList_D();

	
	
	
	

}
