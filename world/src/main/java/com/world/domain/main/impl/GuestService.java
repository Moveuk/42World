package com.world.domain.main.impl;

import java.util.List;

import com.world.domain.main.vo.GuestVO;

public interface GuestService {

	void insertGuest(GuestVO vo);

	GuestVO getGuest(String memberNo);

	List<GuestVO> getGuestList(GuestVO vo);
}
