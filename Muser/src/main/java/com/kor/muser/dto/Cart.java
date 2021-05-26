package com.kor.muser.dto;
			 
public class Cart { //장바구니

	private int cartNo;	//장바구니 번호
	private String muId;	// 회원아이디
	private String muName;	// 회원이름
	private int gdsNo;	// 상품번호
	private String gdsName; // 상품이름
	private String gdsPrice;// 상품 단가
	private int gdsAmount; // 재고수량
	private int cartAmount; // 수량
	private int money;// 총가격
	private int payCheck;	//결제여부
	
	private String gdsImg1;
	
	public int getCartNo() {
		return cartNo;
	}
	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}
	public String getMuId() {
		return muId;
	}
	public void setMuId(String muId) {
		this.muId = muId;
	}
	public String getMuName() {
		return muName;
	}
	public void setMuName(String muName) {
		this.muName = muName;
	}
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
	public String getGdsPrice() {
		return gdsPrice;
	}
	public void setGdsPrice(String gdsPrice) {
		this.gdsPrice = gdsPrice;
	}
	public int getCartAmount() {
		return cartAmount;
	}
	public void setCartAmount(int cartAmount) {
		this.cartAmount = cartAmount;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public int getPayCheck() {
		return payCheck;
	}
	public void setPayCheck(int payCheck) {
		this.payCheck = payCheck;
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
	@Override
	public String toString() {
		return "Cart [cartNo=" + cartNo + ", muId=" + muId + ", muName=" + muName + ", gdsNo=" + gdsNo + ", gdsName="
				+ gdsName + ", gdsPrice=" + gdsPrice + ", gdsAmount=" + gdsAmount + ", cartAmount=" + cartAmount
				+ ", money=" + money + ", payCheck=" + payCheck + ", gdsImg1=" + gdsImg1 + "]";
	}
	
	
	
	
}
