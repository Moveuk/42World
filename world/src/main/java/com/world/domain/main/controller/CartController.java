package com.world.domain.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.main.impl.CartService;
import com.world.domain.main.impl.DotoryService;
import com.world.domain.main.impl.FriendService;
import com.world.domain.main.impl.ItemService;
import com.world.domain.main.impl.ProductService;
import com.world.domain.main.vo.CartVO;
import com.world.domain.main.vo.DotoryVO;
import com.world.domain.main.vo.ItemVO;
import com.world.domain.main.vo.ProductVO;

@Controller
public class CartController {

	@Autowired
	CartService cartService;

	@Autowired
	ProductService productService;

	@Autowired
	FriendService friendService;

	@Autowired
	DotoryService dotoryService;

	@Autowired
	ItemService itemService;

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

		System.out.println("2번 /CartController insertCart : " + vo.getName());

		/*
		 * MultipartFile uploadFile = vo.getUploadFile();
		 * System.out.println("uploadFile : " + uploadFile); if(!uploadFile.isEmpty()) {
		 * // uploadFile.transferTo(new File("E:/" + fileName)); }
		 */
		cartService.insertCart(vo);// vo의 값을 알아서 찾아준다?

		ProductVO vo1 = new ProductVO();

		model.addAttribute("productList", productService.getProductList(category));

		return "/main/purchase";
	}

	@RequestMapping("/cart/cartList")
	public String getCartList(HttpServletRequest req, CartVO vo, Model model) throws IllegalStateException {
		// 장바구니 아이템 정보
		HttpSession session = req.getSession();

		System.out.println(session.getAttribute("loginUser"));
		int memberNo = Integer.parseInt(String.valueOf(session.getAttribute("loginUser")));

		vo.setMemberNo(memberNo);

		model.addAttribute("cartList", cartService.getCartList(vo));

		// 장바구니 아이템 개수
		model.addAttribute("cartListCount", cartService.getCartListCount(vo));

		// 일촌에게 선물하기 - 일촌 이름 띄우기
		model.addAttribute("myFriendName", friendService.getFriendNameById(memberNo));

		// 일촌에게 선물하기 - 일촌명(별명) 띄우기
		model.addAttribute("myFriendNickname", friendService.myFriendList(memberNo));

		// 내 보유 도토리 개수 구하기
		model.addAttribute("myDotory", dotoryService.getMyDotory(memberNo));

		return "/main/cart_list";
	}

	@RequestMapping("/cart/buyItems")
	public String dotoryPay(HttpServletRequest req, ItemVO itemVO, DotoryVO dotoryVO, CartVO cartVO, Model model)
			throws IllegalStateException {
		
		System.out.println("체크포인트1");

		// 구매자 아이디 정보
		HttpSession session = req.getSession();
		System.out.println(session.getAttribute("loginUser"));
		int memberNo = Integer.parseInt(String.valueOf(session.getAttribute("loginUser")));

		// vo.setMemberNo(memberNo);

		System.out.println("체크포인트2");

		String orderListArr = req.getParameter("orderListArr");
		String orderList[] = orderListArr.split("\\,");

		String cartName = "";
		String price = "";
		String category = "";
		String fileName = "";
		// String chkbox2 = "";
		int friendFrom = 0;

		for (int i = 0; i < orderList.length; i++) {
			String itemsListArr = orderList[i];
			String itemsList[] = itemsListArr.split("\\^@");

			// 20211106.KHJ: ^@ 로 연결한 아이템 개수만큼 배열로 꺼내서 vo에 set 해주면 됨
			cartName = itemsList[0];
			price = itemsList[1];
			category = itemsList[2];
			fileName = itemsList[3];
			friendFrom = Integer.parseInt(itemsList[4]);

			itemVO.setName(cartName); // itemService에 있는 메소드 사용 위함.
			itemVO.setPrice(Integer.parseInt(price));
			itemVO.setCategory(category);
			itemVO.setFileName(fileName);
			itemVO.setGiftTo(friendFrom);
			itemVO.setMemberNo(memberNo);

			dotoryVO.setMemberNo(memberNo); // dotoryService에 있는 메소드 사용 위함.
			dotoryVO.setGiftTo(friendFrom);
			dotoryVO.setName(cartName);
			dotoryVO.setPrice(Integer.parseInt(price));

			cartVO.setMemberNo(memberNo); // cartService에 있는 메소드 사용 위함.
			cartVO.setName(cartName);
			cartVO.setPrice(Integer.parseInt(price));
			cartVO.setCategory(category);
			cartVO.setFileName(fileName);

			System.out.println(cartName);
			System.out.println(price);
			System.out.println(category);
			System.out.println(fileName);
			System.out.println(friendFrom);

			System.out.println("체크포인트3");

			if (req.getParameter("chkbox2") == null) { // 선물하기 체크 안했을 때.
				System.out.println("체크포인트-내아이템구매");

				itemService.insertMyItem(itemVO); // 아이템 테이블에 데이터 추가.
				dotoryService.useForMe(dotoryVO); // 도토리 테이블에 사용내역 추가.
				cartService.deleteCart(cartVO); // 장바구니 테이블에서 구매한 물품 삭제.

			} else { // 일촌에게 선물하기를 체크했을 때.
				System.out.println("체크포인트-선물하기");

				itemService.insertFriendItem(itemVO); // 아이템 테이블에 데이터 추가.
				dotoryService.useForFriend(dotoryVO); // 도토리 테이블에 사용내역 추가.
				cartService.deleteCart(cartVO); // 장바구니 테이블에서 구매한 물품 삭제.
			}

		}

		System.out.println("체크포인트4");

		return "/main/cart_list";
	}

}
