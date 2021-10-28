package com.world.domain.minihome.controller;


import java.util.ArrayList;
import java.util.List;

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
<<<<<<< Updated upstream
	@RequestMapping(value="/photoList",produces = "application/text; charset=UTF-8")
	public List<PhotoVO> photoList(PhotoVO vo, Model model)throws Exception{
		System.out.println("run PhotoController photoList()");
		List<PhotoVO> photoVo = photoService.photoList(vo);
		System.out.println("PhotoController photoVo : "+ photoVo);
		String folder=null;
		List<PhotoVO> list = new ArrayList<PhotoVO>();
		for(int i=0;i<photoVo.size();i++) {

			//folder = photoVo.get(i).getFolder();
			list.add(photoVo.get(i));
		}
		
		//model.addAttribute("photoList", photoVo);
		//return "{\"folder\":\"" + folder + "\"}";
		
System.out.println("========= photoVo size:: "+photoVo.size());
		return list;
=======
	@RequestMapping(value="/photoList")
	public String photoList(PhotoVO vo)throws Exception{
		photoService.photoList(vo);
		return "photoList";
>>>>>>> Stashed changes
	}
}
