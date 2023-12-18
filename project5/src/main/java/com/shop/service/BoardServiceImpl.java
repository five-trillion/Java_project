package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.domain.BoardVO;
import com.shop.domain.Criteria;
import com.shop.mapper.BoardMapper;

import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper boardmapper;
	
	// ----------------------------- 공지사항 -----------------------------
	
	@Override
    public List<BoardVO> getNoticeListPaging(Criteria cri) {
        
        return boardmapper.getNoticeListPaging(cri);
    }  
	
	@Override
	public int getNoticeTotal(Criteria cri) {
		return boardmapper.getNoticeTotal(cri);
	}
	
	@Override
	public int updateNoticeCnt(long boardNo) throws Exception {
		return boardmapper.updateNoticeCnt(boardNo);
	}

	@Override
	public BoardVO noticeDetail(long boardNo) throws Exception {
		return boardmapper.noticeDetail(boardNo);
	}
	
	// ----------------------------- QnA -----------------------------
	
	@Override
	public List<BoardVO> getQnaListPaging(Criteria cri) {
		return boardmapper.getQnaListPaging(cri);
	}
	
	@Override
	public int getQnaTotal(Criteria cri) {
		return boardmapper.getQnaTotal(cri);
	}
	
	@Override
	public int updateQnaCnt(long boardNo) throws Exception {
		return boardmapper.updateQnaCnt(boardNo);
	}
	@Override
	public BoardVO qnaDetail(long boardNo) throws Exception {
		return boardmapper.qnaDetail(boardNo);
	}

	@Override
	public void qnaRegister(BoardVO board) throws Exception {
		boardmapper.qnaRegister(board);
	}

	@Override
	public int qnaUpdate(BoardVO board) throws Exception {
		return boardmapper.qnaUpdate(board);
	}

	@Override
	public int qnaDelete(long boardNo) throws Exception {
		return boardmapper.qnaDelete(boardNo);
	}
	
	// ----------------------------- 자유게시판 -----------------------------
	@Override
	public List<BoardVO> freepopList() throws Exception {
		try {
			System.out.println("=====Service.freepopList=====");
			return boardmapper.freepopList();
		} catch (Exception e) {
		      log.error("Error fetching freelist", e);
		      return null;
		}
	}
	
	@Override
	public List<BoardVO> getFreeListPaging(Criteria cri) {
		return boardmapper.getFreeListPaging(cri);
	}
	
	@Override
	public int getFreeTotal(Criteria cri) {
		return boardmapper.getFreeTotal(cri);
	}
	@Override
	public int updateFreeCnt(long boardNo) throws Exception {
		return boardmapper.updateFreeCnt(boardNo);
	}

	@Override
	public BoardVO freeDetail(long boardNo) throws Exception {
		return boardmapper.freeDetail(boardNo);
	}

	@Override
	public int updateFreeBoardCnt(long boardNo) throws Exception {
		return boardmapper.updateFreeBoardCnt(boardNo);
	}

	@Override
	public void freeRegister(BoardVO board) throws Exception {
		boardmapper.freeRegister(board);
	}

	@Override
	public int freeUpdate(BoardVO board) throws Exception {
		return boardmapper.freeUpdate(board);
		
	}

	@Override
	public int freeDelete(long boardNo) throws Exception {
		return boardmapper.freeDelete(boardNo);
	}		
}

