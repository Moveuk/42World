package com.world.domain.main.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.main.dao.ProductDAO;
import com.world.domain.main.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	@Override
	public List<ProductVO> getProductList() {
		System.out.println("2번 ProductServiceImpl getProductList() :" + "product");
		return productDAO.getproductList();
	}

	@Override
	public ProductVO getProduct(String marketID) {
		System.out.println("ProductServiceImpl getProduct() :" + marketID);
		return productDAO.getproduct(marketID);
	}

	@Override
	public void insertCart(ProductVO vo) {
		// TODO Auto-generated method stub

	}

//	@Override
//	public void insertProduct(ProductVO vo) {
//		productDAO.insertProduct(vo);
//	}

}
