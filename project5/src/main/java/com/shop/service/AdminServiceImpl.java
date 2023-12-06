package com.shop.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.shop.domain.BoardReplyVO;
import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
import com.shop.domain.ProductVO;
import com.shop.domain.ReportVO;
import com.shop.domain.ReviewReplyVO;
import com.shop.domain.UsersVO;
import com.shop.mapper.AdminMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AdminServiceImpl implements AdminService {

	@Override
	public void prodRegister(ProductVO prodVo) {
		mapper.prodInsert(prodVo);
	}

	@Override
	public void boardDelete(long boardNo) {
		mapper.boardDelete(boardNo);
	}

	@Override
	public void notiWrite(BoardVO boardVo) {
		mapper.notiWrite(boardVo);
	}

	@Override
	public BoardVO reportBoard(long boardNo) {
		return mapper.reportBoard(boardNo);
	}

	@Override
	public void reportComplete(int repoNo) {
		mapper.reportComplete(repoNo);
	}

	@Override
	public BoardReplyVO reportBoRep(long boRepNo) {
		return mapper.reportBoRep(boRepNo);
	}

	@Override
	public ReviewReplyVO reportReviRep(long reviRepNo) {
		return mapper.reportReviRep(reviRepNo);
	}

	@Override
	public List<ReportVO> getReport() {
		return mapper.getReport();
	}

	@Override
	public void userDelete(long userNo) {
		mapper.userDelete(userNo);
	}

	@Override
	public List<CodeVO> prodCodeInsert() {
		return mapper.prodCodeInsert();
	}

	@Autowired
	AdminMapper mapper;
	

	@Override
	public List<BoardVO> getBoard(String boardClass) {
		System.out.println("service 지나가는 중");
		return mapper.getBoard(boardClass);	
	}

	@Override
	public List<UsersVO> getUsers()  throws Exception {
		System.out.println("service 지나가는 중");
		return mapper.getUsers();
	}

}
