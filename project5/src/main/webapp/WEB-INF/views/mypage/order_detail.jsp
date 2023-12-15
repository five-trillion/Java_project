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
			                	<c:forEach items="${order}" var="order">
			                    <tr>
			                    	<td class="shoping__cart__total">
			                            <img src="${contextPath}/resources/upload/product/main/${order.prodMainImg}" alt="" style="width:100px;">
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
			                    </c:forEach>
			                </tbody>
			            </table>
			            <p class="message  fs14" style="margin: 10px 0 0 10px;">
			            상품구매금액 <strong><fmt:formatNumber pattern="###,###,###.##" value="${order[0].orderSum}"/>원</strong>
			            + 배송비 <fmt:formatNumber pattern="###,###,###.##" value="${order[0].orderFee}"/>원 
			            = 합계 : <strong><fmt:formatNumber pattern="###,###,###.##" value="${order[0].orderSum + order[0].orderFee}"/>원</strong></p>
	        		</div>
		        </div>
	        	
	        	<div class="orderArea" style="margin: 50px 0 50px;">
		            
	            	<div class="ec-base-table">
	                	<table border="1" summary="">
							<caption>주문 정보</caption>
		                    <tbody>
								<tr>
									<td class="fs15"> <span class="row fs12">주문번호</span><span>${order[0].orderNo}</span></td>
		                        </tr>
								<tr class="">
									<td class="fs15">
									<span class="row fs12">주문일자</span><span><fmt:formatDate value="${order[0].orderDate}" pattern="yyyy-MM-dd HH:mm:ss"/></span></td>
		                        </tr>
								<tr class="">
									<td class="fs15">
									<span class="row fs12">주문자</span><span>${user.userName}</span></td>
		                        </tr>
								<tr>
									<td class="fs15">
									<span class="row fs12">주문처리상태</span><span>${order[0].odst}</span></td>
		                        </tr>
								<tr>
									<td class="fs15">
										<span class="row fs12">총 주문금액</span><span>${order[0].orderSum + order[0].orderFee}</span>                        
									</td>
								</tr>
								<tr>
									<td class="fs15">
										<span class="row fs12">총 결제금액</span><span>${order[0].orderSum + order[0].orderFee}</span></td>
		                        </tr>
							</tbody>
						</table>
					</div>
		        </div>
	        	
	        	<div class="orderArea" style="margin: 50px 0 50px;">
		            
	            	<div class="ec-base-table">
	                	<table border="1" summary="">
							<caption>배송지 정보</caption>
		                    <tbody>
								<tr>
									<td class="fs15"> <span class="row fs12">받으시는분</span><span>${order[0].recipient}</span></td>
		                        </tr>
								<tr class="">
									<td class="fs15">
									<span class="row fs12">우편번호</span><span>${order[0].orderzip}</span></td>
		                        </tr>
								<tr class="">
									<td class="fs15">
									<span class="row fs12">주소</span><span>${order[0].orderAddr}</span></td>
		                        </tr>
								<tr>
									<td class="fs15">
									<span class="row fs12">일반전화</span><span>${order[0].recipientTel}</span></td>
		                        </tr>
								<tr>
									<td class="fs15">
										<span class="row fs12">휴대전화</span><span>${order[0].recPhone}</span>                        
									</td>
								</tr>
								<tr>
									<td class="fs15">
										<span class="row fs12">배송메시지</span><span>${order[0].deliMsg}</span></td>
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