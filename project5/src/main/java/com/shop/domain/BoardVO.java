package com.shop.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private long boardNo; //게시물 번호
	private long userNo; //회원번호
	private int boardClass; //게시판 분류
	private String boardTitle; //게시물 제목
	private String boardContent; //게시물 내용
	private Date boardReg; //게시물 등록일
	private Date boardUpdate; //게시물 수정일
	private String boardImg; //게시물 이미지 URL
	private int boardCnt; //게시물 조회수
	private int secretYn; //게시물 비밀글 여부
	private int secretPw; //게시물 비밀글 비밀번호
	
	private long ansNo; //답변여부
	private String userNick; //게시물 작성자 닉네임(회원번호로 users 테이블에 있는 nick을 담을 임의의 변수)
}

