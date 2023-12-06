package com.shop.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private long boardNo; //게시물 번호
	private long userNo; //회원번호
	private String boardClass; //게시판 분류 1:공지 2:질의 3:자유
	private String boardTitle; //게시물 제목
	private String boardContent; //게시물 내용
	private Date boardReg; //게시물 등록일
	private Date boardUpdate; //게시물 수정일
	private String boardImg; //게시물 이미지 URL
	private int boardCnt; //게시물 조회수
	private int secretYn; //게시물 비밀글 여부
	private int secretPw; //게시물 비밀글 비밀번호
}

