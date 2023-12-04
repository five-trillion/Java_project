package com.shop.controller;
  
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.domain.BoardVO;
import com.shop.service.BoardService;
  
  
@Controller 
@RequestMapping(value="/board/*") 
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService boardservice;
  
	//공지사항 페이지 이동
	@RequestMapping(value="/notice", method=RequestMethod.GET) 
	public void noticeGET() {
		System.out.println("공지사항 페이지 진입");
	} 
	
	//자유게시판 페이지 이동
	@RequestMapping(value="/lounge", method=RequestMethod.GET) 
	public void loungeGET() {
		System.out.println("자유게시판 페이지 진입");
	}
	
	//자유게시판 글쓰기 페이지 이동
	@RequestMapping(value="/loungeWrite", method=RequestMethod.GET) 
	public void loungeWriteGET() {
		System.out.println("자유게시판 글쓰기 페이지 진입");
	}
	
	@RequestMapping(value="/loungeWrite", method=RequestMethod.POST)
	public String loungeWritePOST(BoardVO board) throws Exception {
		boardservice.insertBoard(board);
		System.out.println("자유게시판 글쓰기 성공");
		return "redirect:/board/lounge";
	}
} 
