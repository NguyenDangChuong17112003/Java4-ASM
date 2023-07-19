package com.poly.service.impl;

import java.sql.Timestamp;
import java.util.List;

import com.poly.dao.HistoryDAO;
import com.poly.dao.impl.HistoryDAOImpl;
import com.poly.entity.History;
import com.poly.entity.User;
import com.poly.entity.Video;
import com.poly.service.HistoryService;
import com.poly.service.VideoService;

public class HistoryServiceImpl implements HistoryService{

	private HistoryDAO dao;
	private VideoService videoService = new VideoServiceImpl();
	
	public HistoryServiceImpl() {
		dao = new HistoryDAOImpl();
	}
	
	@Override
	public List<History> findByUser(String username) {
		// TODO Auto-generated method stub
		return dao.findByUser(username);
	}

	@Override
	public List<History> findByUserAndIsLike(String username) {
		// TODO Auto-generated method stub
		return dao.findByUserAndIsLike(username);
	}

	@Override
	public History findByUserIdAndVideoId(Integer userId, Integer videoId) {
		// TODO Auto-generated method stub
		return dao.findByUserIdAndVideoId(userId, videoId);
	}

	@Override
	public History create(User user, Video video) {
		// TODO Auto-generated method stub
		History existHistory = findByUserIdAndVideoId(user.getId(),  video.getId());
		if(existHistory == null) {
			existHistory  = new History();
			existHistory.setUser(user);
			existHistory.setVideo(video);
			existHistory.setViewDate(new Timestamp(System.currentTimeMillis()));
			existHistory.setIsLike(Boolean.FALSE);
			return dao.create(existHistory);
		}
		return existHistory;
	}

	@Override
	public boolean updateLikeOrUnlike(User user, String videoHref) {
		// TODO Auto-generated method stub
		Video video = videoService.findByHref(videoHref);
		History existHistory = findByUserIdAndVideoId(user.getId(), video.getId());
		
		if(existHistory.getIsLike() == Boolean.FALSE) {
			existHistory.setIsLike(Boolean.TRUE);
			existHistory.setLikeDate(new Timestamp(System.currentTimeMillis()));
		}else {
			existHistory.setIsLike(Boolean.FALSE);
			existHistory.setLikeDate(null);
		}
		
		History updateHistory = dao.update(existHistory);
		return updateHistory != null ? true : false;
		
	}
}
