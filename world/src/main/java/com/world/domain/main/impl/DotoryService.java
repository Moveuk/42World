package com.world.domain.main.impl;

import com.world.domain.main.vo.DotoryVO;

public interface DotoryService {

	void insertDotory(DotoryVO vo);

	int getMyDotory(int memberNo);

	//장바구니에서 도토리로 내 아이템 구매시
	void useForMe(DotoryVO vo);
	
	//장바구니에서 도토리로 친구에게 선물시
	void useForFriend(DotoryVO vo);
}
