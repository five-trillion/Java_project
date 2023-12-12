package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.domain.BoardVO;
import com.shop.domain.CartVO;
import com.shop.domain.DeliveryVO;
import com.shop.domain.OrderDetailVO;
import com.shop.domain.OrderInfoVO;
import com.shop.domain.ProductVO;
import com.shop.domain.ReviewVO;
import com.shop.domain.UsersVO;
import com.shop.mapper.ShopMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ShopServiceImpl implements ShopService {

	@Autowired
	ShopMapper mapper;
	
	@Override
	public List<BoardVO> freepopList() throws Exception {
		// TODO Auto-generated method stub
		try {
//			System.out.println("=====Service.freepopList=====");
			return mapper.freepopList();
		} catch (Exception e) {
		      log.error("Error fetching freelist", e);
		      return null;
		}
	}
	
	@Override
	public List<BoardVO> freeList() throws Exception {
		return mapper.freeList();
	}

	@Override
	public BoardVO freeDetail(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.freeDetail(boardNo);
	}

	@Override
	public int updateFreeBoardCnt(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.updateFreeBoardCnt(boardNo);
	}

	@Override
	public int freeRegister(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return mapper.freeRegister(boardVO);
	}

	@Override
	public int freeUpdate(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return mapper.freeUpdate(boardVO);
	}

	@Override
	public int freeDelete(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.freeDelete(boardNo);
	}
	
	@Override
	public List<ProductVO> prodList() throws Exception{
		try {
//			System.out.println("=====Service.prodList=====");
			return mapper.prodList();
		} catch (Exception e) {
		      log.error("Error fetching prodlist", e);
		      return null;
		}
	}
	
	@Override
	public List<ProductVO> prodbrandList(String brand) throws Exception{
		System.out.println("=====Service.prodbrandList=====");
		return mapper.prodbrandList(brand);
	}
	
	@Override
	public List<ProductVO> prodcatList(String category) throws Exception{
		System.out.println("=====Service.prodcategoryList=====");
		return mapper.prodcatList(category);
	}
	
	@Override
	public ProductVO prodDetail(String prodNo) throws Exception{
		try {
//			System.out.println("=====Service.prodDetail=====");
			return mapper.prodDetail(prodNo);
		} catch (Exception e) {
		      log.error("Error fetching proddetail", e);
		      return null;
		}
	}
	
	@Override
	public int updateProdCnt(String prodNo) throws Exception {
		try {
//			System.out.println("=====Service.prodcnt=====");
			return mapper.updateProdCnt(prodNo);
		} catch (Exception e) {
		      log.error("Error fetching prodcnt", e);
		      return 0;
		}
	}
	
	@Override
	public List<ProductVO> prodpopList() throws Exception {
		try {
//			System.out.println("=====Service.prodpopList=====");
			return mapper.prodpopList();
		} catch (Exception e) {
		      log.error("Error fetching prodpoplist", e);
		      return null;
		}
	}
	
	@Override
	public List<ReviewVO> reviewList() throws Exception {
		try {
			System.out.println("=====Service.prodreviList=====");
			return mapper.reviewList();
		} catch (Exception e) {
		      log.error("Error fetching prodrevilist", e);
		      return null;
		}
	}
	
	@Override
	public List<ReviewVO> reviewdList(String prodNo) throws Exception {
		try {
//			System.out.println("=====Service.prodrevidList=====");
			return mapper.reviewdList(prodNo);
		} catch (Exception e) {
		      log.error("Error fetching prodrevidlist", e);
		      return null;
		}
	}
	
	@Override
	public ReviewVO reviewDetail(int reviNo) throws Exception {
		return mapper.reviewDetail(reviNo);
	}
	
	@Override
	public int updateReviewCnt(int reviNo) throws Exception {
		return mapper.updateReviewCnt(reviNo);
	}
	
	@Override
	public int reviewRegister(ReviewVO reviVO) throws Exception {
		return mapper.reviewRegister(reviVO);
	}
	
	@Override
	public int reviewUpdate(ReviewVO reviVO) throws Exception {
		return mapper.reviewUpdate(reviVO);
	}
	
	@Override
	public int reviewDelete(int reviNo) throws Exception {
		return mapper.reviewDelete(reviNo);
	}
	
	@Override
	public int addCart(CartVO cartVO) throws Exception {
		System.out.println("=====Service.addcart=====");
		CartVO countCart = mapper.countCart(cartVO);
		if (countCart != null) {
			return 2;
		}
		try {
			return mapper.addCart(cartVO);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int updateCart(CartVO cartVO) throws Exception{
		return mapper.updateCart(cartVO);
	}
	
	@Override
	public int deleteCart(int cartNo) throws Exception{
		return mapper.deleteCart(cartNo);
	}
	
	@Override
	public List<CartVO> getCart(long userNo) throws Exception {
		System.out.println("=====Service.getcart=====");
		return mapper.getCart(userNo);
	}
	
	@Override
	public int removeCart(CartVO cartVO) throws Exception {
		return mapper.removeCart(cartVO);
	}
	
	@Override
	public void orderInfo(OrderInfoVO orderVO) throws Exception {
		mapper.orderInfo(orderVO);
	}
	
	@Override
	public void orderDetail(OrderDetailVO orderdtVO) throws Exception{
		mapper.orderDetail(orderdtVO);
	}
	
	@Override
	public void deliInfo(DeliveryVO deliVO) throws Exception {
		mapper.deliInfo(deliVO);
	}
	
}
