package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class VisitorLogVO {
	
	private int visitorLogNo;
	private String ownerId;
	private String writerId;
	private Date writeDate;
	private String type;
	private String content;
	
}
