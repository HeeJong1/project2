package com.kor.muser.dao;

import java.util.List;
import java.util.Map;

import com.kor.muser.dto.Mu_Category;
import com.kor.muser.dto.Mu_Goods;

public interface ShopDAO {
	//상품 등록
	public void GoodsInsert(Mu_Goods dto);
	//첨부파일 등록
	public void insertFile(Map<String, Object> map);
	//상품 목록
	public List<Mu_Goods> ShopList(int start, int end, String Search, String Searchtext);
	
	public int SelectCount(String Search, String Searchtext);
	//카테고리
	public List<Mu_Category> Category() throws Exception;
	//첨부파일 조회
	public List<Map<String, Object>> SelectFileList(int gdsNo) throws Exception;
	
	public List<Mu_Goods> gListAll(String cateCode);
	//상품이미지 첨부
	public void insertImg1(Map<String, Object> map);
	public void insertImg2(Map<String, Object> map);
	public void insertImg3(Map<String, Object> map);
	public void insertImg4(Map<String, Object> map);
	public void insertImg5(Map<String, Object> map);
	
	public Mu_Goods SelectGoods(int gdsNo);
	
	public void modifyGoodsAmount(Mu_Goods dto);
	
	public void DeleteGoods(int gdsNo);
}
