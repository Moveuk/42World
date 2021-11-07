package com.world.domain.main.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductVO {

	private int marketId;
	private String memberNo;
	private String category;
	private String name;
	private int price;
	private String fileName;
	private String rgb;
	private String font;

}
