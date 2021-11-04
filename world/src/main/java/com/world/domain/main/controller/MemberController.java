package com.world.domain.main.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.world.domain.main.impl.MemberService;
import com.world.domain.main.vo.MemberVO;
import com.world.domain.minihome.vo.PhotoVO;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/member/getMemberList")
	public String getMemberList(MemberVO vo, Model model) {
		
		model.addAttribute("memberList", memberService.getMemberList());
		return "/admin/memberList";
	}
	
//	@RequestMapping("/member/getMember")
//	public String getMember(MemberVO vo, Model model) {
//		
//		model.addAttribute("member", memberService.getMember());
//		return "/admin/memberList";
//	}
	
	
	@RequestMapping(value ="/member/getMember")
	@ResponseBody
	public List<MemberVO> getMember(MemberVO vo, Model model) throws Exception {
		System.out.println("run MemberController getmemberList()");
		System.out.println("vo.getFolder:" + vo.getName());

		List<MemberVO> memberVo =  memberService.getMember(vo);
		
		List<MemberVO> list = new ArrayList<MemberVO>();

		System.out.println("========= memberVo size:: " + memberVo.size());
		for (int i = 0; i < memberVo.size(); i++) {
			
			list.add(memberVo.get(i));
			
		}
		model.addAttribute("memberList", memberVo);
		System.out.println("========= list size:: " + list.size());
		return list;
		
	}
	
	@RequestMapping("/member/insertMember")
	public String insertMember(HttpServletRequest req, MemberVO vo, Model model) throws IllegalStateException, ParseException{
		
		String from = req.getParameter("birth");

		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd");

		Date birth = transFormat.parse(from);



		
		System.out.println("체크포인트1");
		vo.setEmail(req.getParameter("mem_email"));
		vo.setBirth(birth);
		vo.setGender(Integer.parseInt(req.getParameter("mem_gender")));
		vo.setName(req.getParameter("mem_name"));
		vo.setPhone(req.getParameter("mem_phone"));
		vo.setPassword(req.getParameter("mem_pw"));
		
		memberService.insertMember(vo);
		System.out.println("체크포인트4");
		
		return "../../index";
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
		memberService.confirmID(email,password);
		System.out.println("MemberController : " + email+"/"+password);
		return "product/getProductList";
	}

}
