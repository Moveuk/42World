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
	public List<PhotoVO> getPhotoList() {
		return photoDAO.getPhotoList();
	}


	

}