package com.shop.service;

import java.util.List;

import com.shop.domain.BoardVO;
import com.shop.domain.ProductVO;

public interface ShopService {
	
	// ======================자유게시판======================
	//전체목록 처리를 위한 메소드
	public List<BoardVO> freepopList() throws Exception;
	
	//선택목록(글읽기)을 위한 메소드
	public BoardVO freeDetail(int boardNo) throws Exception;
	
	//조회수 증가를 위한 메소드
	public int updateFreeBoardCnt(int boardNo) throws Exception;
	
	//글쓰기를 위한 메소드
	public int freeRegister(BoardVO boardVO) throws Exception;
	
	//글수정을 위한 메소드
	public int freeUpdate(BoardVO boardVO) throws Exception;
	
	//글삭제를 위한 메소드
	public int freeDelete(int boardNo) throws Exception;
	
	
	// ======================상품======================
	//전체목록 처리를 위한 메소드
	public List<ProductVO> prodList() throws Exception;
	
	//선택목록(글읽기)을 위한 메소드
	public ProductVO prodDetail(String prodNo) throws Exception;
	
	//조회수 증가를 위한 메소드
	public int updateProdCnt(String prodNo) throws Exception;
}
