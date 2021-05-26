package com.kor.muser.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kor.muser.dto.Mu_Category;
import com.kor.muser.dto.Mu_Goods;

public interface ShopService {

	public void GoodsInsert(Mu_Goods dto, MultipartHttpServletRequest mpRequest) throws Exception;

	public List<Mu_Goods> ShopList(int start, int end, String Search, String Searchtext);

	public int SelectCount(String Search, String Searchtext);

	public List<Mu_Category> Category() throws Exception;
	
	public List<Map<String, Object>> SelectFileList(int gdsNo) throws Exception;

	public List<Mu_Goods> gListAll(String cateCode);

	public Mu_Goods SelectGoods(int gdsNo);
	
	public void ModifyGoodsAmount(Mu_Goods dto);

	public void DeleteGoods(int gdsNo);
}
