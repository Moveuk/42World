package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PhotoVO {
	
	private int photoNo;
	private String userId;
	private Date uploadDate;
	private String title;
	private String location;
	private String photoContent;
	private int cnt;
	
	
	
	
}
