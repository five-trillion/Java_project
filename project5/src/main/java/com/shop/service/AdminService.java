  package com.shop.service;

import java.util.List;

import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
import com.shop.domain.ProductVO;
import com.shop.domain.UsersVO;

import lombok.extern.log4j.Log4j;

public interface AdminService {

	
	// 회원리스트를 가져옵니다.
	public List<UsersVO> getUsers()  throws Exception;

	public List<BoardVO> getNotiBoard(String boardClass);
	
	public void prodRegister (ProductVO prodVo);
	
	public List<CodeVO> prodCodeInsert();
}
