package com.world.domain.minihome.impl;

import java.util.List;

import com.world.domain.minihome.vo.ReplyVO;

public interface ReplyService {
	List<ReplyVO> replyList(ReplyVO vo);
	List<ReplyVO> videoReplyList(ReplyVO vo);
}
