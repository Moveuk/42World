package com.world.domain.minihome.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.minihome.dao.PhotoDAO;
import com.world.domain.minihome.vo.PhotoVO;

@Service
public class PhotoServiceImpl implements PhotoService {

	@Autowired
	private PhotoDAO photoDAO;
	
	@Override
	public void insertPhoto(PhotoVO vo) {
		photoDAO.insertPhoto(vo);		
	}

	@Override
	public List<PhotoVO> photo() {
		System.out.println("run PhotoServiceImpl photo()");
		return photoDAO.photo();
	}

	
	  @Override public List<PhotoVO> photoList(PhotoVO vo) {
		  System.out.println("service call");
		  System.out.println("PhotoService photoList() : "+vo.getValue());
		  System.out.println("run PhotoServiceImpl photoList()"); 
		  return photoDAO.photoList(vo);
	  
	  }
	 
	@Override
	public List<PhotoVO> firstPhotoList() {
		System.out.println("run PhotoServiceImpl firstPhotoList()");
		return photoDAO.firstPhotoList();
	}

	@Override
	public List<PhotoVO> photoList2() {
		System.out.println("run PhotoServiceImpl photoList2()");
		return photoDAO.photoList2();
	}




	

}
