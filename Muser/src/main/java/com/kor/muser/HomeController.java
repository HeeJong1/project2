package com.kor.muser;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
			
	//메인 페이지
		@RequestMapping("/")
		public String index() {
			return "/index";
		}
		
		@RequestMapping("/MuList_B")
		public String MuList_B() {
			return "/MuList_B";
		}
		
		@RequestMapping("/MuList_G")
		public String MuList_G() {
			return "/MuList_G";
		}
		
		@RequestMapping("/MuList_D")
		public String MuList_D() {
			return "/MuList_D";
		}
		
		@RequestMapping("/MuList_P")
		public String MuList_P() {
			return "/MuList_P";
		}
		@RequestMapping( "/soge")
		public String soge() {
			return "/soge";
		}
		@RequestMapping( "/provision")
		public String provision() {
			return "/provision";
		}
		@RequestMapping( "/solo")
		public String solo() {
			return "/solo";
		}
		@RequestMapping( "/goji")
		public String goji() {
			return "/goji";
		}
}

