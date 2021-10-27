package com.world.domain.main.vo;

import java.sql.Date;

public class DotoryVO {

	private int dotoryno;
	private Date buydate;
	private String division;
	private String memberNo;
	private String giftto;
	private int giftstate;
	private String category;
	private String name;
	private int price;

	public int getDotoryno() {
		return dotoryno;
	}

	public void setDotoryno(int dotoryno) {
		this.dotoryno = dotoryno;
	}

	public Date getBuydate() {
		return buydate;
	}

	public void setBuydate(Date buydate) {
		this.buydate = buydate;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}
	
	public String getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}

	public String getGiftto() {
		return giftto;
	}

	public void setGiftto(String giftto) {
		this.giftto = giftto;
	}

	public int getGiftstate() {
		return giftstate;
	}

	public void setGiftstate(int giftstate) {
		this.giftstate = giftstate;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
