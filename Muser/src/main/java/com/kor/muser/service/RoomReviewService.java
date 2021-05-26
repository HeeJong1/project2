package com.kor.muser.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.kor.muser.dto.RoomReview;

public interface RoomReviewService {

	public void roomReviewInsert(RoomReview dto, HttpServletRequest request);

	public List<RoomReview> roomReviewList();

	public void roomUpdateReview(RoomReview dto);

	public void roomReviewDelete(int rReviewNo);

}
