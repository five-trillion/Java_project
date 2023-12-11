package com.shop.domain;

import java.util.Date;

import lombok.Data;

@Data
public class SalesVO {
	private Date salesDate;
	private int salesAmount;
	private int salesVolume;
	private int salesPrice;
}
