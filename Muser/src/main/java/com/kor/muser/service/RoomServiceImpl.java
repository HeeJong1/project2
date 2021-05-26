package com.kor.muser.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kor.muser.dao.RoomDAO;
import com.kor.muser.dto.Mu_Office;
import com.kor.muser.util.RoomFileUtils;

@Service
public class RoomServiceImpl implements RoomService {
	@Autowired
	RoomDAO dao;

	@Resource(name = "roomFileUtils")
	private RoomFileUtils rfileUtils;
	//연습실 등록
	@Override
	public void RoomInsert(Mu_Office dto, MultipartHttpServletRequest mpRequest) throws Exception {
		dao.RoomInsert(dto);

		List<Map<String, Object>> list = rfileUtils.parseInsertFileInfo(dto, mpRequest);
		int size = list.size();
		for (int i = 0; i < size; i++) {
			if (i == 0) {
				dao.insertImg1(list.get(i));
			} else if (i == 1) {
				dao.insertImg2(list.get(i));
			} else if (i == 2) {
				dao.insertImg3(list.get(i));
			} else if (i == 3) {
				dao.insertImg4(list.get(i));
			} else if (i == 4) {
				dao.insertImg5(list.get(i));
			} else if (i == 5) {
				dao.insertImg6(list.get(i));
			} else if (i == 6) {
				dao.insertImg7(list.get(i));
			} else if (i == 7) {
				dao.insertImg8(list.get(i));
			}
		}
	}

	// 연습실 목록
	@Override
	public List<Mu_Office> oListAll() {
		return dao.oListAll();
	}

	// 관리자 모드 연습실 목록
	@Override
	public List<Mu_Office> RoomList(int start, int end, String Search, String Searchtext) {
		return dao.RoomList(start, end, Search, Searchtext);
	}
	//연습실 목록 카운팅
	@Override
	public int SelectCount(String Search, String Searchtext) {
		return dao.SelectCount(Search, Searchtext);
	}
	//연습실 상세보기
	@Override
	public Mu_Office SelectRoom(int ofNo) {
		return dao.SelectRoom(ofNo);
	}
	//연습실 삭제
	@Override
	public void DeleteRoom(int ofNo) {
		dao.DeleteRoom(ofNo);
	}

}
