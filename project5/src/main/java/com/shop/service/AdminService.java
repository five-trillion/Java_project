  package com.shop.service;

import java.util.List;

import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
import com.shop.domain.ProductVO;
import com.shop.domain.ReportVO;
import com.shop.domain.UsersVO;

import lombok.extern.log4j.Log4j;

public interface AdminService {

	
	// 회원리스트를 가져옵니다.
	public List<UsersVO> getUsers()  throws Exception;

	public List<BoardVO> getBoard(String boardClass);
	
	public void userDelete(long userNo);
	
	public void prodRegister (ProductVO prodVo);
	
	public List<CodeVO> prodCodeInsert();
	
	// 게시판 공지----------
	public void notiWrite(BoardVO boardVo);
	// end 게시판 공지--------
	
	//게시판 삭제
	public void boardDelete(long boardNo);
	
	// 게시판 공지----------
	public List<ReportVO> getReport();
	// end 게시판 공지--------
}
