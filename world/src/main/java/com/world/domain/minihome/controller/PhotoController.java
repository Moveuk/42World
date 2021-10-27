package com.world.domain.minihome.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;



import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.world.domain.minihome.impl.PhotoService;
import com.world.domain.minihome.vo.PhotoVO;

@Controller
public class PhotoController {
	
	@Autowired
	PhotoService photoService;
	
	@Inject
	SqlSession sqlSession;
	
	@RequestMapping("/photo")
	public String photoFolderList(PhotoVO vo, Model model) {
		System.out.println("run PhotoController photo()");
		
		

		model.addAttribute("photoFolderList", photoService.photo());
		model.addAttribute("photoList", photoService.firstPhotoList());
		return "/minihome/tab/photo";
	}
	@ResponseBody
	@RequestMapping(value="/photoList")
	public String photoList(HttpServletRequest request,PhotoVO vo, Model model,String folder) {
		System.out.println("run PhotoController photoList()");
		System.out.println(folder);
		model.addAttribute("photoList", photoService.photoList(vo));
		
		/*
		 * PhotoVO dd = sqlSession.selectOne("PhotoDAO.photoList1",folder);
		 * System.out.println(dd.getTitle());
		 */
		
		return folder;
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
	
//	@RequestMapping("/photo/insertPhoto")
//	public String insertPhoto(HttpServletRequest req, PhotoVO vo, Model model) throws IllegalStateException{
//		
//		System.out.println("run PhotoController insertPhoto()");
//		
//		
//		System.out.println("VisitorLogController insertVisitorLog : "+vo.toString() );
//		
//		photoService.insertPhoto(vo);
//		model.addAttribute("photoList", photoService.getPhotoList());
//		return "/minihome/photoList";
//	}

}
