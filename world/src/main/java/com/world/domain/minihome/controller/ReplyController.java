package com.world.domain.minihome.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.world.domain.minihome.impl.ReplyService;
import com.world.domain.minihome.vo.ReplyVO;

@Controller
public class ReplyController {

	@Autowired
	ReplyService replyService;
	
	public String getReplyList(ReplyVO vo, Model model) {
		System.out.println("run ReplyController getReplyList()");
		model.addAttribute("replyList", replyService.getReplyList());
		return "/minihome/tab/photo";
	}
}
