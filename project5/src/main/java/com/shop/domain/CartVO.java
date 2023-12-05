package com.shop.domain;


public class CartVO {
	private int cartNo;
	private long userNo; //회원번호
	private String prodNo; //상품코드
	private int orderCnt; //주문수량
	
	private int num;
	private String prodMainImg;
	private int salePrice;
    private int totalPrice;
    
    public int getCartNo() {
		return cartNo;
	}

	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}

	public long getUserNo() {
		return userNo;
	}

	public void setUserNo(long userNo) {
		this.userNo = userNo;
	}

	public String getProdNo() {
		return prodNo;
	}

	public void setProdNo(String prodNo) {
		this.prodNo = prodNo;
	}

	public int getOrderCnt() {
		return orderCnt;
	}

	public void setOrderCnt(int orderCnt) {
		this.orderCnt = orderCnt;
	}
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getProdMainImg() {
		return prodMainImg;
	}

	public void setProdMainImg(String prodMainImg) {
		this.prodMainImg = prodMainImg;
	}
	
	public int getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	
	public int getTotalPrice() {
		return totalPrice;
	}

	public void initTotalPrice() {
		if (this.orderCnt > 0) {
			this.totalPrice = this.salePrice*this.orderCnt;
		} else {
			this.totalPrice = 0;
		}
	}
	
	public void setTotalPrice(int totalPrice) {
	    this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "CartVO [cartNo=" + cartNo + ", userNo=" + userNo + ", prodNo=" + prodNo + ", orderCnt=" + orderCnt
				+ ", num=" + num + ", prodMainImg=" + prodMainImg + ", salePrice=" + salePrice + ", totalPrice="
				+ totalPrice + "]";
	}

}
