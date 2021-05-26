package com.kor.muser.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kor.muser.dto.Cart;

@Repository
public class CartDAOImpl implements CartDAO{
	@Autowired
	SqlSession sqlSession;

	private static final String namespace = "com.spring.muser.mybatis.mapper.CartMapper";

	@Override
	public int countCart(int gdsNo, String muId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("gdsNo",gdsNo);
		map.put("muId",muId);
		return sqlSession.selectOne(namespace +".countCart", map);
	}

	@Override
	public void insert(Cart dto) {
		sqlSession.insert(namespace +".insertCart", dto);
	}

	@Override
	public void updateCart(Cart dto) {
		sqlSession.update(namespace +".sumCart", dto); 
	}

	@Override
	public List<Cart> listCart(String muId) {
		return sqlSession.selectList(namespace +".listCart", muId);
	}

	@Override
	public int sumMoney(String muId) {
		return sqlSession.selectOne(namespace +".sumMoney", muId);
	}

	@Override
	public void delete(int cartNo) {
		sqlSession.delete(namespace +".deleteCart", cartNo);
	}

	@Override
	public void modifyCart(Cart dto) {
		sqlSession.update(namespace +".modifyCart", dto);
	}

	@Override
	public void deleteAll(String muId) {
		sqlSession.delete(namespace +".deleteCartAll", muId);
	}

}
