package com.shop.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	private String prodNo; //상품코드
	private String category; //카테고리
	private String brand; //브랜드
	private String prodName; //상품명
	private int costPrice; //매입원가
	private int netPrice; //공시가
	private int salePrice; //할인판매가
	private String prodMainImg; //메인이미지
	private String prodImg1; //미니 1
	private String prodImg2; //미니2
	private String prodImg3; //미니3
	private String prodImg4; //미니4
	private String detailImg; //상세이미지
	private String prodInfo; //상품설명
	private Date prodReg; //등록일
	private Date prodUpdate; //업데이트일
	private int prodRest; //재고수량
	private int prodCnt; //상품 조회수
	
	private int pcount; // 상품 개수 출력하기 위해 변수 추가함. (mysql에는 추가X)
	private String brandName; //브랜드 이름 띄우기 위한 임의의 변수
}
