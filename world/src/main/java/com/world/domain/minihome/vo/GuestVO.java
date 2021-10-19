package com.world.domain.minihome.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class GuestVO {
	
	private int guestNo;
	private String visitTo;
	private String visitFrom;
	private Date visitDate;
	
	
}
