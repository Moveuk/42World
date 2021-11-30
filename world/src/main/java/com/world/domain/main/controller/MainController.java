package com.world.domain.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.main.impl.CartService;
import com.world.domain.main.impl.DotoryService;
import com.world.domain.main.impl.FriendService;
import com.world.domain.main.impl.GuestService;
import com.world.domain.main.impl.ProductService;
import com.world.domain.main.vo.CartVO;

@Controller
public class MainController {

	@Autowired
	CartService CartService;

	@Autowired
	ProductService productService;

	@Autowired
	DotoryService dotoryService;

	@Autowired
	FriendService friendService;

	@Autowired
	GuestService guestService;

	@RequestMapping("/main/profile")
	public String insertCart(HttpServletRequest req, CartVO vo, Model model) throws IllegalStateException {

		System.out.println("1번 /MainController main.jsp open: ");

		String name = req.getParameter("name");// jsp의 name
		String password = req.getParameter("password");

		System.out.println("로그인 아이디 : " + name);
		System.out.println("로그인 비밀번 : " + password);

		// 1번 방법

		// 2번 방법
		// 먼저 hide로 데이터 다 가져오기

		System.out.println("2번 /CartController insertCart : " + vo.getName());

		/*
		 * MultipartFile uploadFile = vo.getUploadFile();
		 * System.out.println("uploadFile : " + uploadFile); if(!uploadFile.isEmpty()) {
		 * // uploadFile.transferTo(new File("E:/" + fileName)); }
		 */
		CartService.insertCart(vo);// vo의 값을 알아서 찾아준다?

//		model.addAttribute("memberList", CartService.getMemberList());
		return "/main/purchase";
	}

}
