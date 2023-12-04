package com.shop.service;

import java.util.List;

import com.shop.domain.BoardVO;

public interface BoardService {
	
	// ----------------------------- 공지사항 -----------------------------
	
	// 공지사항 전체목록 처리를 위한 메서드
	public List<BoardVO> noticeList() throws Exception;
	
	//공지사항 선택목록(글읽기)을 위한 메서드 
	public BoardVO noticeDetail(int boardNo) throws Exception;
	
	//공지사항 조회수 증가를 위한 메서드
	public int updateNoticeBoardCnt(int boardNo) throws Exception;
	
	//공지사항 글쓰기를 위한 메서드 (관리자 권한)
	public void noticeRegister(BoardVO board) throws Exception;
	
	//공지사항 수정을 위한 메서드 (관리자 권한)
	public void noticeUpdate(BoardVO board) throws Exception;
	 
	//자유게시판 글삭제를 위한 메서드 (관리자 권한) 
	public void noticeDelete(int board) throws Exception;

// ----------------------------- QnA -----------------------------

	// QnA 전체목록 처리를 위한 메서드
	public List<BoardVO> qnaList() throws Exception;
	
	//QnA 선택목록(글읽기)을 위한 메서드 
	public BoardVO qnaDetail(int boardNo) throws Exception;
	
	//QnA 조회수 증가를 위한 메서드
	public int updateQnaBoardCnt(int boardNo) throws Exception;
	
	//QnA 글쓰기를 위한 메서드
	public void qnaRegister(BoardVO board) throws Exception;
	
	//QnA 수정을 위한 메서드
	public void qnaUpdate(BoardVO board) throws Exception;
	 
	//QnA 글삭제를 위한 메서드
	public void qnaDelete(int board) throws Exception;

// ----------------------------- 자유게시판 -----------------------------

	//메인페이지 자유게시판 인기게시물 노출을 위한 메소드 
	public List<BoardVO> freepopList() throws Exception;
	
	//자유게시판 전체목록 처리를 위한 메서드 
	public List<BoardVO> freeList() throws Exception;
	
	//자유게시판 선택목록(글읽기)을 위한 메서드 
	public BoardVO freeDetail(int boardNo) throws Exception;
	
	//자유게시판 조회수 증가를 위한 메서드 
	public int updateFreeBoardCnt(int boardNo) throws Exception;
	
	//자유게시판 글쓰기를 위한 메서드 
	public void freeRegister(BoardVO board) throws Exception;
	 
	//자유게시판 글수정을 위한 메서드 
	public void freeUpdate(BoardVO board) throws Exception;
	 
	//자유게시판 글삭제를 위한 메서드 
	public void freeDelete(int board) throws Exception;

}

