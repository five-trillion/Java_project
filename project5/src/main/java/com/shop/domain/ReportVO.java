package com.shop.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReportVO {
	private int repoNo; //신고 번호
	private long boardNo; //게시물 번호
	private long boRepNo; //게시물 댓글 번호
	private long reviRepNo; //리뷰 댓글 번호
	private long userNo; //회원번호
	private String repoReason; //신고 사유
	private Date repoDate; //신고일
	private int processingYn; //신고 처리 여부
}
