package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PhotoVO {
	
	private int photoNo;
	private int memberNo;
	private Date uploadDate;
	private String folder;
	private String title;
	private String filename;
	private String photoContent;
	private int cnt;
	private String value;

	public PhotoVO() {}
	public PhotoVO(int photoNo,int memberNo,String value,Date uploadDate,int cnt,String filename,String title,String photoContent,String folder) {
		this.photoContent=photoContent;
		this.photoNo=photoNo;
		this.memberNo=memberNo;
		this.value=value;
		this.uploadDate=uploadDate;
		this.cnt=cnt;
		this.filename=filename;
		this.title=title;
		this.folder=folder;
	}
}
