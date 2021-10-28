package com.world.domain.minihome.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world.domain.minihome.impl.VideoService;
import com.world.domain.minihome.vo.VideoVO;

@Controller
@RequestMapping(value = "/{userUrl}")
public class VideoController {
	
	@Autowired
	VideoService VideoService;
	
	@RequestMapping("/video")
	public String getVideoListByFolder(VideoVO vo, Model model) {
		
		System.out.println(vo.getFolderNo());
		if (vo.getFolderNo()==null) {
			vo.setFolderNo(0);
			System.out.println("null check 성공 후 0 삽입 : "+vo.getFolderNo());
		}
		// 폴더 확인, 홈페이지 주인장(session-memberNo) 확인, 
		List<VideoVO> videoList = VideoService.getVideoListByFolder(vo);
		if(videoList != null) {
			System.out.print(vo.getVideoNo());
		model.addAttribute("videoList", videoList);
		// 게시글 번호 당 댓글 get
		}
		return "/minihome/tab/video";
	}
	
	@RequestMapping("/visitors/insertvideo")
	public String insertVideo(HttpServletRequest req, VideoVO vo, Model model) throws IllegalStateException{
		
		System.out.println("VideoController insertVideo start : " );
		
		VideoService.insertVideo(vo);
		model.addAttribute("VideoList", VideoService.getVideoListByFolder(vo));
		return "/minihome/tab/visitors";
	}
	
	@RequestMapping("/visitors/deleteVideo")
	public String deleteVideo(VideoVO vo) {
		VideoService.deleteVideo(vo);
		return "/visitors";
	}
	

}
