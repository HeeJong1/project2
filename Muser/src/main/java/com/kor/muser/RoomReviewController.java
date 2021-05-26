package com.kor.muser;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kor.muser.dto.RoomReview;
import com.kor.muser.service.RoomReviewService;

@Controller
@RequestMapping("/room/")

public class RoomReviewController {
	@Autowired
	RoomReviewService service;
	
	@RequestMapping("/roomReviewInsert")
	public ModelAndView roomReviewInsert(RoomReview dto, HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView(); 
		service.roomReviewInsert(dto, request);
		
		List<RoomReview> list = service.roomReviewList();
		
		mav.addObject("list", list);
		mav.setViewName("/room/Room_View");
		
		
		return mav;
	}
	
	@RequestMapping(value = "/roomReviewModify", method = RequestMethod.POST)
	public String roomReviewModify(RoomReview dto) {

		service.roomUpdateReview(dto);
		
		return "redirect:/room/Room_View";
	}
	
	@ResponseBody
	@RequestMapping(value = "/roomReviewDelete", method = RequestMethod.GET)
	public int roomReviewDelete(@RequestParam("rReviewNo") int rReviewNo) {
		service.roomReviewDelete(rReviewNo);
		return rReviewNo;
	}
}
