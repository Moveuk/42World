package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReplyVO {
	
	private int replyNo;
	private String ownerId;
	private String writerId;
	private String type;
	private Date writeDate;
	private int contentId;
	private String content;
	
}
