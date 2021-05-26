package com.kor.muser.service;

import java.util.List;

import com.kor.muser.dto.QnA_Board;

public interface QnaService {

	public int SelectCount(String Search, String Searchtext);

	// QnA 게시판 리스트
	public List<QnA_Board> QnaBoardList(int start, int end, String Search, String Searchtext);

	// QNA 글쓰기
	public void QnaInsert(QnA_Board dto);

	// QNA 게시글 선택
	public QnA_Board SelectQna(int qnaNO);

	// QNA 게시글 삭제
	public void QnaDelete(int qnaNo);

	// QNA 게시글 수정
	public void QnaModify(QnA_Board dto);

}
