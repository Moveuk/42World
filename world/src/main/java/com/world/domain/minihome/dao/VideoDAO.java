package com.world.domain.minihome.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.minihome.vo.VideoVO;

@Repository
public class VideoDAO {

	@Inject
	SqlSession sqlSession;
	
	public List<VideoVO> firstVideoList(){
		System.out.println("run VideoDAO firstVideoList()");
		return sqlSession.selectList("VideoDAO.firstVideoList");
	}
	
	public List<VideoVO> videoFolder(){
		System.out.println("run VideoDAO videoFolder()");
		return sqlSession.selectList("VideoDAO.videoFolder");
	}
	
	public List<VideoVO> updateVideoList(VideoVO vo){
		System.out.println("run VideoDAO updateVideoList()");
		return sqlSession.selectList("VideoDAO.updateVideoList",vo);
	}
	public List<VideoVO> videoList(VideoVO vo){
		System.out.println("run VideoDAO videoList()");
		return sqlSession.selectList("VideoDAO.videoList",vo);
	}
	public List<VideoVO> deleteVideo(VideoVO vo) {
		System.out.print("run videoDAO deleteVideo()");
		return sqlSession.selectList("VideoDAO.deleteVideo",vo);
		
	}

	public List<VideoVO> updateVideo(VideoVO vo) {
		System.out.print("run VideoDAO updateVideo()");
		sqlSession.delete("VideoDAO.updateVideo",vo);
		return sqlSession.selectList("VideoDAO.updateVideo",vo);
		
	}
}
