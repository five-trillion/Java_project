package com.shop.mapper;

import java.util.List;

import com.shop.domain.AnswerVO;
import com.shop.domain.BoardReplyVO;
import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
import com.shop.domain.ProductVO;
import com.shop.domain.ReportVO;
import com.shop.domain.ReviewReplyVO;
import com.shop.domain.UsersVO;

public interface AdminMapper {
	// 회원관리---------
	public List<UsersVO> getUsers();

	
	public void userDelete(long userNo);
	// end 회원관리--------
	
	// 상품관리----------
	public void prodInsert(ProductVO prodVo);
	
	public List<CodeVO> prodCodeInsert();
	// end 상품관리--------
	
	// 게시판 ----------
	// 게시판 조회
	public List<BoardVO> getBoard(String boardClass);
	// 질의게시판 조회(답변여부 포함)
	public List<BoardVO> getBoardQna();
	// 게시글 조회
	public BoardVO getBoardDetail(long boardNo);
	// 공지쓰기
	public void notiWrite(BoardVO boardVo);
	// 질의 답변
	public void ansComplete(AnswerVO answerVo);
	// 게시판 삭제
	public void boardDelete(long boardNo);
	// end 게시판 --------
	
	
	// 신고관리 ----------
	public List<ReportVO> getReport();
	
	public BoardVO reportBoard (long boardNo); 
	public BoardReplyVO reportBoRep (long borepNo); 
	public ReviewReplyVO reportReviRep (long reviRepNo);
	
	public void reportComplete(int repoNo);
	// end 신고관리 --------
	
}
