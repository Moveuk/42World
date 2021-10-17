package com.world.domain.main.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.main.vo.MemberVO;

@Repository
public class MemberDAO {
	
	@Inject
	SqlSession sqlSession;
	
	public List<MemberVO> getMemberList(){
		System.out.println("=== MemberDAO  getMemberList()  ");
		return sqlSession.selectList("com.poseidon95.kr.mapper.memberMapper.getMemberList");
	}

	public MemberVO getMember() {
		System.out.println("===MemberDAO  getMember()  ");
		return sqlSession.selectOne("com.poseidon95.kr.mapper.memberMapper.getMember");
	}

	public void insertMember(MemberVO vo) {
		System.out.println("===MemberDAO  insertMember()  ");
		sqlSession.update("com.poseidon95.kr.mapper.memberMapper.insertMember", vo); 
			}
	public void deleteMember() {
		System.out.println("===MemberDAO  deleteMember()  ");
		sqlSession.update("com.poseidon95.kr.mapper.memberMapper.deleteMember");
	}
	public void updateMember() {
		System.out.println("===MemberDAO  updateMember()  ");
		sqlSession.update("com.poseidon95.kr.mapper.memberMapper.updateMember");
	}
	
	public MemberVO confirmID(String email) {
		System.out.println("===MemberDAO confirmID() email :" + email);
		return sqlSession.selectOne("com.poseidon95.kr.mapper.memberMapper.confirmID", email);
	}
	
}
