package com.world.domain.minihome.impl;

import java.util.List;

import com.world.domain.minihome.vo.VideoVO;

public interface VideoService {
	List<VideoVO> firstVideoList();
	List<VideoVO> videoFolder();
	List<VideoVO> updateVideoList(VideoVO vo);
	List<VideoVO> updateVideo(VideoVO vo);
	List<VideoVO> videoList(VideoVO vo);
	List<VideoVO> deleteVideo(VideoVO vo);
}
