package com.world.domain.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.main.impl.CartService;
import com.world.domain.main.impl.ProductService;
import com.world.domain.main.vo.CartVO;
import com.world.domain.main.vo.ProductVO;

@Controller
public class CartController {

	@Autowired
	CartService cartService;

	@Autowired
	ProductService productService;

	@RequestMapping("/product/insertCart")
	public String insertCart(HttpServletRequest req, CartVO vo, Model model) throws IllegalStateException {

		System.out.println("1번 /CartController insertCart start : ");

//		String name = req.getParameter("name");//jsp의 name

//		String name = "test data";

		String marketID = req.getParameter("productID");
		String name = req.getParameter("name");
		String price = req.getParameter("price");
		String category = req.getParameter("category");
		String filename = req.getParameter("filename");

		System.out.println("주문 할 상품 ID : " + marketID);
		System.out.println("주문 할 상품 NAME : " + name);
		System.out.println("주문 할 상품 PRICE : " + price);
		System.out.println("주문 할 상품 CATEGORY : " + category);
		System.out.println("주문 할 상품 filename : " + filename);

		// 1번 방법

		// 2번 방법
		// 먼저 hide로 데이터 다 가져오기

		System.out.println("2번 /CartController insertCart : " + vo.getName());

		/*
		 * MultipartFile uploadFile = vo.getUploadFile();
		 * System.out.println("uploadFile : " + uploadFile); if(!uploadFile.isEmpty()) {
		 * // uploadFile.transferTo(new File("E:/" + fileName)); }
		 */
		cartService.insertCart(vo);// vo의 값을 알아서 찾아준다?

		ProductVO vo1 = new ProductVO();

//		model.addAttribute("productList", productService.getProductList(catecory));

//		model.addAttribute("memberList", CartService.getMemberList());
		return "/main/purchase";
	}

	@RequestMapping("/cart/cartList")
	public String getCartList(HttpServletRequest req, CartVO vo, Model model) throws IllegalStateException {
		// 장바구니 아이템 정보
		HttpSession session = req.getSession();

		System.out.println(session.getAttribute("loginUser"));
		String memberNo = (String) session.getAttribute("loginUser");
		vo.setMemberNo(memberNo);

		model.addAttribute("cartList", cartService.getCartList(vo));

		// 장바구니 아이템 개수
		model.addAttribute("cartListCount", cartService.getCartListCount(vo));

//		//일촌에게 선물하기 - 일촌 이름 띄우기
//		model.addAttribute("myFriendName", friendService.getFriendNameById(memberNo));
//		
//		//일촌에게 선물하기 - 일촌명(별명) 띄우기
//		model.addAttribute("myFriendNickname", friendService.myFriendList(memberNo));
//		

		return "/main/cart_list";
	}

}
