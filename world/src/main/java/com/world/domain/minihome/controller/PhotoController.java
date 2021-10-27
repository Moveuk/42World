package com.world.domain.minihome.controller;


import javax.inject.Inject;

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
	public int photoList(PhotoVO vo)throws Exception{
		photoService.photoList(vo);
		return "photoList";
	}
//	@ResponseBody
//	@RequestMapping(value="/photoList")
//	public int photoList(HttpServletRequest request,PhotoVO vo, Model model,int value) {
//		
//		  System.out.println("run PhotoController photoList()");
//		  System.out.println("controller value:"+value);
//		  model.addAttribute("photoList", photoService.photoList(vo));
//		  System.out.println("controller vo:"+vo.toString());
//		 
//		
//		//  List<Object> dd = sqlSession.selectList("PhotoDAO.photoList",value);
//		 //System.out.println(dd.get(0).toString());
//		  PhotoVO pho = sqlSession.selectOne("PhotoDAO.photoList",value);
//		  System.out.println("chk@@:"+pho.getPhotoContent());
//		 
//		HttpSession session = request.getSession();
//		session.setAttribute("value", value);
//		System.out.println("photoList value:"+value);
//		return value;
//	}
//	---
//	@ResponseBody
//	@RequestMapping(value="/photoList2")
//	public List<PhotoVO> photoList2(HttpServletRequest request, Model model,int value) {
//		/*
//		 * System.out.println("run PhotoController photoList()");
//		 * System.out.println("controller value:"+value);
//		 * model.addAttribute("photoList", photoService.photoList(vo));
//		 * System.out.println("controller vo:"+vo.toString());
//		 */
//		List<PhotoVO> vo=null;
//		System.out.println("photoList2도착");
//		HttpSession session = request.getSession();
//		System.out.println("sessionvalue:"+session.getAttribute("value"));
//		value=(int)session.getAttribute("value");
//		//vo=photoService.photoList2(value);
//		
//		model.addAttribute("photoList", photoService.photoList2(value));
//		/*
//		 * PhotoVO dd = sqlSession.selectOne("PhotoDAO.photoList1",folder);
//		 * System.out.println(dd.getTitle());
//		 */
//		System.out.println("photoList2 value:"+value);
//		System.out.println("photoList2 vo:"+vo.toString());
//		return vo;
//	}

	

	
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
