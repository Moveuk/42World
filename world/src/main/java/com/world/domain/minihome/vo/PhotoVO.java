package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.ToString;

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
	public int getPhotoNo() {
		return photoNo;
	}
	public void setPhotoNo(int photoNo) {
		this.photoNo = photoNo;
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
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getPhotoContent() {
		return photoContent;
	}
	public void setPhotoContent(String photoContent) {
		this.photoContent = photoContent;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
}
