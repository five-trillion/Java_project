package com.shop.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
import com.shop.domain.DeliveryVO;
import com.shop.domain.OrderDetailVO;
import com.shop.domain.OrderInfoVO;
import com.shop.domain.ProductVO;
import com.shop.domain.UsersVO;

public interface AdminMapper {
	// 회원관리---------
	public List<UsersVO> getUsers();

	public List<BoardVO> getNotiBoard(String boardClass);
	
	public void userDelete(long userNo);
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
}
