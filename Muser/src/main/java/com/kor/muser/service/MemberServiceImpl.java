package com.kor.muser.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kor.muser.dao.MemberDAO;
import com.kor.muser.dto.Mu_Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO dao;

	@Override
	public Mu_Member duplicateCheck(String muId) {
		return dao.duplicateCheck(muId);
	}

	@Override
	public void MemberInsert(Mu_Member dto) {
		dao.MemberInsert(dto);
	}

	@Override
	public Mu_Member MemberLogin(Mu_Member dto) {
		return dao.MemberLogin(dto);
	}

	@Override
	public int SelectCount(String Search, String Searchtext) {
		return dao.SelectCount(Search,Searchtext);
	}

	@Override
	public List<Mu_Member> MemberList(int start, int end, String Search, String Searchtext) {
		return dao.MemberList(start,end,Search,Searchtext);
	}
	
	
	@Override
	public Mu_Member MemberView(String muId) { 
		return dao.MemberView(muId); 
	}

	@Override
	public void MemberUpdate(Mu_Member dto) {
		dao.MemberUpdate(dto);
	}

	@Override
	public void MemberDelete(Mu_Member dto) throws Exception{
		dao.MemberDelete(dto);
	}
	
}
