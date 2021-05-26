package com.kor.muser.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kor.muser.dto.Board;

public interface BoardService {
	public List<Board> BoardAll(int start, int end, String Search, String Searchtext);

	public void BoardInsert(Board dto, MultipartHttpServletRequest mpRequest) throws Exception;

	public void BoardHitUpdate(int boardNo);

	public Board SelectBoard(int boardNo);

	public void U_B_Modify(Board dto);

	public void BoardDelete(int boardNo);

	public int SelectCount(String Search, String Searchtext);

	// 첨부파일 조회
	public List<Map<String, Object>> selectFileList(int boardNo) throws Exception;

	// 첨부파일 다운'
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;

	// 게시물 수정
	public void update(Board dto, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception;

}
