package com.world.domain.main.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.main.impl.ItemService;
import com.world.domain.main.vo.ItemVO;

@Controller
public class ItemController {

	@Autowired
	ItemService itemService;

	@RequestMapping("/item/getItemList")
	public String getMemberList(ItemVO vo, Model model) {
		System.out.println("1번 controller getItemList~");
		model.addAttribute("itemList", itemService.getItemList());

		Date dt = vo.getBuydate();
		int di = vo.getMemberNo();

		System.out.println("저장되어있는 db : " + dt + "/" + di);

		return "/main/myItem";
	}

}
