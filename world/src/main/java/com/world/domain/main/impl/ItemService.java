package com.world.domain.main.impl;

import java.util.List;

import com.world.domain.main.vo.ItemVO;

public interface ItemService {

	List<ItemVO> getItemList();

	void insertMyItem(ItemVO vo);

	void insertFriendItem(ItemVO vo);
}
