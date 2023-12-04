package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.domain.BoardVO;
import com.shop.mapper.BoardMapper;

import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper boardmapper;
	
	// ----------------------------- 공지사항 -----------------------------
	
	@Override
	public List<BoardVO> noticeList() throws Exception {
		return boardmapper.noticeList();
	}

	@Override
	public BoardVO noticeDetail(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		return boardmapper.noticeDetail(boardNo);
	}

	@Override
	public int updateNoticeBoardCnt(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		return boardmapper.updateNoticeBoardCnt(boardNo);
	}

	@Override
	public void noticeRegister(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		boardmapper.noticeRegister(boardVO);
	}

	@Override
	public void noticeUpdate(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		boardmapper.noticeUpdate(boardVO);
	}

	@Override
	public void noticeDelete(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		boardmapper.noticeDelete(boardNo);
	}
	
	// ----------------------------- QnA -----------------------------
	@Override
	public List<BoardVO> qnaList() throws Exception {
		return boardmapper.qnaList();
	}

	@Override
	public BoardVO qnaDetail(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		return boardmapper.qnaDetail(boardNo);
	}

	@Override
	public int updateQnaBoardCnt(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		return boardmapper.updateQnaBoardCnt(boardNo);
	}

	@Override
	public void qnaRegister(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		boardmapper.qnaRegister(boardVO);
	}

	@Override
	public void qnaUpdate(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		boardmapper.qnaUpdate(boardVO);
	}

	@Override
	public void qnaDelete(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		boardmapper.qnaDelete(boardNo);
	}
	
	// ----------------------------- 자유게시판 -----------------------------
	@Override
	public List<BoardVO> freepopList() throws Exception {
		// TODO Auto-generated method stub
		try {
			System.out.println("=====Service.freepopList=====");
			return boardmapper.freepopList();
		} catch (Exception e) {
		      log.error("Error fetching freelist", e);
		      return null;
		}
	}
	
	@Override
	public List<BoardVO> freeList() throws Exception {
		return boardmapper.freeList();
	}

	@Override
	public BoardVO freeDetail(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		return boardmapper.freeDetail(boardNo);
	}

	@Override
	public int updateFreeBoardCnt(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		return boardmapper.updateFreeBoardCnt(boardNo);
	}

	@Override
	public void freeRegister(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		boardmapper.freeRegister(boardVO);
	}

	@Override
	public void freeUpdate(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		boardmapper.freeUpdate(boardVO);
	}

	@Override
	public void freeDelete(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		boardmapper.freeDelete(boardNo);
	}
		
}

