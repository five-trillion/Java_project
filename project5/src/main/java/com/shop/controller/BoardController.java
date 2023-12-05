package com.shop.controller;
  
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.domain.BoardVO;
import com.shop.service.BoardService;
  
  
@Controller 
@RequestMapping(value="/board/*") 
public class BoardController {
	
	@Autowired
	BoardService boardservice;
  
	//공지사항 페이지 이동
	@RequestMapping(value="/notice", method=RequestMethod.GET) 
	public void noticeGET() {
		System.out.println("공지사항 페이지 진입");
	} 
	
	//QnA 페이지 이동
	@RequestMapping(value="/qna", method=RequestMethod.GET) 
	public void qnaGET() {
		System.out.println("QnA 페이지 진입");
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
	
	//자유게시판 페이지 이동
	@RequestMapping(value="/lounge", method=RequestMethod.GET) 
	public void loungeGET(Model model) throws Exception {
		System.out.println("자유게시판 페이지 진입");
		model.addAttribute("freeList", boardservice.freeList());
	}
	
	//자유게시판 게시물 읽기 페이지 이동
	@RequestMapping(value="/loungeRead", method=RequestMethod.GET) 
	public void loungeReadGET() throws Exception {
		System.out.println("자유게시판 게시물 읽기 페이지 진입");
	} 
	
	//자유게시판 글쓰기 페이지 이동
	@RequestMapping(value="/loungeWrite", method=RequestMethod.GET) 
	public void loungeWriteGET() {
		System.out.println("자유게시판 글쓰기 페이지 진입");
	}
	
	//자유게시판 게시물 작성
	@RequestMapping(value="/loungeWrite", method=RequestMethod.POST)
	public String loungeWritePOST(BoardVO board) throws Exception {
		boardservice.freeRegister(board);
		System.out.println("자유게시판 글쓰기 성공");
		return "redirect:/board/lounge";
	}
} 
