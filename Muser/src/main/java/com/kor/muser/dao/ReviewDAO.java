package com.kor.muser.dao;

import java.util.List;

import com.kor.muser.dto.Review;

public interface ReviewDAO {

	public void ReviewInsert(Review dto);

	public List<Review> ReviewList();

	public void UpdateReview(Review dto);

	public void ReviewDelete(int reviewNo);

}
