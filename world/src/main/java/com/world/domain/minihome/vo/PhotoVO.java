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
	private String filename;
	private String photoContent;
	private int cnt;
	private String folder;
	private int value;
	@Override
	public String toString() {
		return "PhotoVO [photoNo=" + photoNo + ", userId=" + userId + ", uploadDate=" + uploadDate + ", title=" + title
				+ ", filename=" + filename + ", photoContent=" + photoContent + ", cnt=" + cnt + ", folder=" + folder
				+ ", value=" + value + "]";
	}
	
	
	
	
}
