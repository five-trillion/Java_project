package com.shop.controller;
  
import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shop.domain.BoardReplyVO;
import com.shop.domain.BoardVO;
import com.shop.domain.Criteria;
import com.shop.domain.PageMakerVO;
import com.shop.domain.ReviewReplyVO;
import com.shop.domain.UsersVO;
import com.shop.service.BoardService;
import com.shop.service.ReplyService;
  
  
@Controller 
@RequestMapping(value="/board/*")
public class BoardController {
	
	@Autowired
	BoardService boardservice;
	
	@Inject
	ReplyService replyservice;
	
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
	public void qnaReadGET(@RequestParam("boardNo") Long boardNo, @RequestParam("pageNum") int pageNum, @RequestParam("amount") int amount, Model model, Criteria cri) throws Exception {
		System.out.println("QnA 게시물 읽기 페이지 진입");
		boardservice.updateQnaCnt(boardNo);
		model.addAttribute("qnaDetail", boardservice.qnaDetail(boardNo));
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("amount", amount);
		model.addAttribute("cri", cri);

	} 

	//QnA 글쓰기 페이지 이동
	@RequestMapping(value="/qnaWrite", method=RequestMethod.GET) 
	public void qnaWriteGET(RedirectAttributes rttr, HttpSession session) {
		UsersVO user = (UsersVO) session.getAttribute("user");
		if(user != null) {
			System.out.println("QnA 글쓰기 페이지 진입");
		} else {
			System.out.println("QnA 글쓰기 실패");
			rttr.addFlashAttribute("needLogin","로그인이 필요합니다.");
		}
		
	}
	
	//QnA 게시물 작성 
	@RequestMapping(value="/qnaWrite", method=RequestMethod.POST)
	public String qnaWritePOST(BoardVO board, UsersVO user,RedirectAttributes rttr, HttpSession session, @RequestParam("uploadFile") MultipartFile uploadFile) throws Exception {
		String uploadFolder = "D:/Java_project/project5/src/main/webapp/resources/upload/qna/";
		board.setUserNo(user.getUserNo());
		
		// 파일 저장 
		if (uploadFile != null && !uploadFile.isEmpty()) {
			// 파일 이름 
			String uploadFileName = uploadFile.getOriginalFilename();
			// 고유 식별자 적용 파일 이름
			String uuid = UUID.randomUUID().toString();
			uploadFileName = uuid + "_" + uploadFileName;
			// 파일 위치, 파일 이름을 합친 File 객체 
			File saveFile = new File(uploadFolder, uploadFileName);
			board.setBoardImg(uploadFileName);
			try {
				uploadFile.transferTo(saveFile);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
		board.setUserNo(user.getUserNo());
		System.out.println("QnA 글쓰기 성공");
		boardservice.qnaRegister(board);
		rttr.addFlashAttribute("result", "write success");
		return "redirect:/board/qna";
	}
	
	//QnA 게시물 수정 페이지 이동
	@RequestMapping(value="/qnaModify", method=RequestMethod.GET) 
	public void qnaModifyGET(@RequestParam("boardNo") Long boardNo, Model model) throws Exception {
		System.out.println("QnA 게시물 수정 페이지 진입");
		BoardVO qnaDetail = boardservice.qnaDetail(boardNo);
		model.addAttribute("qnaDetail",qnaDetail);
		model.addAttribute("boardImg",qnaDetail.getBoardImg());
		model.addAttribute("qnaDetail", boardservice.qnaDetail(boardNo)); 
	}
	
	//QnA 게시물 수정
	@RequestMapping(value="/qnaModify", method=RequestMethod.POST)
	public String qnaModifyPOST(BoardVO board, RedirectAttributes rttr, Model model, @RequestParam(value="updateFile", required=false) MultipartFile updateFile) throws Exception {
		String uploadFolder = "D:/Java_project/project5/src/main/webapp/resources/upload/qna/";
		String existFileName = boardservice.qnaDetail(board.getBoardNo()).getBoardImg();
		if (updateFile != null && !updateFile.isEmpty()) {
			String uploadFileName = updateFile.getOriginalFilename();
			String uuid = UUID.randomUUID().toString();
			uploadFileName = uuid + "_" + uploadFileName;
			File existFile = new File(uploadFolder, existFileName);
			if(existFile.exists()) {
				existFile.delete();
			}
			File saveFile = new File(uploadFolder, uploadFileName);
	        updateFile.transferTo(saveFile);
	        board.setBoardImg(uploadFileName);
		}
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
	public void loungeReadGET(@RequestParam("boardNo") Long boardNo, @RequestParam("pageNum") int pageNum, @RequestParam("amount") int amount, Model model, Criteria cri) throws Exception {
		System.out.println("자유게시판 게시물 읽기 페이지 진입");
		boardservice.updateFreeCnt(boardNo);
		model.addAttribute("freeDetail", boardservice.freeDetail(boardNo));
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("amount", amount);
		model.addAttribute("cri", cri);
		//댓글 조회
		List<BoardReplyVO> reply = replyservice.getReplyList(boardNo);
		model.addAttribute("reply",reply);
	} 
	
	//자유게시판 글쓰기 페이지 이동
	@RequestMapping(value="/loungeWrite", method=RequestMethod.GET) 
	public void loungeWriteGET(RedirectAttributes rttr, HttpSession session) {
		UsersVO user = (UsersVO) session.getAttribute("user");
		if(user != null) {
			System.out.println("자유게시판 글쓰기 페이지 진입");
		} else {
			System.out.println("자유게시판 글쓰기 실패");
			rttr.addFlashAttribute("needLogin", "로그인이 필요합니다.");
		}	
	} 
	
	//자유게시판 게시물 작성
	@RequestMapping(value="/loungeWrite", method=RequestMethod.POST)
	public String loungeWritePOST(BoardVO board, UsersVO user, RedirectAttributes rttr, HttpSession session, @RequestParam("uploadFile") MultipartFile uploadFile) throws Exception {
		String uploadFolder = "D:/Java_project/project5/src/main/webapp/resources/upload/lounge/";
		board.setUserNo(user.getUserNo());
		// 파일 저장 
		if (uploadFile != null && !uploadFile.isEmpty()) {
			// 파일 이름 
			String uploadFileName = uploadFile.getOriginalFilename();
			// 고유 식별자 적용 파일 이름
			String uuid = UUID.randomUUID().toString();
			uploadFileName = uuid + "_" + uploadFileName;
			// 파일 위치, 파일 이름을 합친 File 객체 
			File saveFile = new File(uploadFolder, uploadFileName);
			board.setBoardImg(uploadFileName);
			try {
				uploadFile.transferTo(saveFile);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
		
		board.setUserNo(user.getUserNo());
		System.out.println("자유게시판 글쓰기 성공");
		boardservice.freeRegister(board);
		rttr.addFlashAttribute("result", "write success");
		return "redirect:/board/lounge";
	}
	
	//자유게시판 게시물 수정 페이지 이동
	@RequestMapping(value="/loungeModify", method=RequestMethod.GET) 
	public void loungeModifyGET(@RequestParam("boardNo") Long boardNo, Model model) throws Exception {
		System.out.println("자유게시판 게시물 수정 페이지 진입");
		BoardVO freeDetail = boardservice.freeDetail(boardNo);
		model.addAttribute("freeDetail", freeDetail);
		model.addAttribute("boardImg", freeDetail.getBoardImg());
		model.addAttribute("freeDetail", boardservice.freeDetail(boardNo)); 
	}
	
	//자유게시판 게시물 수정
	@RequestMapping(value="/loungeModify", method=RequestMethod.POST)
	public String loungeModifyPOST(BoardVO board, RedirectAttributes rttr, Model model, @RequestParam(value="updateFile", required=false) MultipartFile updateFile) throws Exception {
		String uploadFolder = "D:/Java_project/project5/src/main/webapp/resources/upload/lounge/";
		// 이전 파일명 가져오기
		String existFileName = boardservice.freeDetail(board.getBoardNo()).getBoardImg();
		// 새로 업로드된 파일이 있는지 확인
		if (updateFile != null && !updateFile.isEmpty()) {
			String uploadFileName = updateFile.getOriginalFilename();
			String uuid = UUID.randomUUID().toString();
			uploadFileName = uuid + "_" + uploadFileName;
			File existFile = new File(uploadFolder, existFileName);
			// 기존 파일 삭제
			if(existFile.exists()) {
				existFile.delete();
			}
			// 새 파일 저장
	        File saveFile = new File(uploadFolder, uploadFileName);
	        updateFile.transferTo(saveFile);
	        // 업로드된 파일명 설정
	        board.setBoardImg(uploadFileName);
		}
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
	
	// ================================= Review =================================
	//Review 페이지 이동
	@RequestMapping(value="/review", method=RequestMethod.GET)
	public void reviewGET(Model model, Criteria cri) throws Exception {
		System.out.println("리뷰게시판 페이지 진입");
		model.addAttribute("reviewList", boardservice.getReviewListPaging(cri));
		int total = boardservice.getReviewTotal(cri);
		System.out.println("리뷰게시판 총 게시물 수:" + total);
		PageMakerVO pagemake = new PageMakerVO(cri,total);
		System.out.println("pageNum:" + cri.getPageNum());
		model.addAttribute("pageNum", cri.getPageNum());
		model.addAttribute("amount", cri.getAmount());
		model.addAttribute("pageMaker", pagemake);
	}
	
	//Review 게시물 읽기 페이지 이동
		@RequestMapping(value="/reviewRead", method=RequestMethod.GET) 
		public void reviewReadGET(@RequestParam("reviNo") Long reviNo, @RequestParam("pageNum") int pageNum, @RequestParam("amount") int amount, Model model, Criteria cri) throws Exception {
			System.out.println("자유게시판 게시물 읽기 페이지 진입");
			boardservice.updateFreeCnt(reviNo);
			model.addAttribute("reviewDetail", boardservice.reviewDetail(reviNo));
			model.addAttribute("pageNum", pageNum);
			model.addAttribute("amount", amount);
			model.addAttribute("cri", cri);
			//댓글 조회
			List<ReviewReplyVO> reply = replyservice.getReviewReplyList(reviNo);
			model.addAttribute("reply",reply);
			System.out.println(reply);
		} 
} 
