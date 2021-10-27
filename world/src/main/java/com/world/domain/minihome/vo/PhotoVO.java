package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PhotoVO {
	
	private int photoNo;
	private int memberNo;
	private Date uploadDate;
	private String folder;
	private String title;
	private String filename;
	private String photoContent;
	private int cnt;
	
	
	
	
}
