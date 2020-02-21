package com.fp.twt.biz;

import java.util.List;

import com.fp.twt.vo.ScheduleReviewVo;
import com.fp.twt.vo.TravelScheduleVo;

public interface CommunityBiz {

	//용훈
	
	public int insertForm();
	public String selectSrCode();
	public int potoBookUpdate(ScheduleReviewVo vo);	
	public List<ScheduleReviewVo> potoBookList();	
	
	//--------------------------------------------------------------------------------------------------//
	
	//도영
	
	//리스트
	public List<TravelScheduleVo> selectList_D();
	public List<TravelScheduleVo> PselectList_D();
	
	//디테일
	public TravelScheduleVo selectOne_D(String ts_code);
	public List<TravelScheduleVo> detailList_D(String ts_code);
	public List<TravelScheduleVo> themeList(String ts_theme);

}
