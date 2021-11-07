package com.world.domain.main.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ItemVO {

	private int itemNo;
	private Date buyDate;
	private int memberNo;
	private String division;
	private int giftTo;
	private int giftState;
	private String category;
	private String name;
	private int price;
	private String fileName;
	private String rgb;
	private String font;
	private int use;

}
