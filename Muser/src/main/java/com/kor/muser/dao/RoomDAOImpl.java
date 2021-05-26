package com.kor.muser.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kor.muser.dto.Mu_Office;

@Repository
public class RoomDAOImpl implements RoomDAO {
	@Autowired
	SqlSession sqlSession;

	private static final String namespace = "com.spring.muser.mybatis.mapper.RoomMapper";

	// 연습실 등록
	@Override
	public void RoomInsert(Mu_Office dto) {
		sqlSession.insert(namespace + ".InsertRoom", dto);
	}
	//파일 업로드
	@Override
	public void insertRFile(Map<String, Object> map) {
		sqlSession.insert(namespace + ".insertRFile", map);
	}

	// 관리자모드 연습실 목록
	@Override
	public List<Mu_Office> RoomList(int start, int end, String Search, String Searchtext) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("Search", Search);
		map.put("Searchtext", Searchtext);
		return sqlSession.selectList(namespace + ".Room_List", map);
	}
	//연습실 목록 카운팅
	@Override
	public int SelectCount(String Search, String Searchtext) {
		Map<String, String> map = new HashMap<String, String>();

		map.put("Search", Search);
		map.put("Searchtext", Searchtext);
		Set<Map.Entry<String, String>> entries = map.entrySet();
		System.out.println("entries = " + entries);

		return sqlSession.selectOne(namespace + ".SelectCount", map);
	}

	// 연습실 목록
	@Override
	public List<Mu_Office> oListAll() {
		return sqlSession.selectList(namespace + ".oListAll");
	}

	// 연습실 상세보기
	@Override
	public Mu_Office SelectRoom(int ofNo) {
		return sqlSession.selectOne(namespace + ".SelectRoom", ofNo);
	}
	//연습실 삭제
	@Override
	public void DeleteRoom(int ofNo) {
		sqlSession.delete(namespace + ".DeleteRoom", ofNo);
	}

	@Override
	public void insertImg1(Map<String, Object> map) {
		sqlSession.update(namespace + ".insertRImg1", map);
	}

	@Override
	public void insertImg2(Map<String, Object> map) {
		sqlSession.update(namespace + ".insertRImg2", map);
	}

	@Override
	public void insertImg3(Map<String, Object> map) {
		sqlSession.update(namespace + ".insertRImg3", map);
	}

	@Override
	public void insertImg4(Map<String, Object> map) {
		sqlSession.update(namespace + ".insertRImg4", map);
	}

	@Override
	public void insertImg5(Map<String, Object> map) {
		sqlSession.update(namespace + ".insertRImg5", map);
	}

	@Override
	public void insertImg6(Map<String, Object> map) {
		sqlSession.update(namespace + ".insertRImg6", map);
	}

	@Override
	public void insertImg7(Map<String, Object> map) {
		sqlSession.update(namespace + ".insertRImg7", map);
	}

	@Override
	public void insertImg8(Map<String, Object> map) {
		sqlSession.update(namespace + ".insertRImg8", map);
	}


}
