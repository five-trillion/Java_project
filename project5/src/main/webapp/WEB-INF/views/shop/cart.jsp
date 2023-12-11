<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>장바구니</title>
	<%@include file="../includes/src.jsp" %>
</head>
<body>
	<%@include file="../includes/header.jsp" %>
    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                     <c:choose>
                       <c:when test="${cart.isEmpty()}">
                        	<div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem n_board typeList">
							<table border="1" summary="">
								<thead>
	                                <tr>
	                                	<th>선택</th>
	                                    <th colspan="2" class="shoping__product">상품정보</th>
	                                    <th>수량</th>
	                                    <th>주문금액</th>
	                                    <th><!-- 삭제 버튼 --></th>
	                                </tr>
							</table>
							<p class="message  fs14">장바구니 내역이 없습니다.</p>
						</div>
                      	</c:when>
                      	<c:otherwise>
	                        <table>
	                            <thead>
	                                <tr>
	                                	<th>선택</th>
	                                    <th colspan="2" class="shoping__product">상품정보</th>
	                                    <th>수량</th>
	                                    <th>주문금액</th>
	                                    <th><!-- 삭제 버튼 --></th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach items="${cart}" var="cart">
	                            	<input type="hidden" value="${cart.cartNo}">
	                                <tr>
	                                	<td class="shoping__cart__item__close" style="width:80px; text-align: center;">
	                                        <span><input type="checkbox"></span>
	                                    </td>
	                                	<td class="shoping__cart__total">
	                                        <img src="${contextPath}/resources/upload/product/thumbnails/${cart.prodMainImg}" alt="" style="width:100px;">
	                                    </td>
	                                    <td class="shoping__cart__item" style="padding-left: 20px; width: 420px;">
	                                        <h5>${cart.prodName}</h5> <br>
	                                        <input type="hidden" value="${cart.cartNo}">
	                                        <h6>가격: <fmt:formatNumber pattern="###,###,###.##" value="${cart.salePrice}" /></h6>
	                                    </td>
	                                    <td class="shoping__cart__quantity">
	                                        <div class="quantity">
	                                            <div class="pro-qty">
	                                                <input type="text" id="orderCnt" class="quantity_input" value="${cart.orderCnt}">
	                                            </div>
	                                            <a class="modify_btn" data-cartno="${cart.cartNo}">변경</a>
	                                        </div>
	                                    </td>
	                                    <td class="shoping__cart__total">
	                                        <fmt:formatNumber pattern="###,###,###.##" value="${cart.totalPrice}" />
	                                    </td>
	                                    <td class="shoping__cart__item__close">
	                                        <a class="delete_btn" data-cartno="${cart.cartNo}"><span class="icon_close"></span></a>
	                                    </td>
	                                </tr>
	                                <c:set var="total" value="${total + cart.salePrice * cart.orderCnt}"/>
	                                </c:forEach>
	                            </tbody>
	                        </table>
	                    </c:otherwise>
	                  </c:choose>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="/shop" class="primary-btn cart-btn">주문하기</a>
                        <a href="/cart/${user.userNo}" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                            새로고침</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Cart Total</h5>
                        <ul>
                            <li style="border-bottom: none;">총 상품금액<span><fmt:formatNumber pattern="###,###,###.##" value="${total}"/>원</span></li>
                            <li>배송비<span>3,000원</span></li>
                            <li>합계 <span><fmt:formatNumber pattern="###,###,###.##" value="${total+3000}"/>원</span></li>
                        </ul>
                        <c:choose>
                       		<c:when test="${cart.isEmpty()}">
                        		<a href="#" data-toggle="modal" data-target="#orderpageModal" class="primary-btn">주문하기</a>
                        	</c:when>
                      		<c:otherwise>
                      			<a href="/checkout" class="primary-btn">주문하기</a>
                      		</c:otherwise>
                      	</c:choose>
                    </div>
                </div>
            </div>
            
        <!-- order Modal -->
		<div class="modal fade" id="orderpageModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="orderpageModalLabel">알림</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        주문내역이 없습니다. 장바구니에 상품을 먼저 추가해주세요.
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button id="orderpagebtn" name="orderpagebtn" type="submit" class="btn btn-primary">Confirm</button>
		      </div>
		    </div>
		  </div>
		</div>
		
        <!-- 수정 form -->
		<form action="/cart/update" method="post" class="quantity_modify_form">
			<input type="hidden" id="cartNo" name="cartNo" class="modify_cartNo">
			<input type="hidden" id="orderCnt" name="orderCnt" class="modify_orderCnt">
			<input type="hidden" id="userNo" name="userNo" value="${user.userNo}">
		</form>
            
        <!-- 삭제 form -->
		<form action="/cart/delete" method="post" class="delete_form">
			<input type="hidden" id="cartNo" name="cartNo" class="delete_cartNo">
			<input type="hidden" id="userNo" name="userNo" value="${user.userNo}">
		</form>
		
        </div>
    </section>
    <!-- Shoping Cart Section End -->
	
	<%@include file="../includes/footer.jsp" %>
	<script>
	$("#orderpagebtn").on("click",function() {
 		self.location="/shop";
 	});
	
	/* 장바구니 변경 버튼 */
	$(".modify_btn").on("click", function(e){
		let cartNo = $(this).data("cartno");
		let orderCnt = $(this).parents("td").find("input").val();
		console.log(orderCnt);
		$(".modify_cartNo").val(cartNo);
		$(".modify_orderCnt").val(orderCnt).parent("td").find("input").val();
 		$(".quantity_modify_form").submit();
	});
	/* 장바구니 삭제 아이콘 */
	$(".delete_btn").on("click", function(e){
		e.preventDefault();
		const cartNo = $(this).data("cartno");
		$(".delete_cartNo").val(cartNo);
		$(".delete_form").submit();
	});
	</script>
	
</body>
</html>