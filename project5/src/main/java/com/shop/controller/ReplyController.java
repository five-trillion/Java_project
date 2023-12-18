package com.shop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shop.domain.BoardReplyVO;
import com.shop.domain.ReviewReplyVO;
import com.shop.domain.UsersVO;
import com.shop.service.ReplyService;

@Controller
@RequestMapping(value="/reply/*")
public class ReplyController {
	
	@Autowired
	private ReplyService replyservice;
	
	// 자유게시판 댓글 작성
	@RequestMapping(value="/boRepWrite", method=RequestMethod.POST)
	public String boRepWritePOST(BoardReplyVO boRep, RedirectAttributes rttr, HttpSession session,@RequestParam("pageNum") int pageNum, @RequestParam("amount") int amount) throws Exception {
		replyservice.replyRegister(boRep);
		System.out.println(boRep);
		
		UsersVO user = (UsersVO) session.getAttribute("user");
		if(user != null) {
			System.out.println("댓글 등록 완료");
			rttr.addAttribute("boardNo",  boRep.getBoardNo());
			rttr.addAttribute("pageNum", pageNum);
			rttr.addAttribute("amount", amount);
			return "redirect:/board/loungeRead";
		} else {
			System.out.println("자유게시판 글쓰기 실패");
			return "redirect:/shop/login";
		}	
	}

    // 댓글 수정 처리
    @RequestMapping(value="/boRepModify", method=RequestMethod.POST)
    public String boRepModifyPOST(BoardReplyVO boRep, @RequestParam("pageNum") int pageNum, @RequestParam("amount") int amount, RedirectAttributes rttr) throws Exception {
    	replyservice.replyModify(boRep);
    	System.out.println(boRep);
    	rttr.addAttribute("boardNo", boRep.getBoardNo());
    	rttr.addAttribute("pageNum", pageNum);
    	rttr.addAttribute("amount", amount);
    	rttr.addFlashAttribute("msg", "댓글이 수정되었습니다.");
        return "redirect:/board/loungeRead";
    }

    // 댓글 삭제 처리
    @RequestMapping(value="/boRepDelete", method=RequestMethod.POST)
    public String boRepDeletePOST(@RequestParam("boRepNo") Long boRepNo, @RequestParam("boardNo") Long boardNo, @RequestParam("pageNum") int pageNum, @RequestParam("amount") int amount, RedirectAttributes rttr) throws Exception {
    	replyservice.replyDelete(boRepNo);
    	rttr.addAttribute("boardNo", boardNo);
    	rttr.addAttribute("pageNum", pageNum);
    	rttr.addAttribute("amount", amount);
        rttr.addFlashAttribute("msg", "댓글이 삭제되었습니다.");
        return "redirect:/board/loungeRead";
    }
    
    // ----------------------------- Review 댓글 -------------------------------
 // Review 댓글 작성
 	@RequestMapping(value="/reviRepWrite", method=RequestMethod.POST)
 	public String reviRepWritePOST(ReviewReplyVO reviRep, RedirectAttributes rttr, HttpSession session,@RequestParam("pageNum") int pageNum, @RequestParam("amount") int amount) throws Exception {
 		replyservice.reviewReplyRegister(reviRep);
 		System.out.println(reviRep);
 		
 		UsersVO user = (UsersVO) session.getAttribute("user");
 		if(user != null) {
 			System.out.println("댓글 등록 완료");
 			rttr.addAttribute("reviNo",  reviRep.getReviNo());
 			rttr.addAttribute("pageNum", pageNum);
 			rttr.addAttribute("amount", amount);
 			return "redirect:/board/reviewRead";
 		} else {
 			System.out.println("자유게시판 글쓰기 실패");
 			return "redirect:/shop/login";
 		}	
 	}

     // Review 댓글 수정 처리
     @RequestMapping(value="/reviRepModify", method=RequestMethod.POST)
     public String reviRepModifyPOST(ReviewReplyVO reviRep, @RequestParam("pageNum") int pageNum, @RequestParam("amount") int amount, RedirectAttributes rttr) throws Exception {
     	replyservice.reviewReplyModify(reviRep);
     	System.out.println(reviRep);
     	rttr.addAttribute("reviNo", reviRep.getReviNo());
     	rttr.addAttribute("pageNum", pageNum);
     	rttr.addAttribute("amount", amount);
     	rttr.addFlashAttribute("msg", "댓글이 수정되었습니다.");
         return "redirect:/board/reviewRead";
     }

     // Review 댓글 삭제 처리
     @RequestMapping(value="/reviRepDelete", method=RequestMethod.POST)
     public String reviRepDeletePOST(@RequestParam("reviRepNo") Long reviRepNo, @RequestParam("reviNo") Long reviNo, @RequestParam("pageNum") int pageNum, @RequestParam("amount") int amount, RedirectAttributes rttr) throws Exception {
     	replyservice.reviewReplyDelete(reviRepNo);
     	rttr.addAttribute("reviNo", reviNo);
     	rttr.addAttribute("pageNum", pageNum);
     	rttr.addAttribute("amount", amount);
         rttr.addFlashAttribute("msg", "댓글이 삭제되었습니다.");
         return "redirect:/board/reviewRead";
     }

}
