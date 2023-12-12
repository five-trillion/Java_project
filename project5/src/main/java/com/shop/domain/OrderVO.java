package com.shop.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
	private String orderNo; //주문번호
	private long userNo; //회원번호
	private Date orderDate; //주문일
	private int orderSum; //주문 총합계
	private int userPoint; //사용포인트
	private int orderFee; //배송비
	private int orderSta; //주문상태
	
	private int orderListNo; //주문순서번호
	private String prodNo; //상품코드
	private int orderCnt; //주문수량
	private int prodSum; //합계액
	
	private String deliNo; //배송번호
	private Date deliStart; //배송 시작일
	private String deliInfo; //운송장 번호
	private String orderAddr; //배송지 주소
	private String recipient; //수취인
	private String recipientTel; //수취인 연락처
	private String recPhone; //수취인 휴대폰번호
}
