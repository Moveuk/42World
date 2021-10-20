package com.world.domain.minihome.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.minihome.impl.PhotoService;
import com.world.domain.minihome.vo.PhotoVO;
import com.world.domain.minihome.vo.VisitorLogVO;

@Controller
public class PhotoController {
	
	@Autowired
	PhotoService photoService;
	
	@RequestMapping("/photo")
	public String getPhotoList(PhotoVO vo, Model model) {
		System.out.println("run PhotoController getPhotoList()");
		
		model.addAttribute("photoList", photoService.getPhotoList());
		return "/minihome/tab/photo";
	}
	
	
	@RequestMapping("/photo/insertPhoto")
	public String insertPhoto(HttpServletRequest req, PhotoVO vo, Model model) throws IllegalStateException{
		
		System.out.println("run PhotoController insertPhoto()");
		
		
//		System.out.println("VisitorLogController insertVisitorLog : "+vo.toString() );
		
		photoService.insertPhoto(vo);
		model.addAttribute("photoList", photoService.getPhotoList());
		return "/minihome/photoList";
	}

}
