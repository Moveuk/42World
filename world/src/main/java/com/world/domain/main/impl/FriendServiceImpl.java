package com.world.domain.main.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.world.domain.main.dao.FriendDAO;
import com.world.domain.main.vo.FriendVO;
import com.world.domain.main.vo.MemberVO;

@Service
public class FriendServiceImpl implements FriendService {

	@Autowired
	private FriendDAO friendDAO;
	
	@Override
	public void requestFriend(FriendVO vo) {
		friendDAO.requestFriend(vo);
	}

	@Override
	public List<FriendVO> getRequestFriendList(String friendTo) {
		return friendDAO.getRequestFriendList(friendTo);
	}

	@Override
	public FriendVO getOneRequestFriend(FriendVO vo) {
		return friendDAO.getOneRequestFriend(vo);
	}

	@Override
	public void acceptFriend(FriendVO vo) {
		friendDAO.acceptFriend(vo);
	}

	@Override
	public void insertFriend(FriendVO vo) {
		friendDAO.insertFriend(vo);
	}
	
	@Override
	public void rejectFriend(FriendVO vo) {
		friendDAO.rejectFriend(vo);
	}

	@Override
	public List<FriendVO> myFriendList(String friendTo) {
		return friendDAO.myFriendList(friendTo);
	}

	@Override
	public void updateFriend(FriendVO vo) {
		friendDAO.updateFriend(vo);
	}
	
	@Override
	public void updateFriendDB(FriendVO vo) {
		friendDAO.updateFriendDB(vo);
	}
	
	@Override
	public void updateFriendDB2(FriendVO vo) {
		friendDAO.updateFriendDB2(vo);
	}

	@Override
	public void deleteFriend(FriendVO vo) {
		friendDAO.deleteFriend(vo);
	}

	@Override
	public String getFriendId(String friendFrom) {
		return friendDAO.getFriendId(friendFrom);
	}
	
	@Override
	public List<FriendVO> getRequestNameById(String friendTo) {
		return friendDAO.getRequestNameById(friendTo);
	}

	@Override
	public List<FriendVO> getFriendNameById(String friendTo) {
		return friendDAO.getFriendNameById(friendTo);
	}

	@Override
	public FriendVO getOneFriendNameById(FriendVO vo) {
		return friendDAO.getOneFriendNameById(vo);
	}



	

	












}
