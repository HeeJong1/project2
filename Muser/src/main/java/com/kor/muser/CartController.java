package com.kor.muser;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kor.muser.dto.Cart;
import com.kor.muser.service.CartService;

@Controller
@RequestMapping("/cart/")

public class CartController {
	
	@Autowired
	CartService cService;

	//장바구니 추가
	@RequestMapping("/cartInsert")
	public String insert(@ModelAttribute Cart dto, HttpSession session) {
		String muId = (String)session.getAttribute("muId");
		dto.setMuId(muId);
		// 장바구니 내용물 검사
		int count = cService.countCart(dto.getGdsNo(),muId);
		//count == 0? cService.updateCart(dto) : cService.insert(dto);
		if(count == 0) {
			cService.insert(dto);
		}else {
			cService.updateCart(dto);//수량변경
		}
		return "redirect:/cart/cartList";
	}
	
	// 장바구니 목록
	@RequestMapping("/cartList")
	public ModelAndView list(HttpSession session, ModelAndView mav) {
		String muId = (String)session.getAttribute("muId");
		Map<String, Object> map = new HashMap<String, Object>();
		List<Cart> list = cService.listCart(muId);
		int sumMoney = cService.sumMoney(muId);
		
		//int fee = sumMoney >= 100000 ? 0: 2500;
		map.put("list", list);
		map.put("count",list.size());
		map.put("sumMoney", sumMoney);
		//map.put("fee",fee);
		//map.put("allSum", sumMoney+fee);
		mav.setViewName("/shop/cart");
		mav.addObject("map",map);
		
		return mav;
	}
	
	//장바구니 삭제
	@RequestMapping("/cartDelete")
	public String delete(@RequestParam int cartNo) {
		cService.delete(cartNo);
		return "redirect:/cart/cartList";
	}
	//장바구니 삭제
		@RequestMapping("/cartDeleteAll")
		public String delete1(Cart dto, HttpSession session) {
			String muId = (String)session.getAttribute("muId");

				cService.deleteAll(muId);

			return "redirect:/cart/cartList";
		}
	
	//장바구니 수정
	@RequestMapping("/cartUpdate")
	public String update(@RequestParam int[] amount, @RequestParam int[] gdsNo, HttpSession session) {
		String muId = (String)session.getAttribute("muId");
		
		for(int i=0; i<gdsNo.length; i++) {
			Cart dto = new Cart();
			dto.setMuId(muId);
			dto.setCartAmount(amount[i]);
			dto.setGdsNo(gdsNo[i]);
			cService.modifyCart(dto);
		}
		return "redirect:/cart/cartList";
	}
}
