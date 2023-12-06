package com.shop.mapper;

import java.util.List;

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

	public List<BoardVO> getBoard(String boardClass);
	
	public void userDelete(long userNo);
	// end 회원관리--------
	
	// 상품관리----------
	public void prodInsert(ProductVO prodVo);
	
	public List<CodeVO> prodCodeInsert();
	// end 상품관리--------
	
	// 게시판 공지----------
	public void notiWrite(BoardVO boardVo);
	// end 게시판 공지--------
	
	//게시판 삭제
	public void boardDelete(long boardNo);
	
	// 신고관리 ----------
	public List<ReportVO> getReport();
	
	public BoardVO reportBoard (long boardNo); 
	public BoardReplyVO reportBoRep (long borepNo); 
	public ReviewReplyVO reportReviRep (long reviRepNo); 
	// end 신고관리 --------
}
