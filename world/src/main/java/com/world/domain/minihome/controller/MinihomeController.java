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
	public String openMinihome(@PathVariable("userUrl") String userUrl, Model model) {

		String url = "minihome/minihome_main";

		try {
			System.out.println("openMinihome get userUrl : " + userUrl);
			// 문제점 있던 없던 들어가짐. 익셉션 잡아야함.
			
			// memberService.getMemberByUserUrl(userUrl) isempty~
			
			model.addAttribute("ownerInfo", memberService.getMemberByUserUrl(userUrl));

			// 데이터
			
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

/*	
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
		System.out.println("list size(): "+count.get(0).getFriendFrom());
		
		model.addAttribute("myFriendName", count);
	
		MemberVO GuestCount = sqlSession.selectOne("MemberDAO.totalgetGuestcount", memberno);
		System.out.println("방문자수: "+GuestCount.getGuestcount()+"/"+GuestCount.getTotalguestcount());
		
		model.addAttribute("Guestcount",GuestCount.getGuestcount());
		model.addAttribute("TotalGuestcount",GuestCount.getTotalguestcount());

		
		
		return "/minihome/minihome_main";
	}
	
	@RequestMapping("/openfriendMinihome")
	public String openfriendMinihome(HttpServletRequest request, MemberVO vo, Model model) {
		
		
		

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
		
		

	
		List <FriendVO> count = (List<FriendVO>) friendService.getFriendNameById(memberno);
		System.out.println("list size(): "+count.get(0).getFriendFrom());
		
		model.addAttribute("myFriendName", count);
	
		MemberVO GuestCount = sqlSession.selectOne("MemberDAO.totalgetGuestcount", memberno);
		System.out.println("방문자수: "+GuestCount.getGuestcount()+"/"+GuestCount.getTotalguestcount());
		
		model.addAttribute("Guestcount",GuestCount.getGuestcount());
		model.addAttribute("TotalGuestcount",GuestCount.getTotalguestcount());

		
		
		
		
		return "/minihome/minihome_main";
	}
	
	*/
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
