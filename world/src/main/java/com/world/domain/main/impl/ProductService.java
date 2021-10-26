package com.world.domain.main.impl;

import java.util.List;

import com.world.domain.main.vo.ProductVO;

public interface ProductService {

	List<ProductVO> getProductList();

	public ProductVO getProduct(String marketID);

	void insertCart(ProductVO vo);

}
