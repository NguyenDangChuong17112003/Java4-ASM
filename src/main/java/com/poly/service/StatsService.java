package com.poly.service;

import java.util.List;

import com.poly.dto.VideoLikeInfo;

public interface StatsService {

	List<VideoLikeInfo> findByVideoLikeInfos();
}
