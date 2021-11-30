package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ItemVO {
	
	private int itemNo;
	private Date buydate;
	private int memberNo;
	private String division;
	private int giftTo;
	private int giftState;
	private String category;
	private String name;
	private int price;
	private String filename;
	private String rgb;
	private String font;
	private int use;
	
}
