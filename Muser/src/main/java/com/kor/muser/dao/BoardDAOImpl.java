package com.kor.muser.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kor.muser.dto.Board;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	SqlSession sqlSession;

	private static final String namespace = "com.spring.muser.mybatis.mapper.Write_ListMapper";

	@Override
	public List<Board> BoardAll(int start, int end, String Search, String Searchtext) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("Search", Search);
		map.put("Searchtext", Searchtext);
		return sqlSession.selectList(namespace + ".Write_List", map);
	}

	@Override
	public void BoardInsert(Board dto) {
		sqlSession.insert(namespace + ".BoardInsert", dto);
	}

	@Override
	public void insertFile(Map<String, Object> map) {
		sqlSession.insert(namespace + ".insertFile", map);
	}

	@Override
	public void BoardHitUpdate(int boardNo) {
		sqlSession.update(namespace + ".BoardHitUpdate", boardNo);
	}

	@Override
	public Board SelectBoard(int boardNo) {
		return sqlSession.selectOne(namespace + ".SelectBoard", boardNo);
	}

	@Override
	public void BoardDelete(int boardNo) {
		sqlSession.delete(namespace + ".BoardDelete", boardNo);
	}

	@Override
	public void U_B_Modify(Board dto) {
		sqlSession.update(namespace + ".U_B_Modify", dto);
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

	@Override
	public List<Map<String, Object>> selectFileList(int boardNo) throws Exception {
		return sqlSession.selectList(namespace + ".selectFileList", boardNo);
	}

	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		return sqlSession.selectOne(namespace + ".selectFileInfo", map);
	}

	@Override
	public void updateFile(Map<String, Object> map) throws Exception {
		sqlSession.update(namespace + ".updateFile", map);
	}

}
