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

import com.kor.muser.dto.Review;
import com.kor.muser.service.ReviewService;

@Controller
@RequestMapping("/shop/")

public class ReviewController {

	@Autowired
	ReviewService service;
	
	@RequestMapping("/reviewInsert")
	public ModelAndView ReviewInsert(Review dto, HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView(); 
		service.ReviewInsert(dto, request);
		
		List<Review> list = service.ReviewList();
		
		mav.addObject("list", list);
		mav.setViewName("/shop/MU_View_G");
		
		
		return mav;
	}
	
	@RequestMapping(value = "/reviewModify", method = RequestMethod.POST)
	public String ReviewModify(Review dto) {

		service.UpdateReview(dto);
		
		return "redirect:/shop/MU_View_G";
	}
	
	@ResponseBody
	@RequestMapping(value = "/ReviewDelete", method = RequestMethod.GET)
	public int ReviewDelete(@RequestParam("reviewNo") int reviewNo) {
		service.ReviewDelete(reviewNo);
		return reviewNo;
	}

}
