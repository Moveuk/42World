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

}
