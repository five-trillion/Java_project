package com.shop.controller;
  
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shop.domain.BoardVO;
import com.shop.domain.UsersVO;
import com.shop.service.BoardService;
  
  
@Controller 
@RequestMapping(value="/board/*")
public class BoardController {
	
	@Autowired
	BoardService boardservice;
	// ============================== 공지사항 ==============================
	//공지사항 페이지 이동
	@RequestMapping(value="/notice", method=RequestMethod.GET) 
	public void noticeGET(Model model) throws Exception {
		System.out.println("공지사항 페이지 진입");
		model.addAttribute("noticeList", boardservice.noticeList());
	} 
	
	// ================================= QnA =================================
	//QnA 페이지 이동
	@RequestMapping(value="/qna", method=RequestMethod.GET) 
	public void qnaGET(Model model) throws Exception {
		System.out.println("QnA 페이지 진입");
		model.addAttribute("qnaList", boardservice.qnaList());
	}
	
	//QnA 글쓰기 페이지 이동
	@RequestMapping(value="/qnaWrite", method=RequestMethod.GET) 
	public void qnaWriteGET() {
		System.out.println("QnA 글쓰기 페이지 진입");
	}
	
	//QnA 게시물 작성 
	@RequestMapping(value="/qnaWrite", method=RequestMethod.POST)
	public String qnaWritePOST(BoardVO board) throws Exception {
		boardservice.freeRegister(board);
		System.out.println("QnA 글쓰기 성공");
		return "redirect:/board/QnA";
	}
	
	// ============================== 자유게시판 ==============================
	//자유게시판 페이지 이동
	@RequestMapping(value="/lounge", method=RequestMethod.GET) 
	public void loungeGET(Model model) throws Exception {
		System.out.println("자유게시판 페이지 진입");
		model.addAttribute("freeList", boardservice.freeList());
	}
	
	//자유게시판 게시물 읽기 페이지 이동
	@RequestMapping(value="/loungeRead", method=RequestMethod.GET) 
	public void loungeReadGET(@RequestParam("boardNo") Long boardNo, Model model) throws Exception {
		System.out.println("자유게시판 게시물 읽기 페이지 진입");
		model.addAttribute("board",boardservice.freeDetail(boardNo));
	} 
	
	//자유게시판 글쓰기 페이지 이동
	@RequestMapping(value="/loungeWrite", method=RequestMethod.GET) 
	public void loungeWriteGET() {
		System.out.println("자유게시판 글쓰기 페이지 진입");
	}
	
	//자유게시판 게시물 작성
	@RequestMapping(value="/loungeWrite", method=RequestMethod.POST)
	public String loungeWritePOST(BoardVO board, RedirectAttributes rttr, HttpSession session) throws Exception {
		UsersVO user = (UsersVO) session.getAttribute("user");
		if(user != null) {
			board.setUserNo(user.getUserNo());
			System.out.println("자유게시판 글쓰기 성공");
			boardservice.freeRegister(board);
			rttr.addFlashAttribute("result", "success");
			return "redirect:/board/lounge";
		} else {
			System.out.println("자유게시판 글쓰기 실패(로그인 필요)");
			return "redirect:/shop/login";
		}		
	}
	
	//자유게시판 게시물 수정 페이지 이동
	@RequestMapping(value="/loungeModify", method=RequestMethod.GET) 
	public void loungeModifyGET() {
		System.out.println("자유게시판 게시물 수정 페이지 진입");
		
	}
} 
