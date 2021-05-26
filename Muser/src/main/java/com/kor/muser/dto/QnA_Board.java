package com.kor.muser.dto;

import java.sql.Date;

public class QnA_Board {
	private int qnaNo;	   //글번호
	private String muId; 	// 작성자아이디
	private String qnaTitle;	//글제목
	private String qnaDesc;	   //내용
	private Date qnaDate;		//작성날짜
	
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getMuId() {
		return muId;
	}
	public void setMuId(String muId) {
		this.muId = muId;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQnaDesc() {
		return qnaDesc;
	}
	public void setQnaDesc(String qnaDesc) {
		this.qnaDesc = qnaDesc;
	}
	public Date getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}
	@Override
	public String toString() {
		return "QnA_Board [qnaNo=" + qnaNo + ", muId=" + muId + ", qnaTitle=" + qnaTitle + ", qnaDesc=" + qnaDesc
				+ ", qnaDate=" + qnaDate + "]";
	}
	
}
