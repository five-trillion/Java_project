  package com.shop.service;

import java.util.List;

import com.shop.domain.AnswerVO;
import com.shop.domain.BoardReplyVO;
import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
import com.shop.domain.ProductVO;
import com.shop.domain.ReportVO;
import com.shop.domain.ReviewReplyVO;
import com.shop.domain.SalesVO;
import com.shop.domain.UsersVO;

import lombok.extern.log4j.Log4j;

public interface AdminService {

	// 회원 -----------
	// 회원리스트
	public List<UsersVO> getUsers()  throws Exception;
	
	// 회원삭제
	public void userDelete(long userNo);
	// 회원 정보가져오기
	public UsersVO getUserDetail(long userNo);
	// 회원 정보수정
	public void UpdateUserDetail(UsersVO usersVo);
	// end 회원 ------------
	
	
	// 상품등록
	public void prodRegister (ProductVO prodVo);
	
	//
	public List<CodeVO> prodCodeInsert();
	
	
	// 게시판 ----------
	// 게시판 조회
	public List<BoardVO> getBoard(String boardClass);
	// 질의게시판 조회(답변여부 포함)
	public List<BoardVO> getBoardQna();
	// 게시글 조회
	public BoardVO getBoardDetail(long boardNo);
	// 공지쓰기
	public void notiWrite(BoardVO boardVo);
	// 공지 수정
	public void notiModify(BoardVO boardVo);	
	// 질의 답변
	public void ansComplete(AnswerVO answerVo);
	// 답변 가져오기
	public AnswerVO getAnswer(long boardNo);
	// 답변 수정
	public void updateAnswer(AnswerVO answerVo);
	// 게시판 삭제
	public void boardDelete(long boardNo);
	
	// 게시판 리뷰보기
	public List<BoardReplyVO> getBoardReview(long boardNo);
	// 게시판 리뷰삭제
	public void boardReviwDelete(long boRepNo);
	// end 게시판 --------
	
	
	// 신고관리 ----------
	// 신고 리스트
	public List<ReportVO> getReport();
	// 신고 상세
	public BoardVO reportBoard (long boardNo); 
	public BoardReplyVO reportBoRep (long boRepNo); 
	public ReviewReplyVO reportReviRep (long reviRepNo);
	// 신고 처리
	public void reportComplete(int repoNo);
	// end 신고관리--------
	public List<ProductVO> getListProd() throws Exception;
	
	public boolean prodModify(ProductVO prodVo);
	
	public ProductVO getProd(String prodNo);
	
	public boolean prodRemove(String prodNo);
	
	// 정산 -----------------
	// 매출관리정보
	public List<SalesVO> getSalesInfo();
}
