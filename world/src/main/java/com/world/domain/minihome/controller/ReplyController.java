package com.world.domain.minihome.controller;


import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.world.domain.minihome.impl.ReplyService;
import com.world.domain.minihome.vo.ReplyVO;

@Controller
public class ReplyController {

	@Autowired
	ReplyService replyService;

	@Inject
	SqlSession sqlSession;

	@RequestMapping(value = "/replyList")
	@ResponseBody
	public List<ReplyVO> replyList(ReplyVO vo, Model model,int photoNo) throws Exception {
		System.out.println(photoNo);
		System.out.println("run ReplyController replyList()");
		
		  List<ReplyVO> replyVO = replyService.replyList(vo);

		  
		  System.out.println("!!!!!!!!!!!!plz!!!"+replyVO.size());
		  
		  if(replyVO.size()==0) {
			  
		  }
		  
		  List<ReplyVO> list=new ArrayList<ReplyVO>();
		  for(int i=0;i<replyVO.size();i++) {
			  list.add(replyVO.get(i));
		  }
		  System.out.println("댓글개수:"+list.size());
		  model.addAttribute("replyList",replyVO);
		return replyVO;
	}
}
