package com.world.domain.main.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.world.domain.main.vo.ProductVO;

@Repository
public class ProductDAO {

	@Inject
	SqlSession sqlSession;

	public List<ProductVO> getproductList() {
		System.out.println("=== 3번 ProductDAO  getproductList()  ");
		return sqlSession.selectList("ProductDAO.getproductList");// mapper:id~
	}

	public ProductVO getproduct(String marketID) {
		System.out.println("===ProductDAO  getproduct()  ");
		return sqlSession.selectOne("ProductDAO.getproduct");
	}

	public void insertProduct(ProductVO vo) {
		System.out.println("===ProductDAO  insertProduct()  ");
		sqlSession.update("ProductDAO.insertProduct", vo);
	}

}
