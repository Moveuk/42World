package com.world.domain.minihome.impl;

import java.util.List;

import com.world.domain.minihome.vo.PhotoVO;

public interface PhotoService {
	void insertPhoto(PhotoVO vo);
	List<PhotoVO> photoList(PhotoVO vo);
	List<PhotoVO> photo();
	List<PhotoVO> firstPhotoList();
}
