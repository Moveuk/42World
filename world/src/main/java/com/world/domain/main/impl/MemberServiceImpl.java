package com.world.domain.main.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.main.dao.MemberDAO;
import com.world.domain.main.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public List<MemberVO> getMemberList() {
		return memberDAO.getMemberList();
	}
	
	@Override
	public MemberVO confirmID(String email) {
		System.out.println("MemberServiceImpl confirmID() :" + email);
		return memberDAO.confirmID(email);
		}
	
	@Override
	public MemberVO getMember() {
		System.out.println("MemberServiceImpl getMember() :" + "member");
		return memberDAO.getMember();
		}

	@Override
	public void insertMember(MemberVO vo) {memberDAO.insertMember(vo);}
	
	@Override
	public void updateMember() {memberDAO.updateMember();}
	@Override
	public void deleteMember() {memberDAO.deleteMember();}

}
