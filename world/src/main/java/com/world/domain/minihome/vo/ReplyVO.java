package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReplyVO {

	private String replyNo;
	private String ownerId;
	private String writerId;
	private Date writeDate;
	private String replyContent;
	private int photoNo;
	private int videoNo;
	private int boardNo;
	private int visitorLogNo;
}
