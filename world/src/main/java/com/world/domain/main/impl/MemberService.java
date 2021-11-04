package com.world.domain.main.impl;

import java.util.List;

import com.world.domain.main.vo.MemberVO;
import com.world.domain.minihome.vo.PhotoVO;

public interface MemberService {

	List<MemberVO> getMemberList();
	
	public MemberVO confirmID(String email, String pasword);
	
	List<MemberVO> getMember(MemberVO vo);
	

	
	void insertMember(MemberVO vo);
	
	void updateMember();
	
	void deleteMember();



	 MemberVO getPassword(MemberVO vo);
	
	 public String getNameByUserId(int userId);

	
}
