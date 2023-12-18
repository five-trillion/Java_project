package com.shop.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
import com.shop.domain.DeliveryVO;
import com.shop.domain.OrderDetailVO;
import com.shop.domain.OrderInfoVO;
import com.shop.domain.ProductVO;
import com.shop.domain.UsersVO;
import com.shop.mapper.AdminMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AdminServiceImpl implements AdminService {

	@Override
	public boolean prodModify(ProductVO prodVo) {
		log.info("상품정보 변경 service 지나가는 중");
		return mapper.prodUpdate(prodVo) == 1;
	}
	
	@Override
	public boolean prodRemove(String prodNo) {
		log.info("상품 삭제 service 지나가는 중");
		return mapper.prodRemove(prodNo) == 1;
	}
	
	@Override
	public void prodRegister(ProductVO prodVo) {
		mapper.prodInsert(prodVo);
	}

	@Override
	public void userDelete(long userNo) {
		// TODO Auto-generated method stub
		mapper.userDelete(userNo);
	}

	@Override
	public List<CodeVO> prodCodeInsert() {
		return mapper.prodCodeInsert();
	}

	@Autowired
	AdminMapper mapper;
	

	@Override
	public List<BoardVO> getNotiBoard(String boardClass) {
		System.out.println("service 지나가는 중");
		return mapper.getNotiBoard(boardClass);	
	}

	@Override
	public List<UsersVO> getUsers()  throws Exception {
		System.out.println("service 지나가는 중");
		return mapper.getUsers();
	}

	@Override
	public List<ProductVO> getListProd() {
		System.out.println("prodList service 지나가는중");
		return mapper.getListProd();
	}
	
	@Override
	public ProductVO getProd(String prodNo) {
		log.info("getProd service 지나가는중"+prodNo);
		return mapper.readProd(prodNo);
	}
	
	@Override
	public List<OrderDetailVO> getListOrederDetail() {
		log.info("orderdetail 지나가는중");
		return mapper.getListOrederDetail();
	}
	
	@Override
	public List<DeliveryVO> getListDelivery() {
		log.info("delovery 지나가는중");
		return mapper.getListDelivery();
	}
	@Override
	public List<OrderInfoVO> orderList() {
	    log.info("orderinfo 지나가는중");
	    List<OrderInfoVO> result = mapper.orderList();
	    log.info("OrderList Result: " + result);
	    return result;
	}
	
	@Override
    public void deliInfo(String orderNo, String deliInfo) {
        mapper.deliInfo(orderNo, deliInfo);
    }
	
	@Override
	public List<OrderInfoVO> orderUnsetList() {
	    log.info("orderUnsetList 지나가는중");
	    List<OrderInfoVO> result = mapper.orderUnsetList();
	    log.info("OrderUnsetList Result: " + result);
	    return result;
	}
	
	public List<OrderInfoVO> adminOrderDetail(){
		log.info("orderDetail 지나가는중");
	    List<OrderInfoVO> result = mapper.adminOrderDetail();
	    log.info("adminOrderDetail Result: " + result);
	    return result;
	}
}
