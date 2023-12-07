package com.shop.mapper;

import java.util.List;

import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
import com.shop.domain.ProductVO;
import com.shop.domain.UsersVO;

public interface AdminMapper {
	// 회원관리---------
	public List<UsersVO> getUsers();

	public List<BoardVO> getNotiBoard(String boardClass);
	// end 회원관리--------
	
	// 상품관리----------
	public void prodInsert(ProductVO prodVo);
	
	public List<CodeVO> prodCodeInsert();
	
	public List<ProductVO> getListProd();
	
	public int prodUpdate(ProductVO prodVo);
	
	public ProductVO readProd(String prodNo);
	
	public int prodRemove(String prodNo);
	
	// end 상품관리--------
}
