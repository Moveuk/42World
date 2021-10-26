package com.world.domain.main.impl;

import java.util.List;

import com.world.domain.main.vo.CartVO;

public interface CartService {

	void insertCart(CartVO vo);

	List<CartVO> getCartList(CartVO vo);

	int getCartListCount(CartVO vo);

}
