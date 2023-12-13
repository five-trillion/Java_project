package com.shop.domain;

import lombok.Data;

@Data
public class OrderDetailVO {
	private String orderNo; //주문번호
	private int orderListNo; //주문순서번호
	private String prodNo; //상품코드
	private int orderCnt; //주문수량
	private int totalPrice; //합계액
}
