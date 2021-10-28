package com.world.domain.minihome.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.main.impl.MemberService;

@Controller
@RequestMapping(value = "/{userUrl}")
public class MinihomeController {

	@Autowired
	MemberService memberService;

	@RequestMapping(value = "")
	public String openMinihome(@PathVariable("userUrl") int memberNo, Model model) {

		String url = "minihome/minihome_main";

		try {
			System.out.println("openMinihome get memberNo : " + memberNo);
			// 문제점 있던 없던 들어가짐. 익셉션 잡아야함.
			model.addAttribute("ownerInfo", memberService.getMember(memberNo));

		} catch (NullPointerException e) {
			// 익셉션 핸들링 or 익셉션 페이지
			System.out.println("존재하지 않는 유저 페이지");
			e.printStackTrace();
			url = "minihome/error";
		} catch (Exception e) {
			System.out.println("특정한 예외 사항");
			url = "minihome/error";
		}

		return url;
	}

	@RequestMapping("/home")
	public String loadHome() {
		return "minihome/tab/home";
	}

	@RequestMapping("/profile")
	public String loadProfile() {
		return "minihome/tab/profile";
	}

	@RequestMapping("/board")
	public String loadBoard() {
		return "minihome/tab/board";
	}

}
