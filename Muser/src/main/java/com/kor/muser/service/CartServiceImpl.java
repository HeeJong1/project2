package com.kor.muser.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kor.muser.dao.CartDAO;
import com.kor.muser.dto.Cart;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	CartDAO dao;
	
	@Override
	public int countCart(int gdsNo, String muId) {
		return dao.countCart(gdsNo,muId);
	}

	@Override
	public void insert(Cart dto) {
		dao.insert(dto);
	}

	//수량 변경
	@Override
	public void updateCart(Cart dto) {
		dao.updateCart(dto);
	}

	@Override
	public List<Cart> listCart(String muId) {
		return dao.listCart(muId);
	}

	@Override
	public int sumMoney(String muId) {
		return dao.sumMoney(muId);
	}

	@Override
	public void delete(int cartNo) {
		dao.delete(cartNo);
	}

	@Override
	public void modifyCart(Cart dto) {
		dao.modifyCart(dto);
	}

	@Override
	public void deleteAll(String muId) {
		dao.deleteAll(muId);
	}

}
