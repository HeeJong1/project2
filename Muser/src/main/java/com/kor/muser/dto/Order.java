package com.kor.muser.dto;

import java.sql.Date;
			
public class Order {	//주문
	
	private int orderNo;	//주문번호
	private int gdsNo;		//상품번호
	private Date date;	//날짜
	private String shippingCode;	//배송코드
	
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getGdsNo() {
		return gdsNo;
	}
	public void setGdsNo(int gdsNo) {
		this.gdsNo = gdsNo;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getShippingCode() {
		return shippingCode;
	}
	public void setShippingCode(String shippingCode) {
		this.shippingCode = shippingCode;
	}
	
	@Override
	public String toString() {
		return "Order [orderNo=" + orderNo + ", gdsNo=" + gdsNo + ", date=" + date + ", shippingCode=" + shippingCode
				+ "]";
	}
	
	
	
	
	
	
	}
