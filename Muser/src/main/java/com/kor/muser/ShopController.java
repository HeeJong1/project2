package com.kor.muser;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kor.muser.dto.Mu_Goods;
import com.kor.muser.dto.Review;
import com.kor.muser.service.ReviewService;
import com.kor.muser.service.ShopService;

@Controller
@RequestMapping("/shop/")

public class ShopController {
	
	@Autowired(required = false)
	ReviewService service;
	
	@Autowired(required = false)
	ShopService sService;

	
	//상품 등록
	@RequestMapping(value = "/goodsInsert", method = RequestMethod.POST)
	public String GoodsInsert(Mu_Goods dto, MultipartHttpServletRequest mpRequest) throws Exception{
		sService.GoodsInsert(dto, mpRequest);
		return "redirect:/admin/admin_Shop_List"; // redirect 게시판 화면으로 
	}
	
	
	// 상품 기타 리스트 조회
	@RequestMapping(value = "/MuList_G", method = RequestMethod.GET)
	public ModelAndView MuListG(Mu_Goods dto) throws Exception {
		ModelAndView mav = new ModelAndView();

		List<Mu_Goods> gList = sService.gListAll("100"); //키타 카테고리 코드
		mav.setViewName("/shop/MuList_G");
	
		mav.addObject("glist", gList);

		return mav;
	}
	
	// 상품 드럼 리스트 화면출력
	@RequestMapping("/MuList_D")
	public ModelAndView MuListD(Mu_Goods dto) throws Exception {
		ModelAndView mav = new ModelAndView();

		List<Mu_Goods> gList = sService.gListAll("300"); //드럼 카테고리 코드
		mav.setViewName("/shop/MuList_D");
	
		mav.addObject("glist", gList);

		return mav;
	}
	// 상품 피아노 리스트 화면출력
	@RequestMapping("/MuList_P")
	public ModelAndView MuListP(Mu_Goods dto) throws Exception {
		ModelAndView mav = new ModelAndView();

		List<Mu_Goods> gList = sService.gListAll("400"); //피아노 카테고리 코드
		mav.setViewName("/shop/MuList_P");
	
		mav.addObject("glist", gList);

		return mav;
	}
	// 상품 베이스 리스트 화면출력
	@RequestMapping("/MuList_B")
	public ModelAndView MuListB(Mu_Goods dto) throws Exception {
		ModelAndView mav = new ModelAndView();

		List<Mu_Goods> gList = sService.gListAll("200"); //베이스 카테고리 코드
		mav.setViewName("/shop/MuList_B");
	
		mav.addObject("glist", gList);

		return mav;
	}
	
	// 상품 기타 상세화면 출력
	@RequestMapping("/MU_View_G")
	public ModelAndView MuViewG(@RequestParam("gdsNo") int gdsNo, Mu_Goods dto) throws Exception{
		ModelAndView mav = new ModelAndView();
		dto = sService.SelectGoods(gdsNo);
		mav.addObject("dto",dto);
		
		List<Review> list = service.ReviewList();
		
		mav.addObject("list", list);
		mav.setViewName("/shop/MU_View_G");
		
		return mav;
	}
	
	
	// 상품 드럼 상세화면 출력
	@RequestMapping("/MU_View_D")
	public ModelAndView MuViewD(@RequestParam("gdsNo") int gdsNo, Mu_Goods dto) throws Exception{
		ModelAndView mav = new ModelAndView();
		dto = sService.SelectGoods(gdsNo);
		mav.addObject("dto",dto);
		
		List<Review> list = service.ReviewList();
		
		mav.addObject("list", list);
		mav.setViewName("/shop/MU_View_G");
		
		return mav;
	}
	// 상품 피아노 상세화면 출력
	@RequestMapping("/MU_View_P")
	public ModelAndView MuViewP(@RequestParam("gdsNo") int gdsNo, Mu_Goods dto) throws Exception{
		ModelAndView mav = new ModelAndView();
		dto = sService.SelectGoods(gdsNo);
		mav.addObject("dto",dto);
		
		List<Review> list = service.ReviewList();
		
		mav.addObject("list", list);
		mav.setViewName("/shop/MU_View_G");
		
		return mav;
	}
	// 상품 베이스 상세화면 출력
	@RequestMapping("/MU_View_B")
	public ModelAndView MuViewB(@RequestParam("gdsNo") int gdsNo, Mu_Goods dto) throws Exception{
		ModelAndView mav = new ModelAndView();
		dto = sService.SelectGoods(gdsNo);
		mav.addObject("dto",dto);
		
		List<Review> list = service.ReviewList();
		
		mav.addObject("list", list);
		mav.setViewName("/shop/MU_View_G");
		
		return mav;
	}
	
	
}
