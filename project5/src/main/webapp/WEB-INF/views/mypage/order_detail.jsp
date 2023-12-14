<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역</title>
<%@include file="../includes/src.jsp" %>
</head>
<body>
	<%@include file="../includes/header.jsp" %>
	
	<div id="contents" style="padding: 0 0 80px;">
                    
		<%@include file="../includes/mp_header.jsp" %>
		
		<div id="contents">
			<div class="page_wrap order_result" style="margin: 0 auto 100px;">
    			<div class="page_title fs60">주문상세조회</div>
				
				<div class="orderListArea">
		            <div class="shoping__cart__table" style="border-top: 1px solid var(--acr1); padding: 20px 0 0;">
		        		<table>
		        			<caption>주문상품</caption>
		        			<thead>
		                        <tr>
		                            <th colspan="2" class="shoping__product">상품정보</th>
		                            <th>수량</th>
		                            <th>주문금액</th>
		                        </tr>
		                    </thead>
			                <tbody>
			                    <tr>
			                    	<td class="shoping__cart__total">
			                            <img src="${contextPath}/resources/upload/product/thumbnails/${order.prodMainImg}" alt="" style="width:100px;">
			                        </td>
			                        <td class="shoping__cart__item" style="padding-left: 20px; width: 420px;">
			                            <h5>${order.prodName}</h5> <br>
			                            <h6>가격: <fmt:formatNumber pattern="###,###,###.##" value="${order.salePrice}" /></h6>
			                        </td>
			                        <td class="shoping__cart__quantity" style="width:110px;">
			                            <div class="quantity">
			                            	<h6>X${order.orderCnt}</h6>
			                            </div>
			                        </td>
			                        <td class="shoping__cart__total">
			                            <fmt:formatNumber pattern="###,###,###.##" value="${order.totalPrice}" />
			                        </td>
			                    </tr>
			                    <c:set var="orderSum" value="${orderSum + order.salePrice * order.orderCnt}"/>
			                </tbody>
			            </table>
			            <p class="message  fs14" style="margin: 10px 0 0 10px;">
			            상품구매금액 <strong><fmt:formatNumber pattern="###,###,###.##" value="${orderSum}"/>원</strong> + 배송비 3,000원 
			            = 합계 : <strong><fmt:formatNumber pattern="###,###,###.##" value="${orderSum+3000}"/>원</strong></p>
	        		</div>
		        </div>
	        	
	        	<div class="orderArea" style="margin: 50px 0 50px;">
		            <div class="title">
		                <h3>배송지정보</h3>
		            </div>
	            	<div class="ec-base-table">
	                	<table border="1" summary="">
							<caption>배송지 정보</caption>
		                    <tbody>
								<tr>
									<td class="fs15"> <span class="row fs12">받으시는분</span><span>${order.recipient}</span></td>
		                        </tr>
								<tr class="">
									<td class="fs15">
									<span class="row fs12">우편번호</span><span>${order.orderzip}</span></td>
		                        </tr>
								<tr class="">
									<td class="fs15">
									<span class="row fs12">주소</span><span>${order.orderAddr}</span></td>
		                        </tr>
								<tr>
									<td class="fs15">
									<span class="row fs12">일반전화</span><span>${order.recipientTel}</span></td>
		                        </tr>
								<tr>
									<td class="fs15">
										<span class="row fs12">휴대전화</span><span>${order.recPhone}</span>                        
									</td>
								</tr>
								<tr>
									<td class="fs15">
										<span class="row fs12">배송메시지</span><span>${order.deliMsg}</span></td>
		                        </tr>
							</tbody>
						</table>
					</div>
		        </div>
	        	
	        	<div class="orderArea" style="margin: 50px 0 50px;">
		            <div class="title">
		                <h3>배송지정보</h3>
		            </div>
	            	<div class="ec-base-table">
	                	<table border="1" summary="">
							<caption>배송지 정보</caption>
		                    <tbody>
								<tr>
									<td class="fs15"> <span class="row fs12">받으시는분</span><span>${order.recipient}</span></td>
		                        </tr>
								<tr class="">
									<td class="fs15">
									<span class="row fs12">우편번호</span><span>${order.orderzip}</span></td>
		                        </tr>
								<tr class="">
									<td class="fs15">
									<span class="row fs12">주소</span><span>${order.orderAddr}</span></td>
		                        </tr>
								<tr>
									<td class="fs15">
									<span class="row fs12">일반전화</span><span>${order.recipientTel}</span></td>
		                        </tr>
								<tr>
									<td class="fs15">
										<span class="row fs12">휴대전화</span><span>${order.recPhone}</span>                        
									</td>
								</tr>
								<tr>
									<td class="fs15">
										<span class="row fs12">배송메시지</span><span>${order.deliMsg}</span></td>
		                        </tr>
							</tbody>
						</table>
					</div>
		        </div>
	        	
	        	<div class="orderArea" style="margin: 50px 0 50px;">
		            <div class="title">
		                <h3>배송지정보</h3>
		            </div>
	            	<div class="ec-base-table">
	                	<table border="1" summary="">
							<caption>배송지 정보</caption>
		                    <tbody>
								<tr>
									<td class="fs15"> <span class="row fs12">받으시는분</span><span>${order.recipient}</span></td>
		                        </tr>
								<tr class="">
									<td class="fs15">
									<span class="row fs12">우편번호</span><span>${order.orderzip}</span></td>
		                        </tr>
								<tr class="">
									<td class="fs15">
									<span class="row fs12">주소</span><span>${order.orderAddr}</span></td>
		                        </tr>
								<tr>
									<td class="fs15">
									<span class="row fs12">일반전화</span><span>${order.recipientTel}</span></td>
		                        </tr>
								<tr>
									<td class="fs15">
										<span class="row fs12">휴대전화</span><span>${order.recPhone}</span>                        
									</td>
								</tr>
								<tr>
									<td class="fs15">
										<span class="row fs12">배송메시지</span><span>${order.deliMsg}</span></td>
		                        </tr>
							</tbody>
						</table>
					</div>
		        </div>
				
			</div>
		</div>
	</div>
	
	<%@include file="../includes/footer.jsp" %>
	<script>
	
	</script>
</body>
</html>