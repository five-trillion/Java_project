package com.shop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shop.domain.BoardReplyVO;
import com.shop.domain.UsersVO;
import com.shop.service.ReplyService;

@Controller
@RequestMapping(value="/reply/*")
public class ReplyController {
	
	@Autowired
	private ReplyService replyservice;
	
	//자유게시판 댓글 작성
	@RequestMapping(value="/boRepWrite", method=RequestMethod.POST)
	public String boRepWritePOST(BoardReplyVO boRep, RedirectAttributes rttr, HttpSession session) throws Exception {
		replyservice.replyRegister(boRep);
		UsersVO user = (UsersVO) session.getAttribute("user");
		if(user != null) {
			System.out.println("댓글 등록 완료");
			rttr.addFlashAttribute("boardNo",  boRep.getBoardNo());
			return "redirect:/board/loungeRead?boardNo="+boRep.getBoardNo();
		} else {
			System.out.println("자유게시판 글쓰기 실패");
			return "redirect:/shop/login";
		}	
	}
}
