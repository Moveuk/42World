package com.world.domain.main.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.main.dao.DotoryDAO;
import com.world.domain.main.vo.DotoryVO;

@Service
public class DotoryServiceImpl implements DotoryService {

	@Autowired
	private DotoryDAO dotoryDAO;

	@Override
	public void insertDotory(DotoryVO vo) {
		dotoryDAO.insertdotory(vo);
		
	}

}
