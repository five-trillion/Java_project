package com.shop.service;

import java.util.List;

import com.shop.domain.BoardReplyVO;
import com.shop.domain.BoardVO;
import com.shop.domain.CartVO;
import com.shop.domain.DeliveryVO;
import com.shop.domain.OrderDetailVO;
import com.shop.domain.OrderInfoVO;
import com.shop.domain.OrderVO;
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
	
		//---------------------------------------------------------------------------
		//상품목록
	
		public List<ProductVO> prodbrandList(String brand) throws Exception;
		
		public List<ProductVO> prodcatList(String category) throws Exception;
		
		
		//---------------------------------------------------------------------------
	
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
	public int deleteCart(int cartNo) throws Exception;
	
	//장바구니 목록 조회
	public List<CartVO> getCart(long userNo) throws Exception;
	
	//주문완료 시 장바구니 목록 삭제
	public int removeCart(CartVO cartVO) throws Exception;
	
	//카트에 있는 상품인지 조회
//	public CartVO countCart(CartVO cartVO) throws Exception;
	
	// ======================주문======================
	
	//주문 테이블 정보 추가
	public void orderInfo(OrderInfoVO orderVO) throws Exception;
	
	//주문상세 테이블 정보 추가
	public void orderDetail(OrderDetailVO orderdtVO) throws Exception;
	
	//배송 테이블 정보 추가
	public void deliInfo(DeliveryVO deliVO) throws Exception;
	
	//주문완료 페이지
	public List<OrderVO> getCom(String orderNo) throws Exception;
	
	//주문완료 페이지
	public List<OrderVO> getorder(long userNo) throws Exception;
	
	//마이페이지 주문상세조회
	public List<OrderVO> getordetail(String orderNo) throws Exception;
	
	// =====================================================
	
	//마이페이지 리뷰작성페이지 띄우기
	public List<OrderVO> getProd(long userNo) throws Exception;
	
	//마이페이지 리뷰목록 띄우기
	public List<ReviewVO> getRevi(long userNo) throws Exception;
	
	//마이페이지 작성한게시글 띄우기
	public List<BoardVO> getLounge(long userNo) throws Exception;
	
	//마이페이지 작성한댓글 띄우기
	public List<BoardReplyVO> getReply(long userNo) throws Exception;
	
	//마이페이지 문의 띄우기
	public List<BoardVO> getQna(long userNo) throws Exception;
	
}
