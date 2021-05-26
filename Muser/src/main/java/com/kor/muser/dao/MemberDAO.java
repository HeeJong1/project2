package com.kor.muser.dao;

import java.util.List;

import com.kor.muser.dto.Mu_Member;

public interface MemberDAO {


	public Mu_Member duplicateCheck(String muId);

	public void MemberInsert(Mu_Member dto);

	public Mu_Member MemberLogin(Mu_Member dto);

	public int SelectCount(String Search, String Searchtext);

	public List<Mu_Member> MemberList(int start, int end, String Search, String Searchtext);

	public Mu_Member MemberView(String muId);

	public void MemberUpdate(Mu_Member dto);

	public void MemberDelete(Mu_Member dto) throws Exception;
	
}
