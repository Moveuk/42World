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
	public List<VideoVO> videoList(VideoVO vo) {
		System.out.println("VideoServiceImpl videoList() : " + vo.getFolder());
		System.out.println("run VideoServiceImpl videoList()");
		return videoDAO.videoList(vo);
	}

	@Override
	public void videoDelete(int videoNo) {
		System.out.println("run PhotoServiceImpl videoDelete()");
		System.out.println(videoNo);
		videoDAO.videoDelete(videoNo);
	}
}
