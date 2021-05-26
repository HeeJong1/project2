package com.kor.muser.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kor.muser.dto.Review;

@Repository
public class ReviewDAOImpl implements ReviewDAO{

	@Autowired
	SqlSession sqlSession;

	private static final String namespace = "com.spring.muser.mybatis.mapper.ReviewMapper";

	@Override
	public void ReviewInsert(Review dto) {
		sqlSession.insert(namespace + ".ReviewInsert", dto);
	}

	@Override
	public List<Review> ReviewList() {
		return sqlSession.selectList(namespace +".ReviewList");
	}

	@Override
	public void UpdateReview(Review dto) {
		sqlSession.update(namespace +".UpdateReview", dto);
	}

	@Override
	public void ReviewDelete(int reviewNo) {
		sqlSession.delete(namespace +".DeleteReview", reviewNo);
	}

}
