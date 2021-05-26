package com.kor.muser;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kor.muser.service.BoardService;
import com.kor.muser.page.Pagination;
import com.kor.muser.dto.Board;

@Controller
@RequestMapping("/board/")
public class BoardController {

	@Autowired
	BoardService service;

//게시판 클릭 했을 경우 
	@RequestMapping(value = "/Write_List", method = RequestMethod.GET)
	public ModelAndView Board(@RequestParam(value="curPage",required=false,defaultValue="1") int curPage,
			@RequestParam(value = "Search", required = false) String Search,
			@RequestParam(value = "Searchtext", required = false) String Searchtext) {
		ModelAndView mav = new ModelAndView();
	
		int count = service.SelectCount(Search, Searchtext);
		Pagination page = new Pagination(count, curPage);
		
		mav.setViewName("/board/Write_List");

		int start = page.getPageBegin(); // 1
		int end = page.getPageScale(); //
		
		List<Board> list = service.BoardAll(start, end, Search, Searchtext);

		mav.addObject("page", page);
		mav.addObject("list", list);
		mav.addObject("Search", Search);
		mav.addObject("Searchtext", Searchtext);
		
		return mav;
	}
	
	//게시판 글쓰기 화면
	@RequestMapping("/Write")
	public String Write() {
		return "/board/Write";
	}
	
	//게시판 글쓰기
	@RequestMapping(value = "/boardWrite", method = RequestMethod.POST)
	public String Write(Board dto, MultipartHttpServletRequest mpRequest) throws Exception{
		service.BoardInsert(dto, mpRequest);
		return "redirect:/board/Write_List"; // redirect 게시판 화면으로 
	}
	
	@RequestMapping(value = "/U_Board_View", method = RequestMethod.GET)
	public ModelAndView U_Board_View(@RequestParam("boardNo") int boardNo, Board dto) throws Exception {
		ModelAndView mav = new ModelAndView();
		service.BoardHitUpdate(boardNo);
		dto = service.SelectBoard(boardNo);
		mav.addObject("dto", dto);
		
		List<Map<String, Object>> fileList = service.selectFileList(dto.getBoardNo());
		mav.addObject("file", fileList);
		
		mav.setViewName("/board/U_Board_View");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/BoardDelete", method = RequestMethod.GET)
	public int BoardDelete(@RequestParam("boardNo") int boardNo) {
      service.BoardDelete(boardNo);
      return boardNo;
	}
	
	@RequestMapping(value="/U_B_Modify", method = RequestMethod.GET)
	public ModelAndView U_B_Modify(@RequestParam("boardNo") int boardNo, Board dto) throws Exception {
		ModelAndView mav = new ModelAndView();
		dto = service.SelectBoard(boardNo);
		mav.addObject("dto", dto);
		
		List<Map<String, Object>> fileList = service.selectFileList(dto.getBoardNo());
		mav.addObject("file", fileList);
		
		mav.setViewName("/board/U_B_Modify");
		return mav;
	}
	
	@RequestMapping(value = "/boardModify", method = RequestMethod.POST)
	public String U_B_Modify(Board dto,RedirectAttributes rttr,
								 @RequestParam(value="fileNoDel[]") String[] files,
								 @RequestParam(value="fileNameDel[]") String[] fileNames,
								 MultipartHttpServletRequest mpRequest) throws Exception {
		service.update(dto, files, fileNames, mpRequest);
		
		return "redirect:/board/Write_List";
	}
	
	@RequestMapping(value="/fileDown")
	public void fileDown(@RequestParam Map<String, Object> map, HttpServletResponse response) throws Exception{
		Map<String, Object> resultMap = service.selectFileInfo(map);
		String storedFileName = (String) resultMap.get("STORED_FILE_NAME");
		String originalFileName = (String) resultMap.get("ORG_FILE_NAME");
		
		// 파일을 저장했던 위치에서 첨부파일을 읽어 byte[]형식으로 변환한다.
		byte fileByte[] = org.apache.commons.io.FileUtils.readFileToByteArray(new File("C:\\mp\\file\\"+storedFileName));
		
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition",  "attachment; fileName=\""+URLEncoder.encode(originalFileName, "UTF-8")+"\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
		
	}
}
