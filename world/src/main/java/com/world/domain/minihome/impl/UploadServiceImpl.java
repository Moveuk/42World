package com.world.domain.minihome.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.minihome.dao.UploadDAO;
import com.world.domain.minihome.vo.PhotoVO;

@Service
public class UploadServiceImpl implements UploadService {

	@Autowired
	private UploadDAO uploadDAO;
	@Override
	public void insertPhoto(PhotoVO vo) {
		uploadDAO.insertPhoto(vo);

	}

}
