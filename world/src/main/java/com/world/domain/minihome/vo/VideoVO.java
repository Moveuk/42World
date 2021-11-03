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
	private String folder;
	private String title;
	private String fileName;
	private String videoContent;
	private int cnt;
	
	public VideoVO() {}
	public VideoVO(int videoNo, int memberNo, Date uploadDate, String folder, String title, String fileName,
			String videoContent, int cnt) {
		super();
		this.videoNo = videoNo;
		this.memberNo = memberNo;
		this.uploadDate = uploadDate;
		this.folder = folder;
		this.title = title;
		this.fileName = fileName;
		this.videoContent = videoContent;
		this.cnt = cnt;
	}
	
}
