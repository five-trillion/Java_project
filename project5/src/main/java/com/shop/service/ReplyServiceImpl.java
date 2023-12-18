package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.domain.BoardReplyVO;
import com.shop.domain.ReviewReplyVO;
import com.shop.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private ReplyMapper replymapper;
	
	@Override 
	public List<BoardReplyVO> getReplyList(long boardNo) throws Exception {
		return replymapper.getReplyList(boardNo);
	}
	
	@Override
	public int replyRegister(BoardReplyVO boRep) throws Exception {
		return replymapper.replyRegister(boRep);
	}
	
	 @Override
	    public BoardReplyVO getReplyByNo(Long boRepNo) throws Exception {
	        return replymapper.getReplyByNo(boRepNo);
	    }
	
	@Override
	public void replyModify(BoardReplyVO boRep) throws Exception {
		replymapper.replyModify(boRep);
	}
	
	@Override
	public void replyDelete(Long boRepNo) throws Exception {
		replymapper.replyDelete(boRepNo);
	}

	@Override
	public List<ReviewReplyVO> getReviewReplyList(long reviNo) throws Exception {
		return replymapper.getReviewReplyList(reviNo);
	}

	@Override
	public int reviewReplyRegister(ReviewReplyVO reviRep) throws Exception {
		return replymapper.reviewReplyRegister(reviRep);
	}

	@Override
	public void reviewReplyModify(ReviewReplyVO reviRep) throws Exception {
		replymapper.reviewReplyModify(reviRep);
	}

	@Override
	public void reviewReplyDelete(Long reviRepNo) throws Exception {
		replymapper.reviewReplyDelete(reviRepNo);
	}
	
	
}


