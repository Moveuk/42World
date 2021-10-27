package com.world.domain.main.vo;

import java.sql.Date;

public class GuestVO {

	private int guestno;
	private int visitto;
	private int visitfrom;
	private Date visitdate;

	public int getGuestno() {
		return guestno;
	}

	public void setGuestno(int guestno) {
		this.guestno = guestno;
	}

	public int getVisitto() {
		return visitto;
	}

	public void setVisitto(int visitto) {
		this.visitto = visitto;
	}

	public int getVisitfrom() {
		return visitfrom;
	}

	public void setVisitfrom(int visitfrom) {
		this.visitfrom = visitfrom;
	}

	public Date getVisitdate() {
		return visitdate;
	}

	public void setVisitdate(Date visitdate) {
		this.visitdate = visitdate;
	}

}
