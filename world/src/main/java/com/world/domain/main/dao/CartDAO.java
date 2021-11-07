package com.world.domain.main.dao;

import java.util.List;

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

	public List<CartVO> getCartList(CartVO vo) {

		return sqlSession.selectList("CartDAO.getCartList", vo);
	}

	public int getCartListCount(CartVO vo) {

		return sqlSession.selectOne("CartDAO.getCartListCount", vo);
	}

	public void deleteCart(CartVO vo) {
		sqlSession.delete("CartDAO.deleteCart", vo);
	}

}
