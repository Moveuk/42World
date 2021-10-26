package com.world.domain.main.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.main.vo.CartVO;

@Repository
public class CartDAO {

	@Inject
	SqlSession sqlSession;

	public void insertCart(CartVO vo) {
		System.out.println("===CartDAO  insertCart()  ");
		sqlSession.update("CartDAO.insertCart", vo);
	}

}
