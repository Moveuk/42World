package com.world.domain.minihome.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.main.impl.MemberService;

@Controller
public class SettingController {
	
	@Autowired
	MemberService memberService;
	
//	@RequestMapping("/setting/myinfo")
//	public String getMyInfo() {
//		System.out.println("SettingController getMyInfo start");
//		// 세션 로그인 유저 정보로 조회
//		//MemberVO memberVO = (MemberVO) session.getAttribute("member");
//		
//		//model.addAttribute("member", memberService.getMember(memberVO.getMemberNo()));
//		return "/minihome/tab/setting";
//	}
	

}
