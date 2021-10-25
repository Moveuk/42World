package com.world.domain.minihome.controller;


import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.world.domain.minihome.impl.PhotoService;
import com.world.domain.minihome.vo.PhotoVO;

@Controller
public class PhotoController {
	
	@Autowired
	PhotoService photoService;
	

	@RequestMapping("/photo")
	public String getPhotoList(PhotoVO vo, Model model) {
		System.out.println("run PhotoController getPhotoList()");
		
	

		model.addAttribute("photoFolderList", photoService.getPhotoFolderList());
		model.addAttribute("photoList", photoService.getPhotoList());
		
		return "/minihome/tab/photo";
	}

	
//	@ResponseBody
//	@RequestMapping(value="/photo",method=RequestMethod.GET)
//	public String getPhotoList(PhotoVO vo, Model model,@RequestParam("kind") String kind) {
//		System.out.println("run PhotoController getPhotoList()");
//		
//		model.addAttribute("photoList", photoService.getPhotoList());
//		
//		return "/minihome/tab/photo";
//	}
	
	@RequestMapping("/photo/insertPhoto")
	public String insertPhoto(HttpServletRequest req, PhotoVO vo, Model model) throws IllegalStateException{
		
		System.out.println("run PhotoController insertPhoto()");
		
		
//		System.out.println("VisitorLogController insertVisitorLog : "+vo.toString() );
		
		photoService.insertPhoto(vo);
		model.addAttribute("photoList", photoService.getPhotoList());
		return "/minihome/photoList";
	}

}
