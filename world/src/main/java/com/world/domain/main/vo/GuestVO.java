package com.world.domain.main.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class GuestVO {

	private int guestNo;
	private int visitTo;
	private int visitFrom;
	private Date visitDate;

	

	

}
