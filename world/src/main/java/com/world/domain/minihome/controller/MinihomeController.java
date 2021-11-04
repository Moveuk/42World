package com.world.domain.minihome.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.main.impl.FriendService;
import com.world.domain.main.impl.GuestService;
import com.world.domain.main.impl.MemberService;
import com.world.domain.main.vo.FriendVO;
import com.world.domain.main.vo.GuestVO;
import com.world.domain.main.vo.MemberVO;

@Controller
public class MinihomeController {
	
	
	@Autowired
	MemberService memberService;
	@Autowired
	GuestService guestService;

	@Autowired
	FriendService friendService;
	

	@Inject
	SqlSession sqlSession;
	
	@RequestMapping("/openMinihome")
	public String openMinihome(HttpServletRequest request, MemberVO vo, Model model) {
		
		

		HttpSession session = request.getSession();
		
		System.out.println("memberno: " + session.getAttribute("loginUser"));
		System.out.println("loginTitle: " + session.getAttribute("loginTitle"));
		System.out.println("loginSubTitle: " + session.getAttribute("loginSubTitle"));
		System.out.println("loginPropic: " + session.getAttribute("loginPropic"));
		System.out.println("loginPhoto: " + session.getAttribute("loginPhoto"));
		System.out.println("loginBoard: " + session.getAttribute("loginBoard"));
		System.out.println("loginVideo: " + session.getAttribute("loginVideo"));


		
		int memberno = (int) session.getAttribute("loginUser");
		String loginTitle =  (String) session.getAttribute("loginTitle");
		String loginSubTitle =  (String) session.getAttribute("loginSubTitle");
		String loginPropic = (String) session.getAttribute("loginPropic");
		int loginPhoto = (int) session.getAttribute("loginPhoto");
		int loginBoard = (int) session.getAttribute("loginBoard");
		int loginVideo = (int) session.getAttribute("loginVideo");
		
		
		model.addAttribute("memberno", memberno);
		model.addAttribute("loginTitle",loginTitle );
		model.addAttribute("loginSubTitle",loginSubTitle);
		model.addAttribute("loginPropic", loginPropic);
		model.addAttribute("loginPhoto", loginPhoto);
		model.addAttribute("loginBoard", loginBoard);
		model.addAttribute("loginVideo", loginVideo);

		
		System.out.println(memberno);
		System.out.println(loginTitle);
		System.out.println(loginSubTitle);
		System.out.println(loginPropic);
		System.out.println(loginPhoto);
		System.out.println(loginBoard);
		System.out.println(loginVideo);
		
		
		int friendTo = (int) session.getAttribute("loginUser");

	
		List <FriendVO> count = (List<FriendVO>) friendService.getFriendNameById(friendTo);

		
		model.addAttribute("myFriendName", count);
	
		MemberVO GuestCount = sqlSession.selectOne("MemberDAO.totalgetGuestcount", memberno);
		System.out.println("방문자수: "+GuestCount.getGuestcount()+"/"+GuestCount.getTotalguestcount());
		
		model.addAttribute("Guestcount",GuestCount.getGuestcount());
		model.addAttribute("TotalGuestcount",GuestCount.getTotalguestcount());
		
		
		//방문자수 증가


		
		

		
		
		return "/minihome/minihome_main";
	}
	
	@RequestMapping("/openfriendMinihome")
	public String openfriendMinihome(HttpServletRequest request, MemberVO vo, GuestVO gvo, Model model) {
		
		
		

		HttpSession session = request.getSession();
		
	
		
		System.out.println(request.getParameter("memberno"));
		
		int memberno = Integer.parseInt(request.getParameter("memberno"));

		System.out.println(memberno);
		
		MemberVO member = sqlSession.selectOne("MemberDAO.getfriend", memberno);
		
		
		model.addAttribute("memberno", memberno);
		model.addAttribute("loginTitle",member.getTitle() );
		model.addAttribute("loginSubTitle",member.getSubtitle());
		model.addAttribute("loginPropic", member.getPropic());
		model.addAttribute("loginPhoto", member.getPhoto());
		model.addAttribute("loginBoard", member.getBoard());
		model.addAttribute("loginVideo", member.getVideo());

		
		System.out.println(memberno);
		System.out.println(member.getTitle());
		System.out.println(member.getSubtitle());
		System.out.println(member.getPropic());
		System.out.println(member.getPhoto());
		System.out.println(member.getBoard());
		System.out.println(member.getVideo());
		
		int loginMember = (int)session.getAttribute("loginUser");
		int homeMember = gvo.getVisitto();
		
		System.out.println(loginMember + "," + homeMember);
		
		if(loginMember != homeMember) {
			guestService.insertGuest(gvo);
			System.out.println(homeMember + "의 방문자 등록완료");
		}
		
	
		List <FriendVO> count = (List<FriendVO>) friendService.getFriendNameById(memberno);
		
		model.addAttribute("myFriendName", count);
	
		MemberVO GuestCount = sqlSession.selectOne("MemberDAO.totalgetGuestcount", memberno);
		System.out.println("방문자수: "+GuestCount.getGuestcount()+"/"+GuestCount.getTotalguestcount());
		
		
		model.addAttribute("Guestcount",GuestCount.getGuestcount());
		model.addAttribute("TotalGuestcount",GuestCount.getTotalguestcount());

		

		
		
		return "/minihome/minihome_main";
	}
	
	
	@RequestMapping("/home")
	public String loadHome() {
		return "/minihome/tab/home";
	}
	
	@RequestMapping("/profile")
	public String loadProfile() {
		return "/minihome/tab/profile";
	}
	
	@RequestMapping("/board")
	public String loadBoard() {
		return "/minihome/tab/board";
	}
	



}