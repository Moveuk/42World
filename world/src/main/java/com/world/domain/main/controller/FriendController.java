package com.world.domain.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.world.domain.main.impl.FriendService;
import com.world.domain.main.impl.MemberService;
import com.world.domain.main.vo.FriendVO;

@Controller
public class FriendController {
	
	@Autowired
	FriendService friendService;
	
	@Autowired
	MemberService memberService;
	
	
	//���� ��û �������� �̵�. ��û�� �̸�, ������ �̸� ����.
//	@RequestMapping("member/friend/requestFriendForm")
//	public String requestFriendForm(HttpServletRequest req, FriendVO vo, Model model) throws IllegalStateException{
//
//		return "main/request_friend"; //���� ��û ������
//
//	}
	
//	@RequestMapping("member/friend/requestFriendForm")
//	public @ResponseBody String requestFriendForm(HttpServletRequest req, FriendVO vo, Model model) throws IllegalStateException{
//
//		return "main/request_friend"; //���� ��û ������
//
//	}
	
	
	@RequestMapping(value="member/friend/requestFriendForm")
	public @ResponseBody String reqAjax2(HttpServletRequest req,String name, String phone, Model model) {
		System.out.println("ajax 요청 도착!"+name +"," + phone);
		
		
		
		HttpSession session = req.getSession();
		session.setAttribute("loginUser", name);
		System.out.println(session.getAttribute("loginUser"));
		
		
		
		
		return "main/request_friend";
	}
	
	@RequestMapping("/friend/requestFriendFormm")
	public String requestFriendForm(HttpServletRequest req, FriendVO vo, Model model) throws IllegalStateException{

		HttpSession session = req.getSession();
		System.out.println(session.getAttribute("loginUser"));
		
		
		
		int friendTo = Integer.parseInt(String.valueOf(session.getAttribute("loginUser")));
		System.out.println("üũ����Ʈ1 - friendTo : " + friendTo);
		
		model.addAttribute("requestList", friendService.getRequestNameById(friendTo));
		System.out.println("üũ����Ʈ2");
		System.out.println(vo.getNicknameFrom());

		return "/main/request_list"; 

	}
	
	
	//���� ��û �������� �ۼ��� ������ ���� ���̺��� ����. ��û�� �̸�, ������ �̸�, ��û�� ����, ������ ����, �޼��� ����.
	@RequestMapping("/friend/requestFriend")
	public void requestFriend(HttpServletRequest req, FriendVO vo, Model model) throws IllegalStateException{
		
//		String name1 = req.getParameter("friendTo");
//		String name2 = req.getParameter("friendFrom");
//		
//		String nicknameTo = req.getParameter("nicknameTo");
//		String nicknameFrom = req.getParameter("nicknameFrom");
//		
//		String message = req.getParameter("message");
		
		friendService.requestFriend(vo); //���� ���̺��� ������ ����.
	}
	
	
	//������ �� ���� ��û ��� ����. �� �̸� �ʿ�.
	@RequestMapping("/friend/requestList")
	public String getRequestFriendList(HttpServletRequest req, Model model) throws IllegalStateException{
		
		String friendTo = req.getParameter("friendTo");
		
		System.out.println("üũ����Ʈ1 - friendTo : " + friendTo);
		
		model.addAttribute("requestList", friendService.getRequestFriendList(friendTo));
		System.out.println("üũ����Ʈ2");
		
		

		return "/main/request_list"; //������ �� ���� ��û ��� ������
		
		
		
	}
	
	
	//�������� ���� ��û ��� �� �� ���̵� �������� ��, ������ ���� ���� ��û �������� ����. �� �̸�, ������ �̸� �ʿ�.
	@RequestMapping("/friend/checkRequest")
	public String getOneRequestFriend(HttpServletRequest req, Model model, FriendVO vo) throws IllegalStateException{
		
		int friendTo = Integer.parseInt(req.getParameter("friendTo"));
		int friendFrom = Integer.parseInt(req.getParameter("friendFrom"));
		
		vo.setFriendTo(friendTo);
		vo.setFriendFrom(friendFrom);
		
		System.out.println("üũ����Ʈ3 - friendTo : " + friendTo + " friendFrom : " + friendFrom );
		
		model.addAttribute("friendName", friendService.getOneFriendNameById(vo));
		System.out.println(vo.getFriendFrom());
		
		
		model.addAttribute("myName", memberService.getNameByUserId(friendTo));
		
		
		model.addAttribute("acceptFriend", friendService.getOneRequestFriend(vo));
		System.out.println("üũ����Ʈ4");

		return "/main/accept_friend"; //������ ���� ���� ��û ������
	}

	
	//������ ���� ���� ��û�� ������ ��
	@RequestMapping("/friend/acceptFriend")
	public String acceptFriend(HttpServletRequest req, Model model, FriendVO vo) throws IllegalStateException{
		
//		String friendTo = req.getParameter("friendTo");
//		String friendFrom = req.getParameter("friendFrom");
//		String nicknameTo = req.getParameter("nicknameTo");
//		String nicknameFrom = req.getParameter("nicknameFrom");
//		String message = req.getParameter("message");
		
//		
//		System.out.println("üũ����Ʈ5 - friendTo : " + friendTo + " friendFrom : " + friendFrom );
//		
//		vo.setFriendTo(friendTo);
//		//vo.setFriendFrom(friendFrom);
		
		//���� ���� ��û�� ���� ���̺��� ��ϵǾ��� ������ accept�� 1(�̼���) -> 2(����)�� �ٲٴ� �޼���
		friendService.acceptFriend(vo);
		System.out.println("üũ����Ʈ6");
		
		// ������ ���� ������ ������, ���� ���̺��� ���� ���忡���� ���� ���̺��� ������ �ִ� �޼���. (���߿� ���� ��� �̾Ƴ��� friendTo=?�� �̾Ƴ��� ������ ���� ���忡���� ������ �־���� ��)
		friendService.insertFriend(vo); 
		System.out.println("üũ����Ʈ7");
		
		return "/main/request_list"; //�������� ���̽�û ��� �� �� ������ ����/���� �� �ٽ� ����Ʈ �������� ���ƿ��� ��, ������ ����Ʈ �ȶߴ� ���� �߻�..
	}
	
	//���� ��û�� �������� ��
	@RequestMapping("/friend/rejectFriend")
	public String rejectFriend(HttpServletRequest req, Model model, FriendVO vo) throws IllegalStateException{
		friendService.rejectFriend(vo);
		return "/main/request_list";
	}
	
	
	//�� ���� ����Ʈ �ҷ�����
	@RequestMapping("/friend/myFriendList")
	public String myFriendList(HttpServletRequest req, Model model, FriendVO vo) throws IllegalStateException{

		


		int friendTo = Integer.parseInt(String.valueOf(req.getParameter("friendTo")));
		System.out.println("friendTo : " + friendTo);
		model.addAttribute("myFriendList", friendService.myFriendList(friendTo));
		
		return "/main/my_friend_list";
	}
	
	
	//���̸� ������������ �̵�
	@RequestMapping("/friend/updateFriendForm")
	public String updateFriendForm(HttpServletRequest req, Model model, FriendVO vo) throws IllegalStateException{
		
		return "/main/update_friend";
	}
	
	//���̸� ����
	@RequestMapping("/friend/updateFriend")
	public String updateFriend(HttpServletRequest req, Model model, FriendVO vo) throws IllegalStateException{
		
		String nicknameFrom = req.getParameter("nicknameFrom");
		int friendTo = Integer.parseInt(req.getParameter("friendTo"));
		int friendFrom = Integer.parseInt(req.getParameter("friendFrom"));
		System.out.println("nicknameFrom : " + nicknameFrom + " friendFrom : " + friendFrom + " friendTo : " + friendTo);
		
		vo.setFriendFrom(friendFrom);
		vo.setFriendTo(friendTo);
		vo.setNicknameFrom(nicknameFrom);
		
		model.addAttribute("updateFriend", vo);
		
		return "/main/update_friend";
	}

	
	@RequestMapping("/friend/updateFriendDB")
	public String updateFriendDB(HttpServletRequest req, Model model, FriendVO vo) throws IllegalStateException{
		
		friendService.updateFriendDB(vo);
		
		//���� ���̸��� ����
		friendService.updateFriendDB2(vo);
		
		return "/main/my_friend_list";
	}
	
	//���� ����
	@RequestMapping("/friend/deleteFriend")
	public String deleteFriend(HttpServletRequest req, Model model, FriendVO vo) throws IllegalStateException{
		int friendTo = Integer.parseInt(req.getParameter("friendTo"));
		int friendFrom = Integer.parseInt(req.getParameter("friendFrom"));
		String nicknameFrom = req.getParameter("nicknameFrom");
		
		
		vo.setFriendFrom(friendFrom);
		vo.setNicknameFrom(nicknameFrom);
		vo.setFriendTo(friendTo);
		System.out.println("friendFrom : " + friendFrom + " nicknameFrom : " + nicknameFrom);
		
		friendService.deleteFriend(vo);
		
		// ���� ���� ��Ͽ����� �� ���� ���� ����
		vo.setFriendTo(friendFrom);
		vo.setNicknameTo(nicknameFrom);
		vo.setFriendFrom(friendTo);
		
		friendService.deleteFriend(vo);
		
		return "/main/my_friend_list";
		
	}

}
