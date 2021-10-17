package com.world.domain.main.vo;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	
	private String userid;
	private String password;
	private String email;
	private String name;
	private Date birth;
	private String gender;
	private String title;
	private String subtitle;
	private String propic;
	private int photo;
	private int board;
	private int video;
	
	private String searchCondition;
	private String searchKeyword;
	private MultipartFile uploadFile;
	
}
