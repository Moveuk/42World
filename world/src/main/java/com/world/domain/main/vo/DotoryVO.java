package com.world.domain.main.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DotoryVO {

	private int dotoryNo;
	private Date buyDate;
	private String division;
	private int memberNo;
	private int giftTo;
	private int giftState;
	private String category;
	private String name;
	private int price;
	
	public DotoryVO(int dotoryNo, Date buyDate, String division, int memberNo, int giftTo, int giftState,
			String category, String name, int price) {
		super();
		this.dotoryNo = dotoryNo;
		this.buyDate = buyDate;
		this.division = division;
		this.memberNo = memberNo;
		this.giftTo = giftTo;
		this.giftState = giftState;
		this.category = category;
		this.name = name;
		this.price = price;
	}

}
