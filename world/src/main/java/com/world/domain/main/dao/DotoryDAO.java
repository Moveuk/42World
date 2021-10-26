package com.world.domain.main.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.main.vo.DotoryVO;

@Repository
public class DotoryDAO {

	@Inject
	SqlSession sqlSession;

	public List<DotoryVO> getdotoryList() {
		System.out.println("=== 3번 DotoeyDAO  getdotoryList()  ");
		return sqlSession.selectList("DotoryDAO.getdotoryList");// mapper:id~
	}

	public DotoryVO getdotory(String marketID) {
		System.out.println("===DotoeyDAO  getdotory()  ");
		return sqlSession.selectOne("DotoryDAO.getdotory");
	}

	public void insertdotory(DotoryVO vo) {
		System.out.println("===DotoeyDAO  insertdotory()  ");
		sqlSession.update("DotoryDAO.insertdotory", vo);
	}
	
	public int getMyDotory(String userId) {
		return sqlSession.selectOne("DotoryDAO.getMyDotory", userId);
	}

}
