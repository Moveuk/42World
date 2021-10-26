package com.world.domain.main.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.main.impl.GuestService;
import com.world.domain.main.impl.MemberService;
import com.world.domain.main.vo.DotoryVO;
import com.world.domain.main.vo.FriendVO;
import com.world.domain.main.vo.GuestVO;
import com.world.domain.main.vo.ItemVO;
import com.world.domain.main.vo.MemberVO;

@Controller
public class LoginOutIndexController {
	
	@Autowired
	MemberService memberService;
	@Autowired
	GuestService guestService;
	
	@Inject
	SqlSession sqlSession;
	
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
		
	@RequestMapping("/member/login")
	public String login(HttpServletRequest request, MemberVO vo , Model model) {
		
		

		
		
		System.out.println("로그인 시도/== 아이디 : " + vo.getEmail() +"/ 비밀번호 : "+ vo.getPassword());
		
//		HttpSession session = request.getSession();
		String email = vo.getEmail();
		String password = vo.getPassword();
		
		
		System.out.println("====== MemberVO vo"+vo.toString());

		if("".equals(email) && "".equals(password)) {
			System.out.println("====== if 1");
			return "login";
		}else {
			System.out.println("====== else 2 : " + email);
			
			MemberVO member = memberService.getPassword(vo);
			
			System.out.println("====== else 3 : " + member.getPassword() + "/" +member.getUserid());
			System.out.println(member.getPassword()+"/"+password);
			if(member.getPassword().equals(password)) {
				
				System.out.println(member.getName());
				model.addAttribute("loginuser", member.getName());

				
//				GuestVO guest =  guestService.getGuest(member.getUserid());
//				System.out.println(guest.getGuestno());
				
				
				GuestVO GuestCount = sqlSession.selectOne("GuestDAO.getguest",member.getUserid());
				System.out.println("오늘의 방문자: "+GuestCount.getGuestno());//Guest Count 
				
				FriendVO FriendCount = sqlSession.selectOne("FriendDAO.getfriendCount",member.getUserid());
				System.out.println("일촌신청: "+FriendCount.getFriendNo());//Friend Count 
				
				ItemVO ItemCount = sqlSession.selectOne("ItemDAO.getitemCount",member.getUserid());
				System.out.println("선물함: "+ItemCount.getItemno());//Item Count
				
				DotoryVO DotorySum = sqlSession.selectOne("DotoryDAO.getdotorySum",member.getUserid());
				if(DotorySum.getDotoryno() == 1) {
					System.out.println("내 도토리: "+DotorySum.getDotoryno());// Dotory Sum

				}
				
				
				model.addAttribute("GuestCount", GuestCount.getGuestno());
				model.addAttribute("FriendCount", FriendCount.getFriendNo());
				model.addAttribute("ItemCount", ItemCount.getItemno());
				model.addAttribute("DotorySum", DotorySum.getDotoryno());

				
				
				
			//	session.removeAttribute("id");
			//	session.setAttribute("loginUser",member);
				return "/main/main";	
			}
			return "login";
		}
		
		
		
	}
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	
}
