package com.world.domain.main.impl;

import java.util.List;

import com.world.domain.main.vo.MemberVO;

public interface MemberService {

	List<MemberVO> getMemberList();

	public MemberVO confirmID(String email, String pasword);

	public MemberVO getMember();

	void insertMember(MemberVO vo);

	void updateMember();

	void deleteMember();

	MemberVO getPassword(MemberVO vo);
	
	public String getNameByUserId(String userId);
}
