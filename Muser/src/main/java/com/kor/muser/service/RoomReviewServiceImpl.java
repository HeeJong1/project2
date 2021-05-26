package com.kor.muser.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kor.muser.dao.RoomReviewDAO;
import com.kor.muser.dto.RoomReview;

@Service
public class RoomReviewServiceImpl implements RoomReviewService{

	@Autowired
	RoomReviewDAO dao;
	
	@Override
	public void roomReviewInsert(RoomReview dto, HttpServletRequest request) {
		dao.roomReviewInsert(dto);
	}

	@Override
	public List<RoomReview> roomReviewList() {
		return dao.roomReviewList();
	}

	@Override
	public void roomUpdateReview(RoomReview dto) {
		dao.roomUpdateReview(dto);
	}

	@Override
	public void roomReviewDelete(int rReviewNo) {
		dao.roomReviewDelete(rReviewNo);
	}



}
