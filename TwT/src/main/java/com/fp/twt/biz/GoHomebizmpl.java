package com.fp.twt.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.twt.dao.GoHomeDao;
import com.fp.twt.vo.HotelVo;
import com.fp.twt.vo.TravelPointVo;
import com.fp.twt.vo.TravelScheduleVo;

@Service
public class GoHomebizmpl implements GoHomebiz {

	@Autowired
	private GoHomeDao dao;
	
	@Override
	public List<HotelVo> hotelRanking() {
		System.out.println("hotelRanking 비즈 진입");
		return dao.hotelRanking();
	}

	@Override
	public List<TravelScheduleVo> PlanRanking() {
		System.out.println("PlanRanking 비즈 진입");
		return dao.PlanRanking();
	}

	@Override
	public List<TravelPointVo> DestinationRanking() {
		System.out.println("DestinationRanking 비즈 진입");
		return dao.DestinationRanking();
	}

}
