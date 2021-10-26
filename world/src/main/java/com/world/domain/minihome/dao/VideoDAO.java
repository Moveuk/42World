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

	public List<VideoVO> getVideoListByFolder(VideoVO vo) {
		System.out.println("=== VideoDAO  getVideoListByFolder  ");
		System.out.println("real sql : select * from video order by videoNo desc ");
		List<VideoVO> videoList = sqlSession.selectList("VideoDAO.getVideoListByFolder", vo);
//		videoList.get(0).toString();
		System.out.println(videoList.size());
		return videoList;
	}

	public void insertVideo(VideoVO vo) {
		System.out.println("===VideoDAO  insertVideo()  ");
		sqlSession.update("VideoDAO.insertVideo", vo);
	}

	public void updateVideo(VideoVO vo) {
		System.out.println("===VideoDAO  updateVideo()  ");
		sqlSession.update("VideoDAO.updateVideo", vo);
	}

	public void deleteVideo(VideoVO vo) {
		System.out.println("===VideoDAO  deleteVideo()  ");
		sqlSession.update("VideoDAO.deleteVideo", vo);
	}

}
