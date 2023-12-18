package com.shop.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shop.domain.AnswerVO;
import com.shop.domain.BoardReplyVO;
import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
import com.shop.domain.DeliveryVO;
import com.shop.domain.OrderDetailVO;
import com.shop.domain.OrderInfoVO;
import com.shop.domain.ProductVO;
import com.shop.domain.ReportVO;
import com.shop.domain.ReviewReplyVO;
import com.shop.domain.SalesVO;
import com.shop.domain.UsersVO;

public interface AdminMapper {
	// 회원관리---------
	// 회원리스트
	public List<UsersVO> getUsers();
	
	public void userDelete(long userNo);
	// 회원 정보가져오기
	public UsersVO getUserDetail(long userNo);
	// 회원 정보수정
	public void UpdateUserDetail(UsersVO usersVo);
	// end 회원관리--------
	
	// 상품관리----------
	public void prodInsert(ProductVO prodVo);
	
	public List<CodeVO> prodCodeInsert();
	
	public List<ProductVO> getListProd();
	
	public int prodUpdate(ProductVO prodVo);
	
	public ProductVO readProd(String prodNo);
	
	public int prodRemove(String prodNo);
	
	public List<OrderInfoVO> orderList();
	
	public List<OrderDetailVO> getListOrederDetail();
	
	public List<DeliveryVO> getListDelivery();
	// end 상품관리--------
	void deliInfo(@Param("orderNo") String orderNo, @Param("deliInfo") String deliInfo);
	
	public List<OrderInfoVO> orderUnsetList();
	
	public List<OrderInfoVO> adminOrderDetail();
	
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
	public List<ReportVO> getReport();
	
	public BoardVO reportBoard (long boardNo); 
	public BoardReplyVO reportBoRep (long borepNo); 
	public ReviewReplyVO reportReviRep (long reviRepNo);
	
	public void reportComplete(int repoNo);
	// end 신고관리 --------
	
	
	// 정산 -----------------
	// 매출관리정보
	public List<SalesVO> getSalesInfo();
	// 가입자조회
	public List<SalesVO> getJoinView();
}
