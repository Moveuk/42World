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

	@Override
	public int getMyDotory(int memberNo) {
		return dotoryDAO.getMyDotory(memberNo);
	}

	// 도토리로 내 아이템 구매시
	@Override
	public void useForMe(DotoryVO vo) {
		dotoryDAO.useForMe(vo);

	}

	// 도토리로 친구에게 아이템 선물시
	@Override
	public void useForFriend(DotoryVO vo) {
		dotoryDAO.useForFriend(vo);

	}

}
