package com.world.domain.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.main.impl.GuestService;
import com.world.domain.main.vo.GuestVO;


@Controller
public class GuestController {
	
	@Autowired
	GuestService guestService;
	
	@RequestMapping("/guest/guestList")
	public String getGuestList(HttpServletRequest req, GuestVO vo, Model model) throws IllegalStateException{
		int visitTo = Integer.parseInt(req.getParameter("visitTo"));
		
		System.out.println("visitTo : " + visitTo);
		
		vo.setVisitto(visitTo);
		
		System.out.println("üũ����Ʈ1");
		
		model.addAttribute("guestList", guestService.getGuestList(vo));
		
		System.out.println("üũ����Ʈ2");
		
		return "/main/guest_list";
	}
	
	


}
