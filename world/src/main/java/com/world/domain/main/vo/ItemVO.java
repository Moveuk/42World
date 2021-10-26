package com.world.domain.main.vo;

import java.sql.Date;

public class ItemVO {

	private int itemno;
	private Date buydate;
	private String userid;
	private String division;
	private String giftto;
	private int giftstate;
	private String category;
	private String name;
	private int price;
	private String location;
	private String rgb;
	private String font;
	private int use;

	public int getItemno() {
		return itemno;
	}

	public void setItemno(int itemno) {
		this.itemno = itemno;
	}

	public Date getBuydate() {
		return buydate;
	}

	public void setBuydate(Date buydate) {
		this.buydate = buydate;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
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

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getRgb() {
		return rgb;
	}

	public void setRgb(String rgb) {
		this.rgb = rgb;
	}

	public String getFont() {
		return font;
	}

	public void setFont(String font) {
		this.font = font;
	}

	public int getUse() {
		return use;
	}

	public void setUse(int use) {
		this.use = use;
	}

}
