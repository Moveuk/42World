package com.world.domain.main.impl;

import java.util.List;

import com.world.domain.main.vo.FriendVO;

public interface FriendService {

	FriendVO getFriendCount(String userid);

	void requestFriend(FriendVO vo);

	List<FriendVO> getRequestFriendList(String friendTo);

	FriendVO getOneRequestFriend(FriendVO vo);

	void acceptFriend(FriendVO vo);

	void insertFriend(FriendVO vo);

	void rejectFriend(FriendVO vo);

	List<FriendVO> myFriendList(String friendTo);

	void updateFriend(FriendVO vo);

	void updateFriendDB(FriendVO vo);

	void updateFriendDB2(FriendVO vo); // ���濡�Ե� ���̸� ����.

	void deleteFriend(FriendVO vo);

}
