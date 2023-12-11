package com.shop.controller;
  
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shop.domain.BoardVO;
import com.shop.domain.Criteria;
import com.shop.domain.PageMakerVO;
import com.shop.domain.UsersVO;
import com.shop.service.BoardService;
  
  
@Controller 
@RequestMapping(value="/board/*")
public class BoardController {
	
	@Autowired
	BoardService boardservice;
	
	// ============================== 공지사항 ==============================
	
	//공지사항 페이지 이동
	@RequestMapping(value="/notice", method= {RequestMethod.GET,RequestMethod.POST} ) 
	public void noticeGET(Model model, Criteria cri) throws Exception {
		System.out.println("공지사항 페이지 진입");
		model.addAttribute("noticeList", boardservice.getNoticeListPaging(cri));
		int total = boardservice.getNoticeTotal(cri);
		System.out.println("공지사항 총 게시물 수:" + total);
		PageMakerVO pagemake = new PageMakerVO(cri,total);
		System.out.println("pageNum:" + cri.getPageNum());
		model.addAttribute("pageNum", cri.getPageNum());
		model.addAttribute("amount", cri.getAmount());
		model.addAttribute("pageMaker", pagemake);
	} 
	
	//공지사항 읽기 페이지 이동
	@RequestMapping(value="/noticeRead", method=RequestMethod.GET)
	public void noticeReadGET(@RequestParam("boardNo") Long boardNo, @RequestParam("pageNum") int pageNum, @RequestParam("amount") int amount, Model model, Criteria cri) throws Exception {
		System.out.println("공지사항 읽기 페이지 진입");
		boardservice.updateNoticeCnt(boardNo);
		System.out.println("boardNo:"+boardNo);
		model.addAttribute("noticeDetail", boardservice.noticeDetail(boardNo));
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("amount", amount);
		model.addAttribute("cri", cri);
	}
	
	// ================================= QnA =================================
	
	//QnA 페이지 이동
	@RequestMapping(value="/qna", method= {RequestMethod.GET,RequestMethod.POST} ) 
	public void qnaGET(Model model, Criteria cri) throws Exception {
		System.out.println("QnA 페이지 진입");
		model.addAttribute("qnaList", boardservice.getQnaListPaging(cri));
		int total = boardservice.getQnaTotal(cri);
		System.out.println("QnA 총 게시물 수:" + total);
		PageMakerVO pagemake = new PageMakerVO(cri,total);
		System.out.println("pageNum:" + cri.getPageNum());
		model.addAttribute("pageNum", cri.getPageNum());
		model.addAttribute("amount", cri.getAmount());
		model.addAttribute("pageMaker", pagemake);
	} 
	
	//QnA 게시물 읽기 페이지 이동
	@RequestMapping(value="/qnaRead", method=RequestMethod.GET) 
	public void qnaReadGET(@RequestParam("boardNo") Long boardNo, Model model) throws Exception {
		System.out.println("QnA 게시물 읽기 페이지 진입");
		boardservice.updateQnaCnt(boardNo);
		model.addAttribute("qnaDetail", boardservice.qnaDetail(boardNo));
	} 

	//QnA 글쓰기 페이지 이동
	@RequestMapping(value="/qnaWrite", method=RequestMethod.GET) 
	public void qnaWriteGET() {
		System.out.println("QnA 글쓰기 페이지 진입");
	}
	
	//QnA 게시물 작성 
	@RequestMapping(value="/qnaWrite", method=RequestMethod.POST)
	public String qnaWritePOST(BoardVO board, RedirectAttributes rttr, HttpSession session) throws Exception {
		UsersVO user = (UsersVO) session.getAttribute("user");
		if(user != null) {
			board.setUserNo(user.getUserNo());
			System.out.println("QnA 글쓰기 성공");
			boardservice.qnaRegister(board);
			rttr.addFlashAttribute("result", "write success");
			return "redirect:/board/qna";
		} else {
			System.out.println("QnA 글쓰기 실패(로그인 필요)");
			return "redirect:/shop/login";
		}		
	}
	
	//QnA 게시물 수정 페이지 이동
	@RequestMapping(value="/qnaModify", method=RequestMethod.GET) 
	public void qnaModifyGET(@RequestParam("boardNo") Long boardNo, Model model) throws Exception {
		System.out.println("QnA 게시물 수정 페이지 진입");
		model.addAttribute("qnaDetail", boardservice.qnaDetail(boardNo)); 
	}
	
	//QnA 게시물 수정
	@RequestMapping(value="/qnaModify", method=RequestMethod.POST)
	public String qnaModifyPOST(BoardVO board, RedirectAttributes rttr, Model model) throws Exception {
		boardservice.qnaUpdate(board);
		System.out.println("QnA 게시글 수정 성공");
		rttr.addFlashAttribute("result","modify success");
		model.addAttribute("qnaDetail", boardservice.qnaDetail(board.getBoardNo()));
		return "redirect:/board/qna";
	}
	
	//QnA 게시물 삭제
	@RequestMapping(value="/qnaDelete", method=RequestMethod.POST)
	public String boardDeletePOST(@RequestParam("boardNo") Long boardNo, RedirectAttributes rttr) throws Exception {
		boardservice.qnaDelete(boardNo);
		System.out.println("QnA 게시글 삭제 성공");
		rttr.addFlashAttribute("result", "delete success");
		return "redirect:/board/qna";
	}

	// ============================== 자유게시판 ==============================
	
	//자유게시판 페이지 이동
	@RequestMapping(value="/lounge", method= {RequestMethod.GET,RequestMethod.POST} ) 
	public void loungeGET(Model model, Criteria cri) throws Exception {
		System.out.println("자유게시판 페이지 진입");
		model.addAttribute("freeList", boardservice.getFreeListPaging(cri));
		int total = boardservice.getFreeTotal(cri);
		System.out.println("자유게시판 총 게시물 수:" + total);
		PageMakerVO pagemake = new PageMakerVO(cri,total);
		System.out.println("pageNum:" + cri.getPageNum());
		model.addAttribute("pageNum", cri.getPageNum());
		model.addAttribute("amount", cri.getAmount());
		model.addAttribute("pageMaker", pagemake);
	}
	
	//자유게시판 게시물 읽기 페이지 이동
	@RequestMapping(value="/loungeRead", method=RequestMethod.GET) 
	public void loungeReadGET(@RequestParam("boardNo") Long boardNo, Model model) throws Exception {
		System.out.println("자유게시판 게시물 읽기 페이지 진입");
		boardservice.updateFreeCnt(boardNo);
		model.addAttribute("freeDetail", boardservice.freeDetail(boardNo));
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
			rttr.addFlashAttribute("result", "write success");
			return "redirect:/board/lounge";
		} else {
			System.out.println("자유게시판 글쓰기 실패");
			rttr.addFlashAttribute("needLogin", "로그인이 필요합니다.");
			return "redirect:/shop/login";
		}		
	}
	
	//자유게시판 게시물 수정 페이지 이동
	@RequestMapping(value="/loungeModify", method=RequestMethod.GET) 
	public void loungeModifyGET(@RequestParam("boardNo") Long boardNo, Model model) throws Exception {
		System.out.println("자유게시판 게시물 수정 페이지 진입");
		model.addAttribute("freeDetail", boardservice.freeDetail(boardNo)); 
	}
	
	//자유게시판 게시물 수정
	@RequestMapping(value="/loungeModify", method=RequestMethod.POST)
	public String loungeModifyPOST(BoardVO board, RedirectAttributes rttr, Model model) throws Exception {
		boardservice.freeUpdate(board);
		System.out.println("자유게시판 게시글 수정 성공");
		rttr.addFlashAttribute("result","modify success");
		model.addAttribute("freeDetail", boardservice.freeDetail(board.getBoardNo()));
		return "redirect:/board/lounge";
	}
	
	//자유게시판 게시물 삭제
	@RequestMapping(value="/loungeDelete", method=RequestMethod.POST)
	public String freeDeletePOST(@RequestParam("boardNo") Long boardNo, RedirectAttributes rttr) throws Exception {
		boardservice.freeDelete(boardNo);
		System.out.println("자유게시판 게시글 삭제 성공");
		rttr.addFlashAttribute("result", "delete success");
		return "redirect:/board/lounge";
	}
} 
