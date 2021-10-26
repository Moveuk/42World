package com.world.domain.minihome.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.minihome.vo.VisitorLogVO;

@Repository
public class VisitorLogDAO {

	@Inject
	SqlSession sqlSession;

	public List<VisitorLogVO> getVisitorLogList() {
		System.out.println("=== VisitorLogDAO  getVisitorLogList()  ");
		List<VisitorLogVO> visitorLog = sqlSession.selectList("VisitorLogDAO.getVisitorLogList");
		System.out.println(visitorLog.size());
		return visitorLog;
	}

	/*
	 * public VisitorLogVO getVisitorLog() {
	 * System.out.println("=== VisitorLogDAO  getVisitorLog()  "); return
	 * sqlSession.selectOne("VisitorLogDAO.getVisitorLogList"); }
	 */

	public void insertVisitorLog(VisitorLogVO vo) {
		System.out.println("===VisitorLogDAO  insertVisitorLog()  ");
		sqlSession.update("VisitorLogDAO.insertVisitorLog", vo);
	}

	public void updateVisitorLog(VisitorLogVO vo) {
		System.out.println("===VisitorLogDAO  updateVisitorLog()  ");
		sqlSession.update("VisitorLogDAO.updateVisitorLog", vo);
	}

	public void deleteVisitorLog(VisitorLogVO vo) {
		System.out.println("===VisitorLogDAO  deleteVisitorLog()  ");
		sqlSession.update("VisitorLogDAO.deleteVisitorLog", vo);
	}

}
