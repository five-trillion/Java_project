package com.shop.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class OrderInfoVO {
	private String orderNo; //주문번호
	private long userNo; //회원번호
	private Date orderDate; //주문일
	private int orderSum; //주문 총합계
	private int userPoint; //사용포인트
	private int orderFee; //배송비
	private int orderSta; //주문상태

    private DeliveryVO delivery;
    
    private DeliveryVO deliveryInfo;

    public DeliveryVO getDeliveryInfo() {
        return deliveryInfo;
    }

    public void setDeliveryInfo(DeliveryVO deliveryInfo) {
        this.deliveryInfo = deliveryInfo;
    }
    private List<OrderDetailVO> orderDetailList;

    public List<OrderDetailVO> getOrderDetailList() {
        return orderDetailList;
    }

    public void setOrderDetailList(List<OrderDetailVO> orderDetailList) {
        this.orderDetailList = orderDetailList;
    }
   
}
