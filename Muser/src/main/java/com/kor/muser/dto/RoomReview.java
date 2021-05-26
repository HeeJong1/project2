package com.kor.muser.dto;

public class RoomReview {	//연습실리뷰

	private int rReviewNo;	//연습실리뷰번호
	private String muId;		//회원번호		
	private int ofNo;		//연습실번호
	private int gdsNo;		//상품번호
	private int stars;		//별점
	private String rReviewDesc;	//연습실리뷰내용
	
	public int getRReviewNo() {
		return rReviewNo;
	}
	public void setRReviewNo(int rReviewNo) {
		this.rReviewNo = rReviewNo;
	}

	public String getMuId() {
		return muId;
	}
	public void setMuId(String muId) {
		this.muId = muId;
	}
	public int getOfNo() {
		return ofNo;
	}
	public void setOfNo(int ofNo) {
		this.ofNo = ofNo;
	}
	public int getGdsNo() {
		return gdsNo;
	}
	public void setGdsNo(int gdsNo) {
		this.gdsNo = gdsNo;
	}
	public String getRReviewDesc() {
		return rReviewDesc;
	}
	public void setRReviewDesc(String rReviewDesc) {
		this.rReviewDesc = rReviewDesc;
	}

	public int getStars() {
		return stars;
	}
	public void setStars(int stars) {
		this.stars = stars;
	}
	@Override
	public String toString() {
		return "RoomReview [rReviewNo=" + rReviewNo + ", muId=" + muId + ", ofNo=" + ofNo + ", gdsNo=" + gdsNo + ", stars="
				+ stars + ", rReviewDesc=" + rReviewDesc + "]";
	}
	
	
}
