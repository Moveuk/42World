package com.world.domain.minihome.dao;

import java.io.File;
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
	public List<PhotoVO> photo(){
		System.out.println("run PhotoDAO photo()");
		return sqlSession.selectList("PhotoDAO.photo");
	}

	
	  public List<PhotoVO> photoList(PhotoVO vo){
		  System.out.println("run PhotoDAO photoList()");
		  
		  System.out.println(vo.toString());
		  
	  return sqlSession.selectList("PhotoDAO.photoList",vo); 
	  }
	 
		/*
		 * public List<PhotoVO> photoList2(int value){
		 * System.out.println("run PhotoDAO photoList()");
		 * 
		 * 
		 * return sqlSession.selectList("PhotoDAO.photoList",value); }
		 */
	public List<PhotoVO> firstPhotoList(){
		System.out.println("run PhotoDAO firstPhotoList()");
		return sqlSession.selectList("PhotoDAO.firstPhotoList");
	}
	
	public void makeFolder(PhotoVO vo) {
		String folderPath="E:\\lib\\42World\\42World\\world\\src\\main\\webapp\\WEB-INF\\views\\minihome\\tab";
		File Folder = new File(folderPath);
		
		if(!Folder.exists()) {
			try {
				Folder.mkdir();
				System.out.println("폴더생성");
				sqlSession.update("PhotoDAO.insertFolder",vo);
				sqlSession.commit();
			}catch(Exception e) {
				e.getStackTrace();
			}
		}else {
			System.out.println("이미 폴더 생성");
		}
	}

}
