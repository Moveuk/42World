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

	/*
	 * @Override public ReplyVO getReply() { return ReplyDAO.getReply(); }
	 */

	@Override
	public void insertReply(ReplyVO vo) {
		replyDAO.insertReply(vo);
	}

	@Override
	public void updateReply(ReplyVO vo) {
		replyDAO.updateReply(vo);
	}

	@Override
	public void deleteReply(ReplyVO vo) {
		replyDAO.deleteReply(vo);
	}

}
