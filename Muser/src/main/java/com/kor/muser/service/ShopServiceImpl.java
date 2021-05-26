package com.kor.muser.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kor.muser.dao.ShopDAO;
import com.kor.muser.dto.Mu_Category;
import com.kor.muser.dto.Mu_Goods;
import com.kor.muser.util.GoodsFileUtils;

@Service
public class ShopServiceImpl implements ShopService{

	@Autowired
	ShopDAO dao;
	
	@Resource(name="goodsFileUtils")
	private GoodsFileUtils gFileUtils;
	
	@Override
	public void GoodsInsert(Mu_Goods dto, MultipartHttpServletRequest mpRequest) throws Exception{
		dao.GoodsInsert(dto);
		
		List<Map<String,Object>> list = gFileUtils.parseInsertFileInfo(dto, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			if(i==0) {dao.insertImg1(list.get(i));}
			else if(i==1) {dao.insertImg2(list.get(i));}
			else if(i==2) {dao.insertImg3(list.get(i));}
			else if(i==3) {dao.insertImg4(list.get(i));}
			else if(i==4) {dao.insertImg5(list.get(i));}
		}	
	}

	@Override
	public List<Mu_Goods> ShopList(int start, int end, String Search, String Searchtext) {
		return dao.ShopList(start,end,Search,Searchtext);
	}

	@Override
	public int SelectCount(String Search, String Searchtext) {
		return dao.SelectCount(Search,Searchtext);
	}

	@Override
	public List<Mu_Category> Category() throws Exception {
		return dao.Category();
	}

	@Override
	public List<Map<String, Object>> SelectFileList(int gdsNo) throws Exception {
		return dao.SelectFileList(gdsNo);
	}

	@Override
	public List<Mu_Goods> gListAll(String cateCode) {
		return dao.gListAll(cateCode);
	}

	@Override
	public Mu_Goods SelectGoods(int gdsNo) {
		return dao.SelectGoods(gdsNo);
	}

	@Override
	public void ModifyGoodsAmount(Mu_Goods dto) {
		dao.modifyGoodsAmount(dto);
	}

	@Override
	public void DeleteGoods(int gdsNo) {
		dao.DeleteGoods(gdsNo);
	}

}
