package com.kor.muser.dto;

import java.sql.Date;

public class Board {	//게시판
	
	private int boardNo;	//글번호
	private String muId; 	// 작성자아이디
	private String boardTitle;	//글제목
	private String boardDesc;	//내용
	private Date bDate;			//작성날짜
	private int boardHit;	//조회수
	
	public int getBoardNo() {
		return boardNo;
	}
	public String getMuId() {
		return muId;
	}
	public void setMuId(String muId) {
		this.muId = muId;
	}
	public Date getbDate() {
		return bDate;
	}
	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardDesc() {
		return boardDesc;
	}
	public void setBoardDesc(String boardDesc) {
		this.boardDesc = boardDesc;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public int getBoardHit() {
		return boardHit;
	}
	public void setBoardHit(int boardHit) {
		this.boardHit = boardHit;
	}
	
	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", muId=" + muId + ", boardTitle=" + boardTitle
				+ ", boardDesc=" + boardDesc + ", bDate=" + bDate + ", boardHit=" + boardHit + "]";
	}
	

	
	
	
	}
