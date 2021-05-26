package com.kor.muser.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kor.muser.dto.QnA_Board;

@Repository
public class QnaDAOImpl implements QnaDAO {
	@Autowired
	SqlSession sqlSession;

	private static final String namespace = "com.spring.muser.mybatis.mapper.QnaMapper";

	@Override
	public List<QnA_Board> QnaBoardList(int start, int end, String Search, String Searchtext) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("Search", Search);
		map.put("Searchtext", Searchtext);
		return sqlSession.selectList(namespace + ".QnaBoardList", map);
	}

	@Override
	public void QnaInsert(QnA_Board dto) {
		sqlSession.insert(namespace + ".QnaInsert", dto);
	}

	@Override
	public QnA_Board SelectQna(int qnaNO) {
		return sqlSession.selectOne(namespace + ".SelectQnaBoard", qnaNO);
	}

	@Override
	public void QnaDelete(int qnaNo) {
		sqlSession.delete(namespace + ".QnaDelete", qnaNo);
	}

	@Override
	public void QnaModify(QnA_Board dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public int SelectCount(String Search, String Searchtext) {
		Map<String, String> map = new HashMap<String, String>();

		map.put("Search", Search);
		map.put("Searchtext", Searchtext);
		Set<Map.Entry<String, String>> entries = map.entrySet();
		System.out.println("entries = " + entries);

		return sqlSession.selectOne(namespace + ".SelectCount", map);
	}

}
