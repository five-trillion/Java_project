package com.shop.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewReplyVO {
	private long reviRepNo; //리뷰 댓글 번호
	private long reviNo; //리뷰 번호
	private long userNo; //회원번호
	private String reviRepContent; //리뷰 댓글 내용
	private Date reviRepReg; //리뷰 댓글 등록일
	private Date reviRepUpdate; //리뷰 댓글 수정일
	private String userNick;
}
