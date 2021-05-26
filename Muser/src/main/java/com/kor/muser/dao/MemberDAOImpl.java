package com.kor.muser.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kor.muser.dto.Mu_Member;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SqlSession sqlSession;

	private static final String namespace = "com.spring.muser.mybatis.mapper.MemberMapper";

	@Override
	public Mu_Member duplicateCheck(String muId) {
		return sqlSession.selectOne(namespace +".duplicateCheck",muId);
	}
	
	@Override
	public void MemberInsert(Mu_Member dto) {
		  sqlSession.selectOne(namespace+".MemberInsert", dto);
	}
	
	@Override
	public Mu_Member MemberLogin(Mu_Member dto) {
		return sqlSession.selectOne(namespace+".MemberLogin",dto);
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
	public List<Mu_Member> MemberList(int start, int end, String Search, String Searchtext) {	
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("Search", Search);
		map.put("Searchtext", Searchtext);
		return sqlSession.selectList(namespace + ".MemberList", map);
	}

	@Override
	public Mu_Member MemberView(String muId) {
		return sqlSession.selectOne(namespace +".SelectMember", muId);
	}

	@Override
	public void MemberUpdate(Mu_Member dto) {
		sqlSession.update(namespace +".UpdateMember", dto);
	}

	@Override
	public void MemberDelete(Mu_Member dto) throws Exception{
		sqlSession.delete(namespace +".DeleteMember", dto);
	}
	
}

















