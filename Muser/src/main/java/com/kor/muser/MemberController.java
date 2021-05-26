package com.kor.muser;

import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kor.muser.dto.Mu_Member;
import com.kor.muser.page.Pagination;
import com.kor.muser.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {

	@Autowired
	MemberService service;

	@Autowired
	BCryptPasswordEncoder pwEncoder;

	@Autowired
	HttpSession session;

	// 로그인 폼으로 이동
	@RequestMapping("/LoginLogOut")
	public String LoginLogout() {
		return "/member/LoginLogOut";
	}

	// 회원가입 폼
	@RequestMapping("/MemberInsert")
	public String MemberInsert() {
		return "/member/MemberInsert";
	}
	
	// 회원탈퇴 폼
	@RequestMapping("/KillMember")
	public String KillMember() {
		return "/member/KillMember";
	}
	
	// 로그인
	// @ResponseBody
	@RequestMapping(value = "/memLogin", method = RequestMethod.POST)
	public String MemberLogin(HttpSession session, Mu_Member dto, RedirectAttributes rttr) throws Exception {

		String rawPw = "";
		String encodePw = "";

		session.getAttribute("member");

		Mu_Member login = service.MemberLogin(dto);

		boolean pwMatch = false;

		if (login != null) {
			rawPw = dto.getMuPw(); // 사용자가 제출한 비밀번호
			encodePw = login.getMuPw(); // 데이터베이스에 저장한 인코딩된 비밀번호
			pwMatch = pwEncoder.matches(rawPw, encodePw);
		}

		if (login != null && pwMatch == true) { // 비밀번호 일치여부 판단
			// member.setMuPw(""); // 인코딩된 비밀번호 정보 지움
			session.setAttribute("member", login); // session에 사용자의 정보 저장
			session.setAttribute("muId", login.getMuId());

			return "redirect:/"; // 메인페이지 이동

		} else { // 일치하는 아이디가 존재하지 않을 시 (로그인 실패)
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			// return "redirect:/member/LoginLogout"; // 로그인 페이지로 이동

		}
		return "redirect:/member/LoginLogOut"; // 로그인 페이지로 이동
	}

	// 회원가입
	@RequestMapping(value = "/family", method = RequestMethod.POST)
	public String MemberFamily(Mu_Member dto) {
		/* 비밀번호 인코딩 후 재저장 */
		String rawPw = ""; // 인코딩 전 비밀번호
		String encodePw = ""; // 인코딩 후 비밀번호

		rawPw = dto.getMuPw(); // 비밀번호 데이터 얻음
		encodePw = pwEncoder.encode(rawPw); // 비밀번호 인코딩
		dto.setMuPw(encodePw); // 인코딩된 비밀번호 member객체에 다시 저장

		/* 회원가입 쿼리 실행 */
		service.MemberInsert(dto);
		return "redirect:/";
	}

	private static final Pattern ID_REGEX = Pattern.compile("^[a-zA-Z]{1}[a-zA-Z0-9_]{4,11}$");

	// 아이디 중복확인
	@ResponseBody
	@RequestMapping(value = "/idOverlap", method = RequestMethod.POST)
	public int IdDuplicate(@RequestParam("muId") String muId) {
		// 시작은 영문으로만,특수문자,공백 없는 영문, 숫자 포함 5-12자 이하로 해주시기 바랍니다.
		Mu_Member duplicateCheck = service.duplicateCheck(muId);
		if (duplicateCheck == null) {
			if (ID_REGEX.matcher(muId).matches()) {
				return 1;// 아이디 패턴 일치
			} else {
				return -1;// 아이디 패턴 불일치
			}
		} else {
			return 0;// 중복
		}
	}

	// 로그아웃
	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";

	}

	// 회원 정보 리스트
	@RequestMapping(value = "/MemberList", method = RequestMethod.GET)
	public ModelAndView MemberList(@RequestParam(value = "curPage", required = false, defaultValue = "1") int curPage,
			@RequestParam(value = "Search", required = false) String Search,
			@RequestParam(value = "Searchtext", required = false) String Searchtext) {
		ModelAndView mav = new ModelAndView();
		int count = service.SelectCount(Search, Searchtext);
		Pagination page = new Pagination(count, curPage);
		mav.setViewName("/admin/admin_Member_List");
		int start = page.getPageBegin();
		int end = page.getPageScale();
		List<Mu_Member> mList = service.MemberList(start, end, Search, Searchtext);
		mav.addObject("page", page);
		mav.addObject("mList", mList);
		mav.addObject("Search", Search);
		mav.addObject("Searchtext", Searchtext);
		return mav;
	}

	// 회원 상세보기 리스트
	@RequestMapping(value = "/MemberView", method = RequestMethod.GET)
	public ModelAndView MemberView(@RequestParam("muId") String muId, Mu_Member dto) {
		ModelAndView mav = new ModelAndView();
		// service.MemberViewUpdate(muId);
		dto = service.MemberView(muId);
		mav.addObject("dto", dto);
		mav.setViewName("/member/MemberView");
		return mav;
	}

	// 회원수정 페이지로 이동
	@RequestMapping(value = "/MemberModify", method = RequestMethod.GET)
	public ModelAndView MemberModify(@RequestParam("muId") String muId, Mu_Member dto) {
		ModelAndView mav = new ModelAndView();

		dto = service.MemberView(muId);
		mav.addObject("dto", dto);
		mav.setViewName("/member/MemberModify");

		return mav;
	}

	  //회원정보 수정하기
	  @RequestMapping(value = "/Mu_Modify", method = RequestMethod.POST) public
	  String MemberUpdate(Mu_Member dto) 
	  { /*비밀번호 인코딩 후 재저장*/ 
		  String rawPw = ""; // 인코딩 전비밀번호 
		  String encodePw = ""; // 인코딩 후 비밀번호
	  
		  rawPw = dto.getMuPw(); // 비밀번호 데이터 얻음 
		  encodePw = pwEncoder.encode(rawPw); //비밀번호 인코딩 
		  dto.setMuPw(encodePw); // 인코딩된 비밀번호 member객체에 다시 저장
	  
		  service.MemberUpdate(dto); 
		  
	  
		  return "redirect:/"; 
	  }
	  
	//회원 삭제
	@RequestMapping(value="/MemberDelete", method = RequestMethod.POST)
	public String MemberDelete(Mu_Member dto, HttpSession session, RedirectAttributes rttr) throws Exception{
		
		String rawPw = "";
		String encodePw = "";
		
		Mu_Member kill = (Mu_Member)session.getAttribute("member");

		boolean pwMatch = false;

		if (kill != null) {
			rawPw = dto.getMuPw(); // 사용자가 제출한 비밀번호
			encodePw = kill.getMuPw(); // 데이터베이스에 저장한 인코딩된 비밀번호
			pwMatch = pwEncoder.matches(rawPw, encodePw); //비밀번호 비교판단
		}
		
		if (kill != null && pwMatch == false) { // 비밀번호 일치여부 판단
			//아이디 비밀번호 일치하지 않을시 (탈퇴 실패)
			rttr.addFlashAttribute("msg", false);
			  
			return "redirect:/member/KillMember";// 탈퇴페이지로

		} else { // 탈퇴성공			  
			service.MemberDelete(dto);
			session.invalidate();

			return "redirect:/"; // 메인페이지 이동
		}

	}

}
