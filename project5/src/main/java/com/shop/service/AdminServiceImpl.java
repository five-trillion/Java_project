package com.shop.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
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
	public List<ProductVO> getListProd() throws Exception {
		System.out.println("prodList service 지나가는중");
		return mapper.getListProd();
	}
	
	@Override
	public ProductVO getProd(String prodNo) {
		log.info("getProd service 지나가는중"+prodNo);
		return mapper.readProd(prodNo);
	}
}
