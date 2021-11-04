package com.world.domain.main.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.main.vo.GuestVO;

@Repository
public class GuestDAO {

	@Inject
	SqlSession sqlSession;

	public List<GuestVO> getguestList() {
		System.out.println("=== 3번 GuestDAO  getguestList()  ");
		return sqlSession.selectList("GuestDAO.getguestList");// mapper:id~
	}

	public GuestVO getguest(String marketID) {
		System.out.println("===GuestDAO  getguest()  ");
		return sqlSession.selectOne("GuestDAO.getguest");
	}

	public void insertguest(GuestVO vo) {
		System.out.println("===GuestDAO  insertguest()  ");
		sqlSession.update("GuestDAO.insertGuest", vo);
	}

	public List<GuestVO> getGuestList(GuestVO vo) {

		return sqlSession.selectList("GuestDAO.getGuestList", vo);// mapper:id~
	}

}
