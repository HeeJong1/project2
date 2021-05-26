package com.kor.muser.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kor.muser.dto.Mu_Office;

public interface RoomService {
	//연습실 등록
	public void RoomInsert(Mu_Office dto, MultipartHttpServletRequest mpRequest) throws Exception;
	//관리자모드 연습실 목록
	public List<Mu_Office> RoomList(int start, int end, String Search, String Searchtext);
	//연습실 목록 카운팅
	public int SelectCount(String Search, String Searchtext);
	//연습실 목록
	public List<Mu_Office> oListAll();
	//연습실 상세보기
	public Mu_Office SelectRoom(int ofNo);
	//연습실 삭제
	public void DeleteRoom(int ofNo);

}
