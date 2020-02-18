package com.fp.twt.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.twt.dao.CommunityDao;
import com.fp.twt.vo.ScheduleReviewVo;
import com.fp.twt.vo.TravelScheduleVo;

@Service
public class CommunityBizImpl implements CommunityBiz{
	
	@Autowired
	private CommunityDao dao;
	
	//용훈
	
	@Override
	public int insertForm() {
		return dao.insertForm();
	}
	
	@Override
	public String selectSrCode() {
		return dao.selectSrCode();
	}
	
	@Override
	public int potoBookUpdate(ScheduleReviewVo vo) {
		return dao.potoBookUpdate(vo);
	}
	
	//--------------------------------------------------------------------------------------------------//
	
	//도영

	@Override
	public List<TravelScheduleVo> TS_selectList() {
		
		
		return dao.TS_selectList();
	}



	
	
	
	

}
