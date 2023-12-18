package com.shop.domain;

import java.util.Date;

import lombok.Data;

@Data
public class SalesVO {
	private Date salesDate; //기간
	private int salesAmount; // 량
	private int salesVolume; // 건수
	private int salesPrice; // 금액
}
