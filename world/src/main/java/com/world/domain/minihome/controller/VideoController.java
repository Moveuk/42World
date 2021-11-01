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

import com.world.domain.minihome.impl.VideoService;
import com.world.domain.minihome.vo.VideoVO;

@Controller
public class VideoController {

	@Autowired
	VideoService videoService;
	
	@Inject
	SqlSession sqlSession;

	@RequestMapping("/video")
	public String videoFirstList(VideoVO vo, Model model) {
		System.out.println("run VideoController videoFirstList()");

		model.addAttribute("videoFolderList", videoService.videoFolder());
		model.addAttribute("firstVideoList", videoService.firstVideoList());
		return "/minihome/tab/video";
	}
	@RequestMapping(value = "/videoList")
	@ResponseBody
	public List<VideoVO> videoList(VideoVO vo,Model model) throws Exception{
		System.out.println("run VideoController videoList()");
		System.out.println("vo.getFolder:"+vo.getFolder());
		List<VideoVO> videoVO = videoService.videoList(vo);
		System.out.println("videoVO.getFolder:"+videoVO.get(0).getFolder());
		System.out.println("VideoController videoVO : " + videoVO);

		String folder = null;
		List<VideoVO> list=new ArrayList<VideoVO>();
		System.out.println("========= videoVO size:: " + videoVO.size());
		for(int i = 0; i<videoVO.size();i++) {
			  folder = videoVO.get(i).getFolder();
			list.add(videoVO.get(i));
		}

		System.out.println("========= list size:: " + list.size());
		
		return list;
	}
	

	@RequestMapping(value ="/videoDelete")
	public String videoDelete(int videoNo) throws Exception{
		videoService.videoDelete(videoNo);
		return "redirect:openMinihome";
	}
}
