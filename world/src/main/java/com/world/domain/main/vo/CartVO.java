package com.world.domain.main.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartVO {

	private int cartNo;
	private Date resDate;
	private int memberNo;
	private String category;
	private String name;
	private int price;
	private String fileName;
	private String rgb;
	private String font;

	public CartVO() {}
	
	public CartVO(int price, String name, String category) {
		this.price=price;
		this.name=name;
		this.category=category;
	}
	
	

	

}
