package com.kor.muser.dao;

import java.util.List;

import com.kor.muser.dto.RoomReview;

public interface RoomReviewDAO {

	public void roomReviewInsert(RoomReview dto);

	public List<RoomReview> roomReviewList();

	public void roomUpdateReview(RoomReview dto);

	public void roomReviewDelete(int rReviewNo);

}
