package com.world.domain.minihome.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MinihomeController {
	
	@RequestMapping("/openMinihome")
	public String openMinihome() {
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
	
	
	@RequestMapping("/video")
	public String loadVideo() {
		return "/minihome/tab/video";
	}
	
	@RequestMapping("/board")
	public String loadBoard() {
		return "/minihome/tab/board";
	}
}
