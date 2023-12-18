  package com.shop.service;

import java.util.List;

import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
import com.shop.domain.DeliveryVO;
import com.shop.domain.OrderDetailVO;
import com.shop.domain.OrderInfoVO;
import com.shop.domain.ProductVO;
import com.shop.domain.UsersVO;

import lombok.extern.log4j.Log4j;

public interface AdminService {

	
	// 회원리스트를 가져옵니다.
	public List<UsersVO> getUsers()  throws Exception;

	public List<BoardVO> getNotiBoard(String boardClass);
	
	public void userDelete(long userNo);
	
	public void prodRegister (ProductVO prodVo);
	
	public List<CodeVO> prodCodeInsert();
	
	public List<ProductVO> getListProd();
	
	public boolean prodModify(ProductVO prodVo);
	
	public ProductVO getProd(String prodNo);
	
	public boolean prodRemove(String prodNo);
	
	public List<OrderInfoVO> orderList();
	
	public List<OrderDetailVO> getListOrederDetail();
	
	public List<DeliveryVO> getListDelivery();
	
	public void deliInfo(String orderNo, String deliInfo);
	
	public List<OrderInfoVO> orderUnsetList();
	
	public List<OrderInfoVO> adminOrderDetail();
}
