package com.world.domain.minihome.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.minihome.impl.VisitorLogService;
import com.world.domain.minihome.vo.VisitorLogVO;

@Controller
public class VisitorLogController {
	
	@Autowired
	VisitorLogService visitorLogService;
	
	@RequestMapping("/getVisitorLog")
	public String getVisitorLogList(VisitorLogVO vo, Model model) {
		
		model.addAttribute("visitorLogList", visitorLogService.getVisitorLogList());
		return "/minihome/VisitorLogList";
	}
	
	/*
	 * @RequestMapping("/getVisitorLog") public String getVisitorLog(VisitorLogVO
	 * vo, Model model) {
	 * 
	 * model.addAttribute("VisitorLog", visitorLogService.getVisitorLog()); return
	 * "/minihome/VisitorLogList"; }
	 */
	
	@RequestMapping("/insertVisitorLog")
	public String insertVisitorLog(HttpServletRequest req, VisitorLogVO vo, Model model) throws IllegalStateException{
		
		System.out.println("VisitorLogController insertVisitorLog start : " );
		
		String pwd = req.getParameter("pwd");
		System.out.println("pwd : "+pwd );
		
		System.out.println("VisitorLogController insertVisitorLog : "+vo.toString() );
		
		visitorLogService.insertVisitorLog(vo);
		model.addAttribute("VisitorLogList", visitorLogService.getVisitorLogList());
		return "/minihome/VisitorLogList";
	}

	@RequestMapping("/updateVisitorLog")
	public String updateVisitorLog(VisitorLogVO vo) {
		visitorLogService.updateVisitorLog(vo);
		return "getVisitorLogList.do";
	}
	
	@RequestMapping("/deleteVisitorLog")
	public String deleteVisitorLog(VisitorLogVO vo) {
		visitorLogService.deleteVisitorLog(vo);
		return "getVisitorLogList.do";
	}
	

}
