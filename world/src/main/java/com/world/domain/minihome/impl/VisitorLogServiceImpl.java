package com.world.domain.minihome.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.minihome.dao.VisitorLogDAO;
import com.world.domain.minihome.vo.VisitorLogVO;

@Service
public class VisitorLogServiceImpl implements VisitorLogService {
	
	@Autowired
	private VisitorLogDAO visitorLogDAO;
	
	@Override
	public List<VisitorLogVO> getVisitorLogList() {
		return visitorLogDAO.getVisitorLogList();
	}

	@Override
	public void insertVisitorLog(VisitorLogVO vo) {
		visitorLogDAO.insertVisitorLog(vo);
	}

	@Override
	public void updateVisitorLog(VisitorLogVO vo) {
		visitorLogDAO.updateVisitorLog(vo);
	}

	@Override
	public void deleteVisitorLog(VisitorLogVO vo) {
		visitorLogDAO.deleteVisitorLog(vo);
	}

	
}
