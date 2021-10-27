package com.world.domain.main.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.main.dao.FriendDAO;
import com.world.domain.main.vo.FriendVO;

@Service
public class FriendServiceImpl implements FriendService {

	@Autowired
	private FriendDAO friendDAO;

	@Override
	public FriendVO getFriendCount(String memberNo) {
		System.out.println("ProductServiceImpl getProduct() :" + memberNo);
		return friendDAO.getfriendCount(memberNo);
	}

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

}
