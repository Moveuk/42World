package com.world.domain.minihome.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.minihome.impl.VisitorLogService;
import com.world.domain.minihome.vo.VisitorLogVO;

@Controller
@RequestMapping(value = "/{userUrl}")
public class VisitorLogController {
	
	@Autowired
	VisitorLogService visitorLogService;
	
	@RequestMapping("/visitors")
	public String getVisitorLogList(VisitorLogVO vo, Model model) {
		
		model.addAttribute("visitorLogList", visitorLogService.getVisitorLogList());
		return "/minihome/tab/visitors";
	}
	
	@RequestMapping("/visitors/insertVisitorsLog")
	public String insertVisitorLog(HttpServletRequest req, VisitorLogVO vo, Model model) throws IllegalStateException{
		
		System.out.println("VisitorLogController insertVisitorLog start : " );
		
		visitorLogService.insertVisitorLog(vo);
		model.addAttribute("VisitorLogList", visitorLogService.getVisitorLogList());
		return "/minihome/tab/visitors";
	}
	
	@RequestMapping("/visitors/deleteVisitorLog")
	public String deleteVisitorLog(VisitorLogVO vo) {
		visitorLogService.deleteVisitorLog(vo);
		return "/visitors";
	}
	

}
