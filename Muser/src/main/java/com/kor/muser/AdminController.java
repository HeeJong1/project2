package com.kor.muser;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kor.muser.dto.Board;
import com.kor.muser.dto.Mu_Category;
import com.kor.muser.dto.Mu_Goods;
import com.kor.muser.dto.Mu_Office;
import com.kor.muser.dto.QnA_Board;
import com.kor.muser.page.Pagination;
import com.kor.muser.service.BoardService;
import com.kor.muser.service.QnaService;
import com.kor.muser.service.RoomService;
import com.kor.muser.service.ShopService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("admin")

public class AdminController {
	@Autowired(required = false)
	BoardService Service;
	@Autowired(required = false)
	RoomService rService;
	@Autowired(required = false)
	ShopService sService;
	@Autowired(required = false)
	QnaService qService;

	// 게시판 화면에 출력
	@RequestMapping(value = "/admin_Board", method = RequestMethod.GET)
	public ModelAndView admin_Board(@RequestParam(value = "curPage", required = false, defaultValue = "1") int curPage,
			@RequestParam(value = "Search", required = false) String Search,
			@RequestParam(value = "Searchtext", required = false) String Searchtext) {

		ModelAndView mav = new ModelAndView();

		int count = Service.SelectCount(Search, Searchtext);
		Pagination page = new Pagination(count, curPage);

		mav.setViewName("/admin/admin_Board");

		int start = page.getPageBegin(); // 1
		int end = page.getPageScale(); //

		List<Board> list = Service.BoardAll(start, end, Search, Searchtext);

		mav.addObject("page", page);
		mav.addObject("list", list);
		mav.addObject("Search", Search);
		mav.addObject("Searchtext", Searchtext);

		return mav;
	}

	// 게시글 상세보기
	@RequestMapping(value = "/admin_Board_View", method = RequestMethod.GET)
	public ModelAndView admin_Board_View(@RequestParam("boardNo") int boardNo, Board dto) throws Exception {
		ModelAndView mav = new ModelAndView();
		Service.BoardHitUpdate(boardNo);
		dto = Service.SelectBoard(boardNo);
		mav.addObject("dto", dto);

		List<Map<String, Object>> fileList = Service.selectFileList(dto.getBoardNo());
		mav.addObject("file", fileList);

		mav.setViewName("/admin/admin_Board_View");

		return mav;
	}

	// 회원목록 화면
	@RequestMapping("/admin_Member_List")
	public String admin_Member_List() {
		return "/admin/admin_Member_List";
	}

	// 관리자 모드 연습실 목록
	@RequestMapping(value = "/admin_Room_List", method = RequestMethod.GET)
	public ModelAndView admin_Room_List(@RequestParam(value = "curPage", required = false, defaultValue = "1") int curPage,
			@RequestParam(value = "Search", required = false) String Search,
			@RequestParam(value = "Searchtext", required = false) String Searchtext) {
		ModelAndView mav = new ModelAndView();

		int count = rService.SelectCount(Search, Searchtext);
		Pagination page = new Pagination(count, curPage);

		mav.setViewName("/admin/admin_Room_List");

		int start = page.getPageBegin(); // 1
		int end = page.getPageScale(); //

		List<Mu_Office> list = rService.RoomList(start, end, Search, Searchtext);

		mav.addObject("page", page);
		mav.addObject("list", list);
		mav.addObject("Search", Search);
		mav.addObject("Searchtext", Searchtext);

		return mav;
	}

	// 연습실 등록 화면
	@RequestMapping("/admin_Room_Save")
	public String M_Room_Save() {
		return "/admin/admin_Room_Save";
	}
	// 상품 삭제
	@RequestMapping("/admin_Room_Delete")
	public String deleteRoom(@RequestParam int ofNo) {
		rService.DeleteRoom(ofNo);
		return "redirect:/admin/admin_Room_List";
	}

	// 관리자 모드 상품목록
	@RequestMapping(value = "/admin_Shop_List", method = RequestMethod.GET)
	public ModelAndView admin_Shop_List(@RequestParam(value = "curPage", required = false, defaultValue = "1") int curPage,
			@RequestParam(value = "Search", required = false) String Search,
			@RequestParam(value = "Searchtext", required = false) String Searchtext) {
		ModelAndView mav = new ModelAndView();

		if (Search != null && Search.equals("CateSearch")) {
			if (Searchtext.equals("기타")) {
				Searchtext = "100";
			} else if (Searchtext.equals("베이스")) {
				Searchtext = "200";
			} else if (Searchtext.equals("드럼")) {
				Searchtext = "300";
			} else if (Searchtext.equals("피아노")) {
				Searchtext = "400";
			}
		}

		int count = sService.SelectCount(Search, Searchtext);
		Pagination page = new Pagination(count, curPage);

		mav.setViewName("/admin/admin_Shop_List");

		int start = page.getPageBegin(); // 1
		int end = page.getPageScale(); //

		List<Mu_Goods> list = sService.ShopList(start, end, Search, Searchtext);

		if (Search != null && Search.equals("CateSearch")) {
			if (Searchtext.equals("100")) {
				Searchtext = "기타";
			} else if (Searchtext.equals("200")) {
				Searchtext = "베이스";
			} else if (Searchtext.equals("300")) {
				Searchtext = "드럼";
			} else if (Searchtext.equals("400")) {
				Searchtext = "피아노";
			}
		}

		mav.addObject("page", page);
		mav.addObject("list", list);
		mav.addObject("Search", Search);
		mav.addObject("Searchtext", Searchtext);

		return mav;
	}

	// 상품 등록
	@RequestMapping(value = "/admin_Shop_Save", method = RequestMethod.GET)
	public void admin_Shop_Save(Model model) throws Exception {
		List<Mu_Category> category = null;
		category = sService.Category();
		model.addAttribute("category", JSONArray.fromObject(category));

	}

	// 상품수량 수정
	@RequestMapping("/admin_Shop_Update")
	public String updateAmount(@RequestParam int[] amount, @RequestParam int[] gdsNo) {
		Mu_Goods dto = new Mu_Goods();

		for (int i = 0; i < gdsNo.length; i++) {
			dto.setGdsAmount(amount[i]);
			dto.setGdsNo(gdsNo[i]);
			sService.ModifyGoodsAmount(dto);
		}

		return "redirect:/admin/admin_Shop_List";
	}

	// 상품 삭제
	@RequestMapping("/admin_Shop_Delete")
	public String deleteGoods(@RequestParam int gdsNo) {
		sService.DeleteGoods(gdsNo);
		return "redirect:/admin/admin_Shop_List";
	}

	// QnA 게시판 리스트
	@RequestMapping(value = "/admin_Qaa_List", method = RequestMethod.GET)
	public ModelAndView admin_Q_List(@RequestParam(value = "curPage", required = false, defaultValue = "1") int curPage,
			@RequestParam(value = "Search", required = false) String Search,
			@RequestParam(value = "Searchtext", required = false) String Searchtext) {
		ModelAndView mav = new ModelAndView();

		int count = qService.SelectCount(Search, Searchtext);
		Pagination page = new Pagination(count, curPage);

		mav.setViewName("/admin/admin_Qaa_List");

		int start = page.getPageBegin(); // 1
		int end = page.getPageScale(); //

		List<QnA_Board> list = qService.QnaBoardList(start, end, Search, Searchtext);

		mav.addObject("page", page);
		mav.addObject("list", list);
		mav.addObject("Search", Search);
		mav.addObject("Searchtext", Searchtext);

		return mav;
	}

	// QnA 글 상세보기
	@RequestMapping(value = "/admin_Qaa_View", method = RequestMethod.GET)
	public ModelAndView admin_Q_View(@RequestParam("qnaNo") int qnaNo, QnA_Board dto) {
		ModelAndView mav = new ModelAndView();

		dto = qService.SelectQna(qnaNo);

		mav.addObject("dto", dto);
		mav.setViewName("/admin/admin_Qaa_View");

		return mav;
	}

	// QnA 글쓰기 화면으로 이동
	@RequestMapping("/admin_Qaa_Write")
	public String admin_Q_Write() {
		return "/admin/admin_Qaa_Write";
	}

	// QnA 글쓰기
	@RequestMapping(value = "/qnaWrite", method = RequestMethod.POST)
	public String admin_Q_Write(QnA_Board dto) {
		qService.QnaInsert(dto);
		return "redirect:/";
	}

	// QnA 글삭제
	@ResponseBody
	@RequestMapping(value = "/QnaDelete", method = RequestMethod.GET)
	public int QnaDelete(@RequestParam("qnaNo") int qnaNo) {
		qService.QnaDelete(qnaNo);
		return qnaNo;
	}

}
