package com.kor.muser.dao;

import java.util.List;
import java.util.Map;

import com.kor.muser.dto.Board;

public interface BoardDAO {

	public List<Board> BoardAll(int start, int end, String Search, String Searchtext);

	public void BoardInsert(Board dto);

	public void insertFile(Map<String, Object> map);

	public void BoardHitUpdate(int boardNo);

	public Board SelectBoard(int boardNo);

	public void BoardDelete(int boardNo);

	public void U_B_Modify(Board dto);

	public int SelectCount(String Search, String Searchtext);

	// 첨부파일 조회
	public List<Map<String, Object>> selectFileList(int boardNo) throws Exception;

	// 첨부파일 다운
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;

	// 첨부파일 수정
	public void updateFile(Map<String, Object> map) throws Exception;

}
