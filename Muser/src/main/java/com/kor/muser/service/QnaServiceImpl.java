package com.kor.muser.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kor.muser.dao.QnaDAO;
import com.kor.muser.dto.QnA_Board;

@Service
public class QnaServiceImpl implements QnaService {
	@Autowired
	QnaDAO dao;

	@Override
	public int SelectCount(String Search, String Searchtext) {
		return dao.SelectCount(Search, Searchtext);
	}

	@Override
	public List<QnA_Board> QnaBoardList(int start, int end, String Search, String Searchtext) {
		return dao.QnaBoardList(start, end, Search, Searchtext);
	}

	@Override
	public void QnaInsert(QnA_Board dto) {
		dao.QnaInsert(dto);
	}

	@Override
	public QnA_Board SelectQna(int qnaNO) {
		return dao.SelectQna(qnaNO);
	}

	@Override
	public void QnaDelete(int qnaNo) {
		dao.QnaDelete(qnaNo);
	}

	@Override
	public void QnaModify(QnA_Board dto) {
		// TODO Auto-generated method stub

	}

}
