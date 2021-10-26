package com.world.domain.main.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.main.dao.ItemDAO;
import com.world.domain.main.vo.ItemVO;

@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemDAO itemDAO;

	@Override
	public List<ItemVO> getItemList() {
		System.out.println("2번 ItemServiceImpl getItemlist() :" + "Item");
		return itemDAO.getItemList();
	}

}
