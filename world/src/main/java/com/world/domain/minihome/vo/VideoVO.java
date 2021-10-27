package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class VideoVO {
	
	private int videoNo;
	private int memberNo;
	private Date uploadDate;
	private Integer folderNo;
	private String title;
	private String filename;
	private String content;
	private int cnt;
	
}
