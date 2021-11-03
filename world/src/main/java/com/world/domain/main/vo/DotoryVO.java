package com.world.domain.main.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DotoryVO {

	private int dotoryno;
	private Date buydate;
	private String division;
	private int memberNo;
	private String giftto;
	private int giftstate;
	private String category;
	private String name;
	private int price;
	
	public DotoryVO(int dotoryno, Date buydate, String division, int memberNo, String giftto, int giftstate,
			String category, String name, int price) {
		super();
		this.dotoryno = dotoryno;
		this.buydate = buydate;
		this.division = division;
		this.memberNo = memberNo;
		this.giftto = giftto;
		this.giftstate = giftstate;
		this.category = category;
		this.name = name;
		this.price = price;
	}

}
