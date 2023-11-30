package com.shop.mapper;

import java.util.List;

import com.shop.domain.BoardVO;
import com.shop.domain.ProductVO;

public interface ShopMapper {
	
	//자유게시판 전체목록 처리를 위한 메소드 
	public List<BoardVO> freepopList() throws Exception;
	
	//자유게시판 선택목록(글읽기)을 위한 메소드 
	public BoardVO freeDetail(int boardNo) throws Exception;
	
	//자유게시판 조회수 증가를 위한 메소드 
	public int updateFreeBoardCnt(int boardNo) throws Exception;
	
	//자유게시판 글쓰기를 위한 메소드 
	public int freeRegister(BoardVO boardVO) throws Exception;
	 
	//자유게시판 글수정을 위한 메소드 
	public int freeUpdate(BoardVO boardVO) throws Exception;
	 
	//자유게시판 글삭제를 위한 메소드 
	public int freeDelete(int boardNo) throws Exception;
	 
	//---------------------------------------------------------------------------
	 
	//상품 전체목록 처리를 위한 메소드 
	public List<ProductVO> prodList() throws Exception;
	 
	//상품 선택목록(상세보기)을 위한 메소드 
	public ProductVO prodDetail(String prodNo) throws Exception;
	
	//조회수 증가를 위한 메소드 
	public int updateProdCnt(String prodNo) throws Exception;
	
	 //상품 등록을 위한 메소드 
	 public int prodRegister(ProductVO productVO) throws Exception;
	 
	 //상품 수정을 위한 메소드 
	 public int prodUpdate(ProductVO productVO) throws Exception;

	 //상품 삭제를 위한 메소드 
	 public int prodDelete(int prodNo) throws Exception;
	 
	//---------------------------------------------------------------------------
	 
	 
}
