package com.shop.domain;

import java.util.Date;

import lombok.Data;

@Data
public class DeliveryVO {
	private String deliNo; //배송번호
	private String orderNo; //주문번호
	private Date deliStart; //배송 시작일
	private String deliInfo; //운송장 번호
	private String orderAddr; //배송지 주소
	private String recipient; //수취인
	private String recipientTel; //수취인 연락처
	private String recPhone; //수취인 휴대폰번호
}
