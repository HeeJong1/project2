package com.kor.muser.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kor.muser.dto.Mu_Category;
import com.kor.muser.dto.Mu_Goods;

@Repository
public class ShopDAOImpl implements ShopDAO{
	
	@Autowired
	SqlSession sqlSession;

	private static final String namespace = "com.spring.muser.mybatis.mapper.ShopMapper";

	@Override
	public void GoodsInsert(Mu_Goods dto) {
		sqlSession.insert(namespace + ".InsertGoods", dto);
	}

	@Override
	public void insertFile(Map<String, Object> map) {
		sqlSession.insert(namespace + ".insertGFile", map);
	}

	@Override
	public List<Mu_Goods> ShopList(int start, int end, String Search, String Searchtext) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("Search", Search);
		map.put("Searchtext", Searchtext);
		
		return sqlSession.selectList(namespace +".ShopList", map);
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
	public List<Mu_Category> Category() throws Exception{
		return sqlSession.selectList(namespace + ".Category");
	}

	@Override
	public List<Map<String, Object>> SelectFileList(int gdsNo) throws Exception {
		return sqlSession.selectList(namespace +".SelectFileList", gdsNo);
	}

	@Override
	public List<Mu_Goods> gListAll(String cateCode) {
		return sqlSession.selectList(namespace +".gListAll", cateCode);
	}

	@Override
	public void insertImg1(Map<String, Object> map) {
		sqlSession.update(namespace + ".insertGImg1", map);
	}

	@Override
	public void insertImg2(Map<String, Object> map) {
		sqlSession.update(namespace + ".insertGImg2", map);
	}

	@Override
	public void insertImg3(Map<String, Object> map) {
		sqlSession.update(namespace + ".insertGImg3", map);
	}

	@Override
	public void insertImg4(Map<String, Object> map) {
		sqlSession.update(namespace + ".insertGImg4", map);
	}

	@Override
	public void insertImg5(Map<String, Object> map) {
		sqlSession.update(namespace + ".insertGImg5", map);
	}

	@Override
	public Mu_Goods SelectGoods(int gdsNo) {
		return sqlSession.selectOne(namespace + ".SelectGoods", gdsNo);
	}

	@Override
	public void modifyGoodsAmount(Mu_Goods dto) {
		sqlSession.update(namespace + ".modifyGoodsAmount", dto);
	}

	@Override
	public void DeleteGoods(int gdsNo) {
		sqlSession.delete(namespace + ".DeleteGoods", gdsNo);
	}
}
