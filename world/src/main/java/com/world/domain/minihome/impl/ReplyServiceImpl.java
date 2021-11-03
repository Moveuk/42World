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
	public List<ReplyVO> replyList(ReplyVO vo) {
		System.out.println("run ReplyServiceImpl replyList()");
		return replyDAO.replyList(vo);
	}
}
