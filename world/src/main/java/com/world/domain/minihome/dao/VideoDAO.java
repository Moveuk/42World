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
	
	public List<VideoVO> videoList(VideoVO vo){
		System.out.println("run VideoDAO videoList()");
		  System.out.println(vo.toString());
		return sqlSession.selectList("VideoDAO.videoList",vo);
	}
	public void videoDelete(int videoNo) {
		System.out.print("run videoDAO videoDelete()");
		sqlSession.delete("VideoDAO.videoDelete",videoNo);
	}
}
