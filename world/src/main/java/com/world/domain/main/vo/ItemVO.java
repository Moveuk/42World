package com.world.domain.main.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ItemVO {

	private int itemno;
	private Date buydate;
	private int memberNo;
	private String division;
	private int giftto;
	private int giftstate;
	private String category;
	private String name;
	private int price;
	private String filename;
	private String rgb;
	private String font;
	private int use;

}
