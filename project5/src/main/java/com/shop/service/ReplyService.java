package com.shop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.shop.domain.BoardReplyVO;
import com.shop.domain.ReviewReplyVO;

@Service
public interface ReplyService {
	
/* ======================== QnA, 자유게시판  ======================== */ 
	
	// 댓글 조회
	public List<BoardReplyVO> getReplyList(long boardNo) throws Exception;
	
	// 댓글 등록 
	public int replyRegister(BoardReplyVO boRep) throws Exception;
	
	// 댓글 수정을 위한 댓글 정보 가져오기
    public BoardReplyVO getReplyByNo(Long boRepNo) throws Exception;
    
	// 댓글 수정
	public void replyModify(BoardReplyVO boRep) throws Exception;
	
	// 댓글 삭제
	public void replyDelete(Long boRepNo) throws Exception;
	
	/* ======================== Review  ======================== */ 
	
	// 댓글 조회
	public List<ReviewReplyVO> getReviewReplyList(long reviNo) throws Exception;
	
	// 댓글 등록 
	public int reviewReplyRegister(ReviewReplyVO reviRep) throws Exception;
	
	// 댓글 수정
	public void reviewReplyModify(ReviewReplyVO reviRep) throws Exception;
	
	// 댓글 삭제
	public void reviewReplyDelete(Long reviRepNo) throws Exception;
}
