package com.world.domain.minihome.impl;

import java.util.List;

import com.world.domain.minihome.vo.ReplyVO;

public interface ReplyService {

	List<ReplyVO> getReplyList();
	
	 /* ReplyVO getReply();
	 */
	
	void insertReply(ReplyVO vo);
	
	void deleteReply(ReplyVO vo);

	void updateReply(ReplyVO vo);
	
}
