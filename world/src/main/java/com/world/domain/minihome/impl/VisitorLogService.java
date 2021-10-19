package com.world.domain.minihome.impl;

import java.util.List;

import com.world.domain.minihome.vo.VisitorLogVO;

public interface VisitorLogService {

	List<VisitorLogVO> getVisitorLogList();
	
	void insertVisitorLog(VisitorLogVO vo);
	
	void deleteVisitorLog(VisitorLogVO vo);

	void updateVisitorLog(VisitorLogVO vo);
	
}
