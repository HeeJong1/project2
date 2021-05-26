package com.kor.muser.service;

import java.util.List;

import com.kor.muser.dto.Cart;

public interface CartService {

	public int countCart(int gdsNo, String muId);

	public void insert(Cart dto);

	public void updateCart(Cart dto);

	public List<Cart> listCart(String muId);

	public int sumMoney(String muId);

	public void delete(int cartNo);

	public void modifyCart(Cart dto);

	public void deleteAll(String muId);

}
