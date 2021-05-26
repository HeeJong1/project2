package com.kor.muser.dto;

import java.sql.Date;

//판매물건
public class Mu_Goods {
	private int gdsNo;	//상품번호
	private String gdsName;	// 상품이름
	private int gdsPrice;	// 상품가격
	private String gdsImg1;	// 상품사진
	private int gdsAmount;	// 상품재고
	private Date gdsDate; //등록일자
	private String cateCode; //카테고리 코드
	
	private String gdsImg2; // 상품아이콘사진2 
	private String gdsImg3; // 상품아이콘사진3
	private String gdsImg4; // 상품아이콘사진4 
	private String gdsImg5; // 상품상세사진
	
	private String gdsNational; // 제조국
	private String gdsBrand; 	// 브랜드명
	private String gdsPackage;  // 패키지
	
	public int getGdsNo() {
		return gdsNo;
	}
	public void setGdsNo(int gdsNo) {
		this.gdsNo = gdsNo;
	}
	public String getGdsName() {
		return gdsName;
	}
	public void setGdsName(String gdsName) {
		this.gdsName = gdsName;
	}
	public int getGdsPrice() {
		return gdsPrice;
	}
	public void setGdsPrice(int gdsPrice) {
		this.gdsPrice = gdsPrice;
	}
	public String getGdsImg1() {
		return gdsImg1;
	}
	public void setGdsImg1(String gdsImg1) {
		this.gdsImg1 = gdsImg1;
	}
	public int getGdsAmount() {
		return gdsAmount;
	}
	public void setGdsAmount(int gdsAmount) {
		this.gdsAmount = gdsAmount;
	}
	public Date getGdsDate() {
		return gdsDate;
	}
	public void setGdsDate(Date gdsDate) {
		this.gdsDate = gdsDate;
	}
	public String getCateCode() {
		return cateCode;
	}
	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}
	public String getGdsImg2() {
		return gdsImg2;
	}
	public void setGdsImg2(String gdsImg2) {
		this.gdsImg2 = gdsImg2;
	}
	public String getGdsImg3() {
		return gdsImg3;
	}
	public void setGdsImg3(String gdsImg3) {
		this.gdsImg3 = gdsImg3;
	}
	public String getGdsImg4() {
		return gdsImg4;
	}
	public void setGdsImg4(String gdsImg4) {
		this.gdsImg4 = gdsImg4;
	}
	public String getGdsImg5() {
		return gdsImg5;
	}
	public void setGdsImg5(String gdsImg5) {
		this.gdsImg5 = gdsImg5;
	}
	public String getGdsNational() {
		return gdsNational;
	}
	public void setGdsNational(String gdsNational) {
		this.gdsNational = gdsNational;
	}
	public String getGdsBrand() {
		return gdsBrand;
	}
	public void setGdsBrand(String gdsBrand) {
		this.gdsBrand = gdsBrand;
	}
	public String getGdsPackage() {
		return gdsPackage;
	}
	public void setGdsPackage(String gdsPackage) {
		this.gdsPackage = gdsPackage;
	}
	@Override
	public String toString() {
		return "Mu_Goods [gdsNo=" + gdsNo + ", gdsName=" + gdsName + ", gdsPrice=" + gdsPrice + ", gdsImg1=" + gdsImg1
				+ ", gdsAmount=" + gdsAmount + ", gdsDate=" + gdsDate + ", cateCode=" + cateCode + ", gdsImg2="
				+ gdsImg2 + ", gdsImg3=" + gdsImg3 + ", gdsImg4=" + gdsImg4 + ", gdsImg5=" + gdsImg5 + ", gdsNational="
				+ gdsNational + ", gdsBrand=" + gdsBrand + ", gdsPackage=" + gdsPackage + "]";
	}
		
}
