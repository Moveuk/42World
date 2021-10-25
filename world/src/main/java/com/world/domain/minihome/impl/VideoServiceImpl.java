package com.world.domain.minihome.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.minihome.dao.VideoDAO;
import com.world.domain.minihome.vo.VideoVO;

@Service
public class VideoServiceImpl implements VideoService {
	
	@Autowired
	private VideoDAO videoDAO;

	@Override
	public List<VideoVO> getVideoListByFolder(VideoVO vo) {
		List<VideoVO> videoList = videoDAO.getVideoListByFolder(vo);
		
		return videoList;
	}

	@Override
	public void insertVideo(VideoVO vo) {
		videoDAO.insertVideo(vo);
	}

	@Override
	public void deleteVideo(VideoVO vo) {
		videoDAO.deleteVideo(vo);
	}

	@Override
	public void updateVideo(VideoVO vo) {
		videoDAO.updateVideo(vo);
	}


}
