package com.world.domain.minihome.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.minihome.vo.ReplyVO;

@Repository
public class ReplyDAO {

	@Inject
	SqlSession sqlSession;

	public List<ReplyVO> getReplyList() {
		System.out.println("=== ReplyDAO  getReplyList()  ");
		List<ReplyVO> replyList = sqlSession.selectList("ReplyDAO.getReplyList");
		return replyList;
	}

	/*
	 * public ReplyVO getReply() {
	 * System.out.println("=== ReplyDAO  getReply()  "); return
	 * sqlSession.selectOne("ReplyDAO.getReplyList"); }
	 */

	public void insertReply(ReplyVO vo) {
		System.out.println("===ReplyDAO  insertReply()  ");
		sqlSession.update("ReplyDAO.insertReply", vo);
	}

	public void updateReply(ReplyVO vo) {
		System.out.println("===ReplyDAO  updateReply()  ");
		sqlSession.update("ReplyDAO.updateReply", vo);
	}

	public void deleteReply(ReplyVO vo) {
		System.out.println("===ReplyDAO  deleteReply()  ");
		sqlSession.update("ReplyDAO.deleteReply", vo);
	}

}
