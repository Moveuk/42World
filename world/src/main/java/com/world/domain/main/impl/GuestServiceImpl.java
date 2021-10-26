package com.world.domain.main.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.world.domain.main.dao.GuestDAO;
import com.world.domain.main.vo.GuestVO;

@Service
public class GuestServiceImpl implements GuestService {

	@Autowired
	private GuestDAO guestDAO;

	@Override
	public void insertGuest(GuestVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public GuestVO getGuest(String userid) {
		System.out.println("ProductServiceImpl getProduct() :" + userid);
		return guestDAO.getguest(userid);
	}

	@Override
	public List<GuestVO> getGuestList(GuestVO vo) {
		return guestDAO.getGuestList(vo);
	}

//	@Override
//	public void insertProduct(ProductVO vo) {
//		productDAO.insertProduct(vo);
//	}

}
