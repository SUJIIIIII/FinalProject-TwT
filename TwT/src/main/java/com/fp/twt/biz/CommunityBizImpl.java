package com.fp.twt.biz;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fp.twt.dao.CommunityDao;
import com.fp.twt.vo.TravelScheduleVo;

@Service
public class CommunityBizImpl implements CommunityBiz{
	private CommunityDao dao;
	
	//용훈
	
	
	
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//도영

	@Override
	public List<TravelScheduleVo> TS_selectList() {
		
		
		return dao.TS_selectList();
	}
	
	
	
	

}
