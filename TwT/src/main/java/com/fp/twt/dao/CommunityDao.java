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
	public List<ScheduleReviewVo> potoBookList();
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//도영

	public List<TravelScheduleVo> selectList_D();
	public List<TravelScheduleVo> PselectList_D();
	public TravelScheduleVo selectOne_D(String ts_code);
	public List<TravelScheduleVo> detailList_D(String ts_code);
	public List<TravelScheduleVo> themeList(String ts_theme);

	
	
	
	

}
