package com.shop.mapper;

import java.util.List;

import com.shop.domain.BoardVO;
import com.shop.domain.UsersVO;

public interface AdminMapper {
	// 회원리스트를 가져옵니다.
	public List<UsersVO> getUsers();

	public List<BoardVO> getNotiBoard(String boardClass);
}
