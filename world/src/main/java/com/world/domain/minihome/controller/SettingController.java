package com.world.domain.minihome.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.main.impl.MemberService;

@Controller
@RequestMapping(value = "/{userUrl}")
public class SettingController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/setting/myinfo")
	public String getMyInfo() {
		return "minihome/tab/setting";
	}	
	

}
