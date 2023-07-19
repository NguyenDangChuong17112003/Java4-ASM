package com.poly.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.poly.dao.AbstractDAO;
import com.poly.dao.StatsDao;
import com.poly.dto.VideoLikeInfo;
import com.poly.entity.User;

public class StatsDAOImpl extends AbstractDAO<Object[]> implements StatsDao{

	@Override
	public List<VideoLikeInfo> findByVideoLikeInfos() {
		// TODO Auto-generated method stub
		String sql = "select v.id,v.title , v.href , sum(cast(h.isLike as int)) as totalLike"
				+ " from Video v left join History h on v.id = h.videoID"
				+ " where v.isActive = 1"
				+ " group by v.id, v.title, v.href"
				+ " order by sum(cast(h.isLike as int)) desc";
		List<Object[]> objects = super.findManyByNativeQuery(sql);
		List<VideoLikeInfo> result = new ArrayList<>();
		objects.forEach(object -> {
			VideoLikeInfo likeInfo = setDataVideoLikeInfo(object);
			result.add(likeInfo);
		});
		return result;

	}
	
	private VideoLikeInfo setDataVideoLikeInfo(Object[] object) {
		VideoLikeInfo likeInfo = new VideoLikeInfo();
		likeInfo.setVideoID((Integer)object[0]);
		likeInfo.setTitle((String)object[1]);
		likeInfo.setHref((String)object[2]);
		likeInfo.setTotalLike(object[3] == null ? 0 : (Integer) object[3]);
		return likeInfo;
	}

}
