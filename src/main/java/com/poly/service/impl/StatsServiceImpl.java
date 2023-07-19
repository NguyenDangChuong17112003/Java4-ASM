package com.poly.service.impl;

import java.util.List;

import com.poly.dao.StatsDao;
import com.poly.dao.impl.StatsDAOImpl;
import com.poly.dto.VideoLikeInfo;
import com.poly.service.StatsService;

public class StatsServiceImpl implements StatsService{

	private StatsDao statsDao;
	public StatsServiceImpl() {
		statsDao = new StatsDAOImpl();
	}
	
	@Override
	public List<VideoLikeInfo> findByVideoLikeInfos() {
		// TODO Auto-generated method stub
		return statsDao.findByVideoLikeInfos();
	}

}
