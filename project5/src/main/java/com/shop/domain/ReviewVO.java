package com.shop.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	private long reviNo; //리뷰 번호
	private long userNo; //회원번호
	private String prodNo; //상품코드
	private String reviTitle; //리뷰 제목
	private String reviContent; //리뷰 내용
	private Date reviReg; //리뷰 등록일
	private Date reviUpdate; //리뷰 수정일
	private Integer rating; //평점
	private String userImg; //고객 등록 이미지 URL
	private int reviCnt; //리뷰 조회 수
	
	private String userNick; //게시물 작성자 닉네임(회원번호로 users 테이블에 있는 nick을 담을 임의의 변수)
	private String prodName; //마이페이지 리뷰탭에 불러올 상품명
}
