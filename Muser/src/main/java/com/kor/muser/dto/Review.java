package com.kor.muser.dto;

public class Review {	//리뷰

	private int reviewNo;	//리뷰번호
	private String muId;		//회원번호		
	private int ofNo;		//연습실번호
	private int gdsNo;		//상품번호
	private int stars;		//별점
	private String reviewDesc;	//리뷰내용
	
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
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
	public String getReviewDesc() {
		return reviewDesc;
	}
	public void setReviewDesc(String reviewDesc) {
		this.reviewDesc = reviewDesc;
	}

	public int getStars() {
		return stars;
	}
	public void setStars(int stars) {
		this.stars = stars;
	}
	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", muId=" + muId + ", ofNo=" + ofNo + ", gdsNo=" + gdsNo + ", stars="
				+ stars + ", reviewDesc=" + reviewDesc + "]";
	}
	
	
}
