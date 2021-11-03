package com.world.domain.main.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVO {

	private int memberNo;
	private String email;
	private String password;
	private String name;
	private Date birth;
	private int gender;
	private String title;
	private String subtitle;
	private String propic;
	private int photo;
	private int board;
	private int video;
	private String phone;
	private String userUrl;
	
	private String searchCondition;
	private String searchKeyword;
	private MultipartFile uploadFile;
	
	private int guestcount;
	private int friendcount;
	private int itemcount;
	private int dotorycount;
	private int cartcount;
	private int totalguestcount;
	
}
