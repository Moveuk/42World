package com.world.domain.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.main.impl.MemberService;
import com.world.domain.main.vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	@RequestMapping("/member/getMemberList")
	public String getMemberList(MemberVO vo, Model model) {

		model.addAttribute("memberList", memberService.getMemberList());
		return "/admin/memberList";
	}

	@RequestMapping("/member/getMember")
	public String getMember(MemberVO vo, Model model) {

		model.addAttribute("member", memberService.getMember(vo.getMemberNo()));
		return "/admin/memberList";
	}

	@RequestMapping("/member/insertMember")
	public String insertMember(HttpServletRequest req, MemberVO vo, Model model) throws IllegalStateException {

		System.out.println("MemberController insertMember start : ");

		String pwd = req.getParameter("pwd");
		System.out.println("pwd : " + pwd);

		System.out.println("MemberController insertMember : " + vo.toString());

		/*
		 * MultipartFile uploadFile = vo.getUploadFile();
		 * System.out.println("uploadFile : " + uploadFile); if(!uploadFile.isEmpty()) {
		 * // uploadFile.transferTo(new File("E:/" + fileName)); }
		 */
		memberService.insertMember(vo);
		model.addAttribute("memberList", memberService.getMemberList());
		return "/admin/memberList";
	}

	@RequestMapping("/member/updateMember")
	public String updateMember(MemberVO vo) {
		memberService.updateMember();
		return "getMemberList.do";
	}

	@RequestMapping("/member/deleteMember")
	public String deleteMember(MemberVO vo) {
		memberService.deleteMember();
		return "getMemberList.do";
	}

	@RequestMapping("/member/confirmID")
	public String confirmID(String email, String password) {
		memberService.confirmID(email, password);
		System.out.println("MemberController : " + email + "/" + password);
		return "product/getProductList";
	}

}
