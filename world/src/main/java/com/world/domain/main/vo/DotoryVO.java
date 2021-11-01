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
	public DotoryVO() {}
	@Override
	public String toString() {
		return "DotoryVO [dotoryno=" + dotoryno + ", buydate=" + buydate + ", division=" + division + ", memberNo="
				+ memberNo + ", giftto=" + giftto + ", giftstate=" + giftstate + ", category=" + category + ", name="
				+ name + ", price=" + price + "]";
	}

	public DotoryVO(int dotoryno, Date buydate, String division, String memberNo, String giftto, int giftstate,
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
