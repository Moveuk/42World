package com.world.domain.main.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.main.dao.CartDAO;
import com.world.domain.main.vo.CartVO;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAO cartDAO;

	@Override
	public void insertCart(CartVO vo) {
		cartDAO.insertCart(vo);

	}

	@Override
	public List<CartVO> getCartList(CartVO vo) {
		return cartDAO.getCartList(vo);
	}

	@Override
	public int getCartListCount(CartVO vo) {
		return cartDAO.getCartListCount(vo);
	}

}
