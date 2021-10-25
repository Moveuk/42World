package com.world.domain.minihome.impl;

import java.util.List;

import com.world.domain.minihome.vo.VideoVO;

public interface VideoService {

	List<VideoVO> getVideoListByFolder(VideoVO vo);
	
	 /* VisitorLogVO getVisitorLog();
	 */
	
	void insertVideo(VideoVO vo);
	
	void deleteVideo(VideoVO vo);

	void updateVideo(VideoVO vo);
	
}
