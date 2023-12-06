package com.shop.service;

import java.util.List;

import com.shop.domain.BoardVO;
import com.shop.domain.CartVO;
import com.shop.domain.ProductVO;
import com.shop.domain.ReviewVO;
import com.shop.domain.UsersVO;

public interface ShopService {
	
	// ======================자유게시판======================
	//메인페이지 인기글 처리를 위한 메소드
	public List<BoardVO> freepopList() throws Exception;
	
	//전체목록 처리를 위한 메소드
	public List<BoardVO> freeList() throws Exception;
	
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
	
	//메인페이지 인기상품 출력을 위한 메소드
	public List<ProductVO> prodpopList() throws Exception;
	
	// ======================리뷰======================
	//리뷰 전체목록 처리를 위한 메소드 
	public List<ReviewVO> reviewList() throws Exception;
	
	//상품상세페이지 리뷰 처리를 위한 메소드 
	public List<ReviewVO> reviewdList(String prodNo) throws Exception;
	
	//리뷰 선택목록(글읽기)을 위한 메소드 
	public ReviewVO reviewDetail(int reviNo) throws Exception;
	
	//리뷰 조회수 증가를 위한 메소드 
	public int updateReviewCnt(int reviNo) throws Exception;
	
	//리뷰 쓰기를 위한 메소드 
	public int reviewRegister(ReviewVO reviVO) throws Exception;
	 
	//리뷰 수정을 위한 메소드 
	public int reviewUpdate(ReviewVO reviVO) throws Exception;
	 
	//리뷰 삭제를 위한 메소드 
	public int reviewDelete(int reviNo) throws Exception;
	
	// ======================장바구니======================
	//장바구니 추가
	public int addCart(CartVO cartVO) throws Exception;
	
	//장바구니 수정 
	public int updateCart(CartVO cartVO) throws Exception;
	
	//장바구니 삭제
	public int deleteCart(int cartId) throws Exception;
	
	//장바구니 목록 조회
	public List<CartVO> getCart(long userNo) throws Exception;
	
	//카트에 있는 상품인지 조회
	public int countCart(CartVO cartVO) throws Exception;
	
	// ======================회원======================
	
}
