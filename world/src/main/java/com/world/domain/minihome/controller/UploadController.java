package com.world.domain.minihome.controller;

import java.io.File;
import java.io.IOException;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.world.domain.minihome.impl.PhotoService;

@Controller
public class UploadController {
	
	PhotoService photoService;
	@ResponseBody
	@RequestMapping(value="/upload")
	public ModelAndView upload(MultipartFile file, Model model,ModelAndView mv,MultipartHttpServletRequest request) throws IllegalStateException,IOException{
	
		file = request.getFile("uploadfile");
		
		
		String fileName=file.getOriginalFilename();
		if(!file.getOriginalFilename().isEmpty()) {
			file.transferTo(new File("E:\\lib\\42World\\42World\\world\\src\\main\\webapp\\resources\\photo",fileName));
//			model.addAttribute("msg","File uploaded successfully");
//			model.addAttribute("fileName",fileName);
//			mv.setViewName("/photo");
			System.out.println("run upload");
			model.addAttribute("msg","File uploaded successfully");
			mv.addObject("fileName",fileName);
			
			mv.setViewName("/minihome/minihome_main");
		}else {
			model.addAttribute("msg","can't use this file");
		}
		return mv;
		
	}
	
	@RequestMapping("/uploadPhoto")
	public String uploadPhoto() {
		return "/minihome/tab/addPhoto";
	}
	
	

//	@RequestMapping(value="/upload",method=RequestMethod.GET)
//	public void upload(MultipartFile uploadfile) {
//		logger.info("upload()");
//	}
//	
//	@RequestMapping(value="/upload",method=RequestMethod.POST)
//	public String upload(@RequestParam("uploadFile")MultipartFile file, Model model) throws IllegalStateException,IOException{
//	
//		String fileName=file.getOriginalFilename();
//		if(!file.getOriginalFilename().isEmpty()) {
//			file.transferTo(new File(FILE_PATH,fileName));
//			model.addAttribute("msg","File uploaded successfully");
//			model.addAttribute("fileName",fileName);
//		}else {
//			model.addAttribute("msg","can't use this file");
//		}
//		return null;
//		
//	}
}
