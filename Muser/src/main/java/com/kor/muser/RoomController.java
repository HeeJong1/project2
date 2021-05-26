package com.kor.muser;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kor.muser.dto.Mu_Office;
import com.kor.muser.dto.RoomReview;
import com.kor.muser.service.RoomReviewService;
import com.kor.muser.service.RoomService;

@Controller
@RequestMapping("/room/")
public class RoomController {

	@Autowired(required = false)
	RoomService service;
	@Autowired(required = false)
	RoomReviewService rrvService;

	// 연습실 등록
	@RequestMapping(value = "/roomInsert", method = RequestMethod.POST)
	public String Insert(Mu_Office dto, MultipartHttpServletRequest mpRequest) throws Exception {
		service.RoomInsert(dto, mpRequest);
		return "redirect:/admin/admin_Room_List";
	}

	// 연습실 목록
	@RequestMapping(value = "/Room", method = RequestMethod.GET)
	public ModelAndView Room() {
		ModelAndView mav = new ModelAndView();

		List<Mu_Office> oList = service.oListAll();
		mav.setViewName("/room/Room");

		mav.addObject("olist", oList);

		return mav;
	}

	// 연습실 상세화면
	@RequestMapping("Room_View")
	public ModelAndView Room_View(@RequestParam("ofNo") int ofNo, Mu_Office dto) throws Exception {
		ModelAndView mav = new ModelAndView();

		dto = service.SelectRoom(ofNo);
		mav.addObject("dto", dto);

		List<RoomReview> list = rrvService.roomReviewList();

		mav.addObject("list", list);
		mav.setViewName("/room/Room_View");

		return mav;
	}

	@RequestMapping("CheckIn")
	public ModelAndView CheckIn(@RequestParam("ofNo") int ofNo, Mu_Office dto) {
		ModelAndView mav = new ModelAndView();

		dto = service.SelectRoom(ofNo);
		mav.addObject("dto", dto);

		mav.setViewName("/room/CheckIn");
		
		return mav;
	}
	

}
