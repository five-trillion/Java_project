package com.shop.mapper;

import java.util.List;

import com.shop.domain.BoardVO;

public interface BoardMapper {
	
	//게시물 리스트 조회
	public List<BoardVO> boardList(BoardVO board) throws Exception;
	
	//게시물 등록
	public void insertBoard(BoardVO board) throws Exception;
	
	//게시물 수정
	public void updateBoard(BoardVO board) throws Exception;
	
	//게시물 삭제
	public void deleteBoard(BoardVO board) throws Exception;
	
	//게시물 조회
	public BoardVO selectBoard(BoardVO board) throws Exception;
}
