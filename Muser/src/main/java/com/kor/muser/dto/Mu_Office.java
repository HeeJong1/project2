package com.kor.muser.dto;

import java.sql.Date;

public class Mu_Office { // 연습실

	private int ofNo; // 연습실 번호
	private String ofAddr1; // 연습실 주소1
	private String ofAddr2; // 연습실 주소2
	private String ofAddr3; // 연습실 주소3
	private String repName; // 업주 이름
	private String repPhone;// 업주전화번호
	private int ofPrice; // 대여료
	private Date ofDate; // 등록날짜
	private int officeHit; // 조회수
	// 추가 부분
	private String ofName;
	private String ofDesc;
	// 연습실 이미지들
	private String ofImg1;
	private String ofImg2;
	private String ofImg3;
	private String ofImg4;
	private String ofImg5;
	private String ofImg6;
	private String ofImg7;
	private String ofImg8;

	public int getOfNo() {
		return ofNo;
	}

	public void setOfNo(int ofNo) {
		this.ofNo = ofNo;
	}

	public String getOfAddr1() {
		return ofAddr1;
	}

	public void setOfAddr1(String ofAddr1) {
		this.ofAddr1 = ofAddr1;
	}

	public String getOfAddr2() {
		return ofAddr2;
	}

	public void setOfAddr2(String ofAddr2) {
		this.ofAddr2 = ofAddr2;
	}

	public String getOfAddr3() {
		return ofAddr3;
	}

	public void setOfAddr3(String ofAddr3) {
		this.ofAddr3 = ofAddr3;
	}

	public String getRepName() {
		return repName;
	}

	public void setRepName(String repName) {
		this.repName = repName;
	}

	public String getRepPhone() {
		return repPhone;
	}

	public void setRepPhone(String repPhone) {
		this.repPhone = repPhone;
	}

	public int getOfPrice() {
		return ofPrice;
	}

	public void setOfPrice(int ofPrice) {
		this.ofPrice = ofPrice;
	}

	public Date getOfDate() {
		return ofDate;
	}

	public void setOfDate(Date ofDate) {
		this.ofDate = ofDate;
	}

	public int getOfficeHit() {
		return officeHit;
	}

	public void setOfficeHit(int officeHit) {
		this.officeHit = officeHit;
	}

	public String getOfName() {
		return ofName;
	}

	public void setOfName(String ofName) {
		this.ofName = ofName;
	}

	public String getOfDesc() {
		return ofDesc;
	}

	public void setOfDesc(String ofDesc) {
		this.ofDesc = ofDesc;
	}

	public String getOfImg1() {
		return ofImg1;
	}

	public void setOfImg1(String ofImg1) {
		this.ofImg1 = ofImg1;
	}

	public String getOfImg2() {
		return ofImg2;
	}

	public void setOfImg2(String ofImg2) {
		this.ofImg2 = ofImg2;
	}

	public String getOfImg3() {
		return ofImg3;
	}

	public void setOfImg3(String ofImg3) {
		this.ofImg3 = ofImg3;
	}

	public String getOfImg4() {
		return ofImg4;
	}

	public void setOfImg4(String ofImg4) {
		this.ofImg4 = ofImg4;
	}

	public String getOfImg5() {
		return ofImg5;
	}

	public void setOfImg5(String ofImg5) {
		this.ofImg5 = ofImg5;
	}

	public String getOfImg6() {
		return ofImg6;
	}

	public void setOfImg6(String ofImg6) {
		this.ofImg6 = ofImg6;
	}

	public String getOfImg7() {
		return ofImg7;
	}

	public void setOfImg7(String ofImg7) {
		this.ofImg7 = ofImg7;
	}

	public String getOfImg8() {
		return ofImg8;
	}

	public void setOfImg8(String ofImg8) {
		this.ofImg8 = ofImg8;
	}

	@Override
	public String toString() {
		return "Mu_Office [ofNo=" + ofNo + ", ofAddr1=" + ofAddr1 + ", ofAddr2=" + ofAddr2 + ", ofAddr3=" + ofAddr3 + ", repName=" + repName
				+ ", repPhone=" + repPhone + ", ofPrice=" + ofPrice + ", ofDate=" + ofDate + ", officeHit=" + officeHit + ", ofName=" + ofName
				+ ", ofDesc=" + ofDesc + ", ofImg1=" + ofImg1 + ", ofImg2=" + ofImg2 + ", ofImg3=" + ofImg3 + ", ofImg4=" + ofImg4 + ", ofImg5="
				+ ofImg5 + ", ofImg6=" + ofImg6 + ", ofImg7=" + ofImg7 + ", ofImg8=" + ofImg8 + "]";
	}

}
