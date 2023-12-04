package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.domain.BoardVO;
import com.shop.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper boardmapper;
	
	@Override
	public List<BoardVO> boardList(BoardVO board) throws Exception {
		List<BoardVO> list = null;
		list = boardmapper.boardList(board);
		return list;
	}
	@Override
	public void insertBoard(BoardVO board) throws Exception {
		boardmapper.insertBoard(board);
	}
	
	@Override 
	public void updateBoard(BoardVO board) throws Exception {
		boardmapper.updateBoard(board);
	}

	@Override
	public void deleteBoard(BoardVO board) throws Exception {
		boardmapper.deleteBoard(board);
	}
	
	@Override 
	public BoardVO selectBoard(BoardVO board) throws Exception {
		BoardVO bVo = boardmapper.selectBoard(board);
		return bVo;
	}
}

