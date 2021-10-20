package com.world.domain.minihome.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.minihome.vo.PhotoVO;

@Repository
public class PhotoDAO {
	@Inject
	SqlSession sqlSession;
	
	public void insertPhoto(PhotoVO vo) {
		System.out.println("run PhotoDAO insertPhoto()");
		sqlSession.update("PhotoDAO.insertPhoto",vo);
		sqlSession.commit();
	}
	public List<PhotoVO> getPhotoList(){
		System.out.println("run PhotoDAO getPhotoList()");
		return sqlSession.selectList("PhotoDAO.getPhotoList");
	}
}
