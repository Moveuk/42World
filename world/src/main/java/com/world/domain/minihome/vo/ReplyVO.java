package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReplyVO {

	private String replyNo;
	private String memberNo;
	private String writerId;
	private Date writeDate;
	private String replyContent;
	private String photoNo;
	private String videoNo;
	private String boardNo;
	private String name;
	@Override
	public String toString() {
		return "ReplyVO [name="+name+",replyNo=" + replyNo + ", memberNo=" + memberNo + ", writerId=" + writerId + ", writeDate="
				+ writeDate + ", replyContent=" + replyContent + ", photoNo=" + photoNo + ", videoNo=" + videoNo
				+ ", boardNo=" + boardNo + ", visitorLogNo=" + visitorLogNo + "]";
	}
	private int visitorLogNo;
	public ReplyVO() {}
	public ReplyVO(String replyNo, String memberNo, String writerId, Date writeDate, String replyContent, String photoNo,
			String videoNo, String boardNo, int visitorLogNo,String name) {
		super();
		this.replyNo = replyNo;
		this.memberNo = memberNo;
		this.writerId = writerId;
		this.writeDate = writeDate;
		this.replyContent = replyContent;
		this.photoNo = photoNo;
		this.videoNo = videoNo;
		this.boardNo = boardNo;
		this.visitorLogNo = visitorLogNo;
		this.name=name;
	}
	
}
