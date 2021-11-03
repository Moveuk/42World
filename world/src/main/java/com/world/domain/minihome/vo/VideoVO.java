package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

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
	public int getVideoNo() {
		return videoNo;
	}
	public void setVideoNo(int videoNo) {
		this.videoNo = videoNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public Date getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}
	public String getFolder() {
		return folder;
	}
	public void setFolder(String folder) {
		this.folder = folder;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getVideoContent() {
		return videoContent;
	}
	public void setVideoContent(String videoContent) {
		this.videoContent = videoContent;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
}
