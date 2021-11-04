package com.world.domain.main.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.main.dao.MemberDAO;
import com.world.domain.main.vo.MemberVO;
import com.world.domain.minihome.vo.PhotoVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public List<MemberVO> getMemberList() {
		return memberDAO.getMemberList();
	}
	
	@Override
	public MemberVO confirmID(String email, String password) {
		System.out.println("MemberServiceImpl confirmID() :" + email + "/" +password);
		return memberDAO.confirmID(email,password);
		}
	
	@Override
	public List<MemberVO> getMember(MemberVO vo) {
		System.out.println("MemberServiceImpl getMember() :" + "member");
		return memberDAO.getMember(vo);
	}
	


	@Override
	public void insertMember(MemberVO vo) {memberDAO.insertMember(vo);}
	
	@Override
	public void updateMember() {memberDAO.updateMember();}
	@Override
	public void deleteMember() {memberDAO.deleteMember();}


	@Override
	public MemberVO getPassword(MemberVO vo) {
		System.out.println("MemberServiceImpl getPassword() :" + "member");
		return memberDAO.getPassword(vo);
	}

	@Override
   public String getNameByUserId(int userId) {
      return memberDAO.getNameByUserId(userId);
   }

}
