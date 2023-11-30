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
	private String prodMainImg; //
	private String prodImg1; //
	private String prodImg2; //
	private String prodImg3; //
	private String prodImg4; //
	private String prodInfo; //상품설명
	private Date prodReg; //등록일
	private Date prodUpdate; //업데이트일
	private int prodRest; //재고수량
	private int prodCnt; //상품 조회수
}
