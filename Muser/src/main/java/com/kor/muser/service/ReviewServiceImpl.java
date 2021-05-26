package com.kor.muser.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kor.muser.dao.ReviewDAO;
import com.kor.muser.dto.Review;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	ReviewDAO dao;
	
	@Override
	public void ReviewInsert(Review dto, HttpServletRequest request) {
		dao.ReviewInsert(dto);
	}

	@Override
	public List<Review> ReviewList() {
		return dao.ReviewList();
	}

	@Override
	public void UpdateReview(Review dto) {
		dao.UpdateReview(dto);
	}

	@Override
	public void ReviewDelete(int reviewNo) {
		dao.ReviewDelete(reviewNo);
	}

}
