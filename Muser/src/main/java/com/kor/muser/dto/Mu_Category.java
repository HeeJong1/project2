package com.kor.muser.dto;

public class Mu_Category { //카테고리

	private String cateCode;	//카테고리 코드
	private String cateName;	//카테고리 이름
	
	public String getCateCode() {
		return cateCode;
	}
	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	
	@Override
	public String toString() {
		return "Mu_Category [cateCode=" + cateCode + ", cateName=" + cateName + "]";
	}
	
	
	
}
