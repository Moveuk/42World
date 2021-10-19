package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FriendCommentVO {
	
	private int commentId;
	private String writerId;
	private String name;
	private String nickname;
	private String friedComment;
	private Date writeDate;
	
}
