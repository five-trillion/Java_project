package com.shop.service;

import java.util.List;

import com.shop.domain.BoardVO;
import com.shop.domain.Criteria;
import com.shop.domain.ReviewVO;

public interface BoardService {
	
	// ----------------------------- 공지사항 -----------------------------
	
	// 공지사항 게시판 목록 페이징
	public List<BoardVO> getNoticeListPaging(Criteria cri);
	
	// 공지사항 게시판 총 갯수
    public int getNoticeTotal(Criteria cri);
	
	// 공지사항 조회수 증가를 위한 메서드
	public int updateNoticeCnt(long boardNo) throws Exception;
	
	// 공지사항 선택목록(글읽기)을 위한 메서드 
	public BoardVO noticeDetail(long boardNo) throws Exception;

// ----------------------------- QnA -----------------------------

	// QnA 게시판 목록 페이징
	public List<BoardVO> getQnaListPaging(Criteria cri);
	
	// QnA 게시판 총 갯수 
    public int getQnaTotal(Criteria cri);
    
	// QnA 선택목록(글읽기)을 위한 메서드 
	public BoardVO qnaDetail(long boardNo) throws Exception;
	
	// QnA 조회수 증가를 위한 메서드
	public int updateQnaCnt(long boardNo) throws Exception;
	
	// QnA 글쓰기를 위한 메서드
	public void qnaRegister(BoardVO board) throws Exception;
	
	// QnA 수정을 위한 메서드
	public int qnaUpdate(BoardVO board) throws Exception;
	 
	// QnA 글삭제를 위한 메서드
	public int qnaDelete(long boardNo) throws Exception;

// ----------------------------- 자유게시판 -----------------------------

	// 메인페이지 자유게시판 인기게시물 노출을 위한 메소드 
	public List<BoardVO> freepopList() throws Exception;
	
	// 자유게시판 게시판 목록 페이징
	public List<BoardVO> getFreeListPaging(Criteria cri);
	
	// 자유게시판 게시판 총 갯수 
    public int getFreeTotal(Criteria cri);
	
	// 자유게시판 조회수 증가를 위한 메서드 
	public int updateFreeCnt(long boardNo) throws Exception;
	
	// 자유게시판 선택목록(글읽기)을 위한 메서드 
	public BoardVO freeDetail(long boardNo) throws Exception;
	
	// 자유게시판 조회수 증가를 위한 메서드 
	public int updateFreeBoardCnt(long boardNo) throws Exception;
	
	// 자유게시판 글쓰기를 위한 메서드 
	public void freeRegister(BoardVO board) throws Exception;
	 
	// 자유게시판 글수정을 위한 메서드 
	public int freeUpdate(BoardVO board) throws Exception;
	 
	// 자유게시판 글삭제를 위한 메서드 
	public int freeDelete(long boardNo) throws Exception;
	
	// ----------------------------- Review -----------------------------
	
	// Review 게시판 목록 페이징
	public List<ReviewVO> getReviewListPaging(Criteria cri);
	
	// Review 게시판 총 갯수
    public int getReviewTotal(Criteria cri);
	
	// Review 조회수 증가를 위한 메서드
	public int updateReviewCnt(long reviNo) throws Exception;
			
	// Review 선택목록(글읽기)을 위한 메서드 
	public ReviewVO reviewDetail(long reviNo) throws Exception;

	// 리뷰쓰기를 위한 메서드 
	public void reviewRegister(ReviewVO review) throws Exception;
}

