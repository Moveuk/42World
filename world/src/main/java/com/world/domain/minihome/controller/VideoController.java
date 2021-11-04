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
import com.world.domain.minihome.vo.PhotoVO;
import com.world.domain.minihome.vo.VideoVO;
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

	@RequestMapping(value = "openMinihome/videoList")
	@ResponseBody
	public List<VideoVO> videoList(VideoVO vo, Model model) throws Exception {
		
		
		System.out.println("run VideoController videoList()");
		System.out.println("vo.getFolder:" + vo.getFolder());

		List<VideoVO> videoVo = videoService.videoList(vo);
		System.out.println("videoVo.getFolder:" + videoVo.get(0).getFolder());
		System.out.println("VideoController videoVo : " + videoVo);

		String folder = null;
		List<VideoVO> list = new ArrayList<VideoVO>();

		System.out.println("========= videoVo size:: " + videoVo.size());
		for (int i = 0; i < videoVo.size(); i++) {

			folder = videoVo.get(i).getFolder();
			list.add(videoVo.get(i));
		}
		model.addAttribute("videoList", videoVo);
		System.out.println("========= list size:: " + list.size());
		return list;
	}

	@RequestMapping(value = "openMinihome/deleteVideo")
	@ResponseBody
	public List<VideoVO> deleteVideo(VideoVO vo,Model model, String folder) throws Exception {
		System.out.println("run VideoController deleteVideo()");
		System.out.println("VideoController videoDelete videoNo:" + vo);
		videoService.deleteVideo(vo);
		folder = vo.getFolder();

		List<VideoVO> videoVo = videoService.videoList(vo);

		List<VideoVO> list = new ArrayList<VideoVO>();
		System.out.println("========= videoVo size:: " + videoVo.size());
		for (int i = 0; i < videoVo.size(); i++) {

			list.add(videoVo.get(i));
			folder = videoVo.get(i).getFolder();
		}
		model.addAttribute("videoList", videoVo);
		return list;
	}
	
	@RequestMapping(value = "openMinihome/updateVideo")
	@ResponseBody
	public List<VideoVO> updateVideo(VideoVO vo, Model model,String folder) throws Exception {
		System.out.println("ajax잘들어옴!!");
		videoService.updateVideo(vo);
		System.out.println(folder);

		System.out.println("run VideoController videoList()");
		System.out.println("vo.getFolder:" + vo.getFolder());

		List<VideoVO> videoVo = videoService.videoList(vo);

		System.out.println("VideoController videoVo : " + videoVo);

		List<VideoVO> list = new ArrayList<VideoVO>();

		System.out.println("========= videoVo size:: " + videoVo.size());
		for (int i = 0; i < videoVo.size(); i++) {

			folder = videoVo.get(i).getFolder();
			list.add(videoVo.get(i));
			System.out.println("jeonghwan!!:" + videoVo.get(i).getVideoContent());
		}
		model.addAttribute("videoList", videoVo);
		System.out.println("========= list size:: " + list.size());
		return list;
	}
}
