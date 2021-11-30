package com.world.domain.minihome.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.minihome.dao.VideoDAO;
import com.world.domain.minihome.vo.PhotoVO;
import com.world.domain.minihome.vo.VideoVO;

@Service
public class VideoServiceImpl implements VideoService {
	@Autowired
	private VideoDAO videoDAO;

	@Override
	public List<VideoVO> firstVideoList() {
		System.out.println("run VideoServiceImpl firstVideoList()");
		return videoDAO.firstVideoList();
	}

	@Override
	public List<VideoVO> videoFolder() {
		System.out.println("run VideoServiceImpl videoFolder()");
		return videoDAO.videoFolder();
	}

	@Override
	public List<VideoVO> updateVideoList(VideoVO vo) {
		System.out.println("run VideoServiceImpl updateVideoList()");
		return videoDAO.updateVideoList(vo);
	}
	@Override
	public List<VideoVO> videoList(VideoVO vo) {
		System.out.println("run VideoServiceImpl videoList()");
		return videoDAO.videoList(vo);
	}

	@Override
	public List<VideoVO> deleteVideo(VideoVO vo) {
		System.out.println("run VideoServiceImpl deleteVideo()");
		System.out.println("VideoServiceImpl deleteVideo:"+vo);
		return videoDAO.deleteVideo(vo);
	}

	@Override
	public List<VideoVO> updateVideo(VideoVO vo) {
		System.out.println("run VideoServiceImpl updateVideo()");
		
		videoDAO.updateVideo(vo);
		return videoDAO.updateVideo(vo);
	}
}
