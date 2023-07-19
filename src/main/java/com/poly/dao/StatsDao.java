package com.poly.dao;

import java.util.List;

import com.poly.dto.VideoLikeInfo;
import com.poly.entity.User;
import com.poly.entity.Video;

public interface StatsDao {

	List<VideoLikeInfo> findByVideoLikeInfos();

}
