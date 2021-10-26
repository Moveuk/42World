package com.world.domain.main.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.main.vo.FriendVO;
import com.world.domain.main.vo.MemberVO;



	@Repository
	public class FriendDAO {
	
		
		@Inject
		SqlSession sqlSession;
		
		public void requestFriend(FriendVO vo) {
			sqlSession.update("FriendDAO.requestFriend", vo);
		}
		
		public List<FriendVO> getRequestFriendList(String friendTo){
			return sqlSession.selectList("FriendDAO.getRequestList", friendTo);
		}

		
		public FriendVO getOneRequestFriend(FriendVO vo) {
			return sqlSession.selectOne("FriendDAO.getOneRequestFriend", vo);
		}
		
		public void acceptFriend(FriendVO vo){
			sqlSession.selectList("FriendDAO.acceptFriend", vo);
		}
		
		public void insertFriend(FriendVO vo) {
			sqlSession.insert("FriendDAO.insertFriend", vo);
		}
		
		public void rejectFriend(FriendVO vo){
			sqlSession.update("FriendDAO.rejectFriend", vo);
		}
		
		public List<FriendVO> myFriendList(String friendTo){
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
			
		public String getFriendId(String friendFrom) {
			return sqlSession.selectOne("FriendDAO.getNameByFriendId", friendFrom);
		}
		
		public List<FriendVO> getRequestNameById(String friendTo){
			return sqlSession.selectList("FriendDAO.getRequestNameById", friendTo);
		}
		
		public List<FriendVO> getFriendNameById(String friendTo){
			return sqlSession.selectList("FriendDAO.getFriendNameById", friendTo);
		}
		
		
		public FriendVO getOneFriendNameById(FriendVO vo) {
			return sqlSession.selectOne("FriendDAO.getOneFriendNameById", vo);
		}
			
			
	}
