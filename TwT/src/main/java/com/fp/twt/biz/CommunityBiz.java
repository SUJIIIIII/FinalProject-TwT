package com.fp.twt.biz;

import java.util.List;

import com.fp.twt.vo.ScheduleReviewVo;
import com.fp.twt.vo.TravelScheduleVo;

public interface CommunityBiz {

	//용훈
	
	public int insertForm();
	public String selectSrCode();
	public int potoBookUpdate(ScheduleReviewVo vo);	
	
	//--------------------------------------------------------------------------------------------------//
	
	//도영
	
	public List<TravelScheduleVo> TS_selectList();

	
	
	
	
	
	

}
