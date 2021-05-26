package com.kor.muser.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.kor.muser.dto.Review;

public interface ReviewService {

	public void ReviewInsert(Review dto, HttpServletRequest request);

	public List<Review> ReviewList();

	public void UpdateReview(Review dto);

	public void ReviewDelete(int reviewNo);

}
