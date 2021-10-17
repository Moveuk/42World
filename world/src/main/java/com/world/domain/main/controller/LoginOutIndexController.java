package com.world.domain.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.main.impl.MemberService;
import com.world.domain.main.vo.MemberVO;

@Controller
public class LoginOutIndexController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("index.do")
	public String index() {
		return "/index";
	}
	
	@RequestMapping("loginForm.do")
	public String loginForm() {
		return "/member/login";
	}
	
	@RequestMapping("joinForm.do")
	public String joinForm() {
		return "/member/join";
	}
	
	
	@RequestMapping("contact.do")
	public String join() {
		return "/member/join";
	}	
		
	@RequestMapping("login.do")
	public String login(HttpServletRequest request, MemberVO vo) {
		System.out.println("controller login process vo.getEmail(): " + vo.getEmail());
		
//		HttpSession session = request.getSession();
		String email = vo.getEmail();
		String pwd = vo.getPassword();
		System.out.println("====== MemberVO vo"+vo.toString());

		if("".equals(email) && "".equals(pwd)) {
			System.out.println("====== if");
			return "/member/join";
		}else {
			System.out.println("====== else : " + email);
			
			MemberVO member = memberService.confirmID(email);
			
			System.out.println("====== else : " + member.getPassword());
			
			if(member.getPassword().equals(pwd)) {
				System.out.println();
			//	session.removeAttribute("id");
			//	session.setAttribute("loginUser",member);
			}
			return "/index";			
		}
	}
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	
}
