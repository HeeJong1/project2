package com.kor.muser.dto;

import java.sql.Date;


public class Mu_Member { //회원

	private int muNo;		//회원번호
	private String muId;	//아이디
	private String muPw;	//비밀번호
	private String muName;	//이름
	private Date muBirth;	//생년월일
	private String muPhone;	//전화번호
	private String muAddr1;	//주소
	private String muAddr2;	//주소
	private String muAddr3;	//주소
	private String muEmail;	//이메일
	private int adminCk;	//관리자체크

	public int getMuNo() {
		return muNo;
	}

	public void setMuNo(int muNo) {
		this.muNo = muNo;
	}

	public String getMuId() {
		return muId;
	}

	public void setMuId(String muId) {
		this.muId = muId;
	}

	public String getMuPw() {
		return muPw;
	}

	public void setMuPw(String muPw) {
		this.muPw = muPw;
	}

	public String getMuName() {
		return muName;
	}

	public void setMuName(String muName) {
		this.muName = muName;
	}

	public Date getMuBirth() {
		return muBirth;
	}

	public void setMuBirth(Date muBirth) {
		this.muBirth = muBirth;
	}

	public String getMuPhone() {
		return muPhone;
	}

	public void setMuPhone(String muPhone) {
		this.muPhone = muPhone;
	}

	public String getMuAddr1() {
		return muAddr1;
	}

	public void setMuAddr1(String muAddr1) {
		this.muAddr1 = muAddr1;
	}

	public String getMuAddr2() {
		return muAddr2;
	}

	public void setMuAddr2(String muAddr2) {
		this.muAddr2 = muAddr2;
	}

	public String getMuAddr3() {
		return muAddr3;
	}

	public void setMuAddr3(String muAddr3) {
		this.muAddr3 = muAddr3;
	}

	public String getMuEmail() {
		return muEmail;
	}

	public void setMuEmail(String muEmail) {
		this.muEmail = muEmail;
	}

	public int getAdminCk() {
		return adminCk;
	}

	public void setAdminCk(int adminCk) {
		this.adminCk = adminCk;
	}

	@Override
	public String toString() {
		return "Mu_Member [muNo=" + muNo + ", muId=" + muId + ", muPw=" + muPw + ", muName=" + muName + ", muBirth="
				+ muBirth + ", muPhone=" + muPhone + ", muAddr1=" + muAddr1 + ", muAddr2=" + muAddr2 + ", muAddr3="
				+ muAddr3 + ", muEmail=" + muEmail + ", adminCk=" + adminCk
				+ "]";
	}

	public Mu_Member() {
		super();
	}

	public Mu_Member(int muNo, String muId, String muPw, String muName, Date muBirth, String muPhone, String muAddr1,
			String muAddr2, String muAddr3, String muEmail, int adminCk) {
		super();
		this.muNo = muNo;
		this.muId = muId;
		this.muPw = muPw;
		this.muName = muName;
		this.muBirth = muBirth;
		this.muPhone = muPhone;
		this.muAddr1 = muAddr1;
		this.muAddr2 = muAddr2;
		this.muAddr3 = muAddr3;
		this.muEmail = muEmail;
		this.adminCk = adminCk;
	}
	
	
	
	
	
	
}
