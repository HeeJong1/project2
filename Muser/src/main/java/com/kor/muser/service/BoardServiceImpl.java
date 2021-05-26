package com.kor.muser.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kor.muser.dao.BoardDAO;
import com.kor.muser.dto.Board;
import com.kor.muser.util.FileUtils;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO dao;

	@Resource(name = "fileUtils")
	private FileUtils fileUtils;

	@Override
	public List<Board> BoardAll(int start, int end, String Search, String Searchtext) {
		return dao.BoardAll(start, end, Search, Searchtext);
	}

	@Override
	public void BoardInsert(Board dto, MultipartHttpServletRequest mpRequest) throws Exception {
		dao.BoardInsert(dto);

		List<Map<String, Object>> list = fileUtils.parseInsertFileInfo(dto, mpRequest);
		int size = list.size();
		for (int i = 0; i < size; i++) {
			dao.insertFile(list.get(i));
		}
	}

	@Override
	public void BoardHitUpdate(int boardNo) {
		dao.BoardHitUpdate(boardNo);
	}

	@Override
	public Board SelectBoard(int boardNo) {
		return dao.SelectBoard(boardNo);
	}

	@Override
	public void BoardDelete(int boardNo) {
		dao.BoardDelete(boardNo);
	}

	@Override
	public void U_B_Modify(Board dto) {
		dao.U_B_Modify(dto);
	}

	@Override
	public int SelectCount(String Search, String Searchtext) {
		return dao.SelectCount(Search, Searchtext);
	}

	@Override
	public List<Map<String, Object>> selectFileList(int boardNo) throws Exception {
		return dao.selectFileList(boardNo);
	}

	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		return dao.selectFileInfo(map);
	}

	@Override
	public void update(Board dto, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception {

		dao.U_B_Modify(dto);

		List<Map<String, Object>> list = fileUtils.parseUpdateFileInfo(dto, files, fileNames, mpRequest);
		Map<String, Object> tempMap = null;
		int size = list.size();
		for (int i = 0; i < size; i++) {
			tempMap = list.get(i);
			if (tempMap.get("IS_NEW").equals("Y")) {
				dao.insertFile(tempMap);
			} else {
				dao.updateFile(tempMap);
			}
		}
	}

}
