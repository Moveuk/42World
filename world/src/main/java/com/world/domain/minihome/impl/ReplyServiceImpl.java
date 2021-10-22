package com.world.domain.minihome.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.minihome.dao.ReplyDAO;
import com.world.domain.minihome.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private ReplyDAO replyDAO;
	



	@Override
	public List<ReplyVO> getReplyList() {
		return replyDAO.getReplyList();
	}

}
