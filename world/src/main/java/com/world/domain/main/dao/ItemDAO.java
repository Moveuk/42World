package com.world.domain.main.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.main.vo.ItemVO;

@Repository
public class ItemDAO {

	@Inject
	SqlSession sqlSession;

	public List<ItemVO> getItemList() {
		System.out.println("=== 3번 ItemDAO  getItemList()  ");
		return sqlSession.selectList("ItemDAO.selectItem");// mapper:id~
	}

	// 내 아이템 구매로 결제시 아이템 테이블에 데이터 추가
	public void insertMyItem(ItemVO vo) {
		System.out.println("===ItemDAO  insertMyItem()  ");
		sqlSession.update("ItemDAO.insertMyItem", vo);
	}

	// 일촌 선물로 결제시 아이템 테이블에 데이터 추가
	public void insertFriendItem(ItemVO vo) {
		System.out.println("===ItemDAO  insertFriendItem()  ");
		sqlSession.update("ItemDAO.insertFriendItem", vo);
	}

}
