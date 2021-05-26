package com.kor.muser.dto;

import java.sql.Date;

public class Reservation {// 예약

	private int resNo; // 예약번호
	private int ofNo; // 연습실 번호
	private String muId; // 회원아이디
	private String ofName; // 연습실 이름
	private String repName; // 업주 이름
	private Date bookDate; // 예약일
	private int ofPrice; // 비용

	public int getResNo() {
		return resNo;
	}

	public void setResNo(int resNo) {
		this.resNo = resNo;
	}

	public int getOfNo() {
		return ofNo;
	}

	public void setOfNo(int ofNo) {
		this.ofNo = ofNo;
	}

	public String getMuId() {
		return muId;
	}

	public void setMuId(String muId) {
		this.muId = muId;
	}

	public Date getBookDate() {
		return bookDate;
	}

	public void setBookDate(Date bookDate) {
		this.bookDate = bookDate;
	}

	public int getOfPrice() {
		return ofPrice;
	}

	public void setOfPrice(int ofPrice) {
		this.ofPrice = ofPrice;
	}

	public String getOfName() {
		return ofName;
	}

	public void setOfName(String ofName) {
		this.ofName = ofName;
	}

	public String getRepName() {
		return repName;
	}

	public void setRepName(String repName) {
		this.repName = repName;
	}

	@Override
	public String toString() {
		return "Reservation [resNo=" + resNo + ", ofNo=" + ofNo + ", muId=" + muId + ", ofName=" + ofName + ", repName=" + repName + ", bookDate="
				+ bookDate + ", ofPrice=" + ofPrice + "]";
	}

}
