package com.shop.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardReplyVO {
	private long boRepNo; //게시물 댓글 번호
	private long boardNo; //게시물 번호
	private long userNo; //회원번호
	private String boRepContent; //게시물 댓글 내용
	private Date boRepReg; //게시물 댓글 등록일
	private Date boRepUpdate; //게시물 댓글 수정일
	private String userNick;
}
