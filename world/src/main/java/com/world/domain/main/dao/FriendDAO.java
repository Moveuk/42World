package com.world.domain.main.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.main.vo.FriendVO;

@Repository
public class FriendDAO {

	@Inject
	SqlSession sqlSession;

	public List<FriendVO> getfriendList() {
		System.out.println("=== 3번 FriendDAO  getdotoryList()  ");
		return sqlSession.selectList("FriendDAO.getfriendList");// mapper:id~
	}

	public FriendVO getfriend(String memberNo) {
		System.out.println("===FriendDAO  getfriend()  ");
		return sqlSession.selectOne("FriendDAO.getfriend");
	}

	public void insertfriend(FriendVO vo) {
		System.out.println("===FriendDAO  insertfriend()  ");
		sqlSession.update("FriendDAO.insertfriend", vo);
	}

	public FriendVO getfriendCount(String memberNo) {
		System.out.println("===FriendDAO  getfriendCount()  ");
		return sqlSession.selectOne("FriendDAO.getfriendCount");
	}

	public void requestFriend(FriendVO vo) {
		sqlSession.update("FriendDAO.requestFriend", vo);
	}

	public List<FriendVO> getRequestFriendList(String friendTo) {
		return sqlSession.selectList("FriendDAO.getRequestList", friendTo);
	}

	public FriendVO getOneRequestFriend(FriendVO vo) {
		return sqlSession.selectOne("FriendDAO.getOneRequestFriend", vo);
	}

	public void acceptFriend(FriendVO vo) {
		sqlSession.selectList("FriendDAO.acceptFriend", vo);
	}

	public void insertFriend(FriendVO vo) {
		sqlSession.insert("FriendDAO.insertFriend", vo);
	}

	public void rejectFriend(FriendVO vo) {
		sqlSession.update("FriendDAO.rejectFriend", vo);
	}

	public List<FriendVO> myFriendList(String friendTo) {
		return sqlSession.selectList("FriendDAO.myFriendList", friendTo);
	}

	public void updateFriend(FriendVO vo) {
		sqlSession.update("FriendDAO.updateFriend", vo);
	}

	public void updateFriendDB(FriendVO vo) {
		sqlSession.update("FriendDAO.updateFriendDB", vo);
	}

	public void updateFriendDB2(FriendVO vo) {
		sqlSession.update("FriendDAO.updateFriendDB2", vo);
	}

	public void deleteFriend(FriendVO vo) {
		sqlSession.delete("FriendDAO.deleteFriend", vo);
	}

}
