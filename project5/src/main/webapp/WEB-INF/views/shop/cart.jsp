<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Shop</title>
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
                        <c:if test="${status.end == 0} ">
                        	<div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem n_board typeList">
							<table border="1" summary="">
							<caption>주문 상품 정보</caption>
<!-- 								<thead> -->
<!-- 									<tr> -->
<!-- 										<td> -->
<!-- 					                        <p class="fs12 number">주문일자 [주문번호]</p> -->
<!-- 					                        <p class="thumb"></p> -->
<!-- 					                        <p class="fs12 product" style="padding: 0px;">상품</p> -->
<!-- 					                        <p class="quantity"></p> -->
<!-- 					                        <p class="right"></p> -->
<!-- 					                        <p class="fs12 state">주문상태</p> -->
<!-- 					                    </td> -->
<!-- 		                			</tr> -->
<!-- 		                		</thead> -->
							</table>
							<p class="message  fs14">주문 내역이 없습니다.</p>
						</div>
                      	</c:if>
                      	<c:if test="${status.end != 0}">
	                        <table>
	                            <thead>
	                                <tr>
	                                	<th>선택</th>
	                                    <th colspan="2" class="shoping__product">상품정보</th>
	                                    <th>수량</th>
	                                    <th>주문금액</th>
	                                    <th><!-- 변경 적용 버튼 --></th>
	                                    <th><!-- 삭제 버튼 --></th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach items="${cart}" var="cart">
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
	                                                <input type="text" class="quantity_input" value="${cart.orderCnt}">
	                                            </div>
	                                        </div>
	                                    </td>
	                                    <td class="shoping__cart__total">
	                                        <fmt:formatNumber pattern="###,###,###.##" value="${cart.totalPrice}" />
	                                    </td>
	                                    <td class="shoping__cart__item__close" style="width: 50px; text-align: center;">
	                                        <span class="icon_modify" data-cartNo="${cart.orderCnt}">
	                                        	<input type="button" value="변경" style="font-size: 50%; padding: 3px; border: none;">
	                                        </span>
	                                    </td>
	                                    <td class="shoping__cart__item__close">
	                                        <a class="delete_btn" data-cartNo="${cart.cartNo}"><span class="icon_close"></span></a>
<%-- 											<button class="delete_btn" data-cartNo = "${cart.cartNo}">삭제</button> --%>
	                                    </td>
	                                </tr>
	                                </c:forEach>
	                            </tbody>
	                        </table>
	                    </c:if>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="/shop" class="primary-btn cart-btn">CONTINUE SHOPPING</a>
                        <a href="#" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                            Update Cart</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Cart Total</h5>
                        <ul>
                            <li>Subtotal <span>$454.98</span></li>
                            <li>Total <span>$454.98</span></li>
                        </ul>
                        <a href="/checkout" class="primary-btn">PROCEED TO CHECKOUT</a>
                    </div>
                </div>
            </div>
            
        <!-- 삭제 form -->
		<form action="/cart/delete" method="post" class="quantity_delete_form">
			<input type="hidden" id="cartNo" name="cartNo" class="delete_cartNo">
			<input type="hidden" id="userNo" name="userNo" value="${user.userNo}">
		</form>
		
        </div>
    </section>
    <!-- Shoping Cart Section End -->
	
	<%@include file="../includes/footer.jsp" %>
	<script>
	/* 장바구니 삭제 버튼 */
	$(".delete_btn").on("click", function(e){
		e.preventDefault();
		const cartNo = $(this).data("cartno");
		$(".delete_cartNo").val(cartNo);
		$(".quantity_delete_form").submit();
	});
	</script>
	
</body>
</html>