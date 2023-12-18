package com.shop.domain;

import java.util.List;

import lombok.Data;

@Data
public class OrderDetailVO {
	private String orderNo; //주문번호
	private int orderListNo; //주문순서번호
	private String prodNo; //상품코드
	
	private int totalPrice; //합계액
	
	private int orderCnt; //주문수량
	private int prodSum; //합계액
	private ProductVO prodInfo;

	public ProductVO getProdInfo() {
	     return prodInfo;
	    }
	public ProductVO setProdInfo() {
		return prodInfo;
	}
}
