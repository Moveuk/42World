package com.world.domain.minihome.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.minihome.vo.PhotoVO;

@Repository
public class UploadDAO {
	@Inject
	SqlSession sqlSession;
	
	public void insertPhoto(PhotoVO vo) {
		System.out.println("run UploadDAO insertPhoto()");
		sqlSession.update("UploadDAO.insertPhoto",vo);
		sqlSession.commit();
	}
}
