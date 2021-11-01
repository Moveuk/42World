package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class VideoVO {
	
	private int videoNo;
	private String memberNo;
	private Date uploadDate;
	private String folder;
	private String title;
	private String fileName;
	private String videoContent;
	private int cnt;
	@Override
	public String toString() {
		return "VideoVO [videoNo=" + videoNo + ", memberNo=" + memberNo + ", uploadDate=" + uploadDate + ", folder="
				+ folder + ", title=" + title + ", fileName=" + fileName + ", videoContent=" + videoContent + ", cnt="
				+ cnt + "]";
	}
	public VideoVO() {}
	public VideoVO(int videoNo, String memberNo, Date uploadDate, String folder, String title, String fileName,
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
