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
	
	public List<ReplyVO> getReplyList(){
		System.out.println("run ReplyDAO getReplyList()");
		return sqlSession.selectList("ReplyDAO.getReplyList");
	}
}
