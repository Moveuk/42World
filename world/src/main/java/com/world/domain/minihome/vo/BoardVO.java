package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
	
	private int boardNo;
	private String userId;
	private Date uploadDate;
	private String folder;
	private String title;
	private String location;
	private String content;
	private int cnt;
	
}
