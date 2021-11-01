package com.world.domain.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.world.domain.main.impl.DotoryService;
import com.world.domain.main.vo.DotoryVO;

@Controller
public class DotoryController {

	@Autowired
	DotoryService dotoryService;
	
	@RequestMapping(value="/insertDotory")
	@ResponseBody
	public String insertDotory(HttpServletRequest req, DotoryVO vo,Model model) throws Exception{
		
		
		
		  System.out.println("DotoryController insertDotory start : " );
		  dotoryService.insertDotory(vo);
		  
		 		
		return "dotory ok";
	}
}
