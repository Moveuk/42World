package com.world.domain.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.main.impl.ProductService;
import com.world.domain.main.vo.ProductVO;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	@RequestMapping("/product/getProductList")
	public String getMemberList(HttpServletRequest req, ProductVO vo, Model model) throws IllegalStateException {
		System.out.println("1번 controller list~");
		String category = req.getParameter("category");
		System.out.println("category : " + category);

		model.addAttribute("category", category);
		model.addAttribute("productList", productService.getProductList(category));

		return "/main/purchase";
	}

//	@RequestMapping("/product/getProduct")
//	public String getMember(ProductVO vo, Model model) {
//		
//		model.addAttribute("product", productService.getProduct());
//		return "/main/memberList";
//	}

	@RequestMapping("/product/insertProduct")
	public String insertProduct(HttpServletRequest req, ProductVO vo, Model model) throws IllegalStateException {

		System.out.println("ProductController insertProduct start : ");

		String category = req.getParameter("category");
		System.out.println("category : " + category);

		System.out.println("ProductController insertProduct : " + vo.toString());

		/*
		 * MultipartFile uploadFile = vo.getUploadFile();
		 * System.out.println("uploadFile : " + uploadFile); if(!uploadFile.isEmpty()) {
		 * // uploadFile.transferTo(new File("E:/" + fileName)); }
		 */
		productService.insertCart(vo);
		model.addAttribute("productList", productService.getProductList(category));
		return "/admin/memberList";
	}

}
