package com.kor.muser.dao;

import java.util.List;

import com.kor.muser.dto.QnA_Board;

public interface QnaDAO {
	//////////// QNA 게시판 관련//////////////
	public List<QnA_Board> QnaBoardList(int start, int end, String Search, String Searchtext);

	public void QnaInsert(QnA_Board dto);

	public QnA_Board SelectQna(int qnaNO);

	public void QnaDelete(int qnaNo);

	public void QnaModify(QnA_Board dto);

	public int SelectCount(String Search, String Searchtext);
}
