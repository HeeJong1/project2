package com.kor.muser.dao;

import java.util.List;
import java.util.Map;

import com.kor.muser.dto.Mu_Office;

public interface RoomDAO {
	//연습실 등록
	public void RoomInsert(Mu_Office dto);
	//파일업로드
	public void insertRFile(Map<String, Object> map);
	//관리자 모드 연습실 목록
	public List<Mu_Office> RoomList(int start, int end, String Search, String Searchtext);
	//연습실 목록 카운팅
	public int SelectCount(String Search, String Searchtext);
	//연습실 목록
	public List<Mu_Office> oListAll();
	//연습실 상세보기
	public Mu_Office SelectRoom(int ofNo);
	//연습실 삭제
	public void DeleteRoom(int ofNo);

	// 연습실 관련 이미지 파일들 등록
	public void insertImg1(Map<String, Object> map);

	public void insertImg2(Map<String, Object> map);

	public void insertImg3(Map<String, Object> map);

	public void insertImg4(Map<String, Object> map);

	public void insertImg5(Map<String, Object> map);

	public void insertImg6(Map<String, Object> map);

	public void insertImg7(Map<String, Object> map);

	public void insertImg8(Map<String, Object> map);

}
