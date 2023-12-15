package com.shop.mapper;

import java.util.List;

import com.shop.domain.BoardReplyVO;

public interface ReplyMapper {
	
	/* ======================== 공지사항, QnA, 자유게시판  ======================== */ 
	
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
}
