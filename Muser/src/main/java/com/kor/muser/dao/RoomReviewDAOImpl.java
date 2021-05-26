package com.kor.muser.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kor.muser.dto.RoomReview;

@Repository
public class RoomReviewDAOImpl implements RoomReviewDAO{

	@Autowired
	SqlSession sqlSession;

	private static final String namespace = "com.spring.muser.mybatis.mapper.RoomReviewMapper";
	
	@Override
	public void roomReviewInsert(RoomReview dto) {
		sqlSession.insert(namespace + ".roomReviewInsert", dto);
	}

	@Override
	public List<RoomReview> roomReviewList() {
		return sqlSession.selectList(namespace +".roomReviewList");
	}

	@Override
	public void roomUpdateReview(RoomReview dto) {
		sqlSession.update(namespace +".roomUpdateReview", dto);
	}

	@Override
	public void roomReviewDelete(int rReviewNo) {
		sqlSession.delete(namespace +".roomDeleteReview", rReviewNo);
	}

}
