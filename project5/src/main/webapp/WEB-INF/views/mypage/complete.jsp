<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문완료</title>
<%@include file="../includes/src.jsp" %>
</head>
<body>
	<%@include file="../includes/header.jsp" %>
	<div id="container">
        <div id="contents">
			<div class="page_wrap order_result" style="margin: 0 auto 100px;">
    <div class="page_title fs60">주문완료</div>
    	<form id="frm_order_result" name="frm_order_result" action="" method="post" target="_self" enctype="multipart/form-data">
				<input id="order_id" name="order_id" value="20231213-0000119" type="hidden">
				<input id="bank_url_hidden" name="bank_url_hidden" value="" type="hidden"><div class="xans-element- xans-order xans-order-result xans-record-">
			<div class="orderInfo">
			    <p class="fs16">
	                <strong class="fs18">고객님의 주문이 완료 되었습니다.</strong><br>
	                주문내역 및 배송에 관한 안내는 <a href="/mypage/order">주문조회</a> 를 통하여 확인 가능합니다.
	            </p>
	            <ul>
					<li class="fs16">주문번호 : <strong><c:out value="${orderNo}"/></strong></li>
	                <li class="fs16">주문일자 : <span></span></li>
	            </ul>
			</div>
			
			<div class="orderListArea">
	            <div class="shoping__cart__table">
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
		                    <c:set var="orderNo" value="${order.orderNo}"/>
		                    </c:forEach>
		                </tbody>
		            </table>
		            <p class="message  fs14" style="margin: 10px 0 0 10px;">
		            상품구매금액 <strong><fmt:formatNumber pattern="###,###,###.##" value="${orderSum}"/>원</strong> + 배송비 3,000원 
		            = 합계 : <strong><fmt:formatNumber pattern="###,###,###.##" value="${orderSum+3000}"/>원</strong></p>
        		</div>
	        </div>
			
			<div class="totalArea">
	            <div class="ec-base-table shoping__cart__table typeList gBorder total ">
	                <div>
			
                    	<div class="center">
                            <div>
                               	<strong class="td_t fs12">총 주문 금액 </strong> 
                                <div class="box fs21 price2 td_t">
									<strong><fmt:formatNumber pattern="###,###,###.##" value="${orderSum+3000}"/>원</strong>
								</div>
                            </div>
                            <div>
                            	<strong class="td_t fs12">총 결제금액</strong>
	                                <div class="box txtEm fs21">
										<strong> <fmt:formatNumber pattern="###,###,###.##" value="${orderSum+3000}"/> 원</strong>
									</div>
                            </div>
	                    </div>
	                </div>
	            </div>
	            <div class="detail">
                	<div class="ec-base-table gMerge ">
	                    <table border="1" summary="">
							<caption>적립예정 내역</caption>
	                        <colgroup>
								<col style="width:140px">
								<col style="width:auto">
							</colgroup>
							<tbody>
								<tr class="sum txt13">
									<th scope="row"><strong>총 적립예정금액</strong></th>
	                                <td><strong class="txt14"><fmt:formatNumber pattern="###,###,###.##" value="${orderSum/100}"/>원</strong></td>
	                            </tr>
								<tr class="">
									<th scope="row">회원 적립금</th>
	                                <td><fmt:formatNumber pattern="###,###,###.##" value="${orderSum/100}"/>원</td>
	                            </tr>
							</tbody>
						</table>
					</div>
	            </div>
	        </div>
			
			<div class="orderArea">
	            <div class="title">
	                <h3>배송지정보</h3>
	            </div>
            	<div class="ec-base-table">
                	<table border="1" summary="">
						<caption>배송지 정보</caption>
	                    <tbody>
							<tr>
								<td class="fs15"> <span class="row fs12">받으시는분</span><span>박주영</span></td>
	                        </tr>
							<tr class="">
								<td class="fs15">
								<span class="row fs12">우편번호</span><span>06122</span></td>
	                        </tr>
							<tr class="">
								<td class="fs15">
								<span class="row fs12">주소</span><span>서울 강남구 논현로111길 3 휴먼스페이스주상복합아파트</span></td>
	                        </tr>
							<tr>
								<td class="fs15">
								<span class="row fs12">일반전화</span></td>
	                        </tr>
							<tr>
								<td class="fs15">
									<span class="row fs12">휴대전화</span><span>010-1111-1111</span>                        
								</td>
							</tr>
							<tr>
								<td class="fs15">
									<span class="row fs12">배송메시지</span><span></span></td>
	                        </tr>
						</tbody>
					</table>
				</div>
	        </div>
			        
			<div class="ec-base-button">
	            <span class="gRight">
	                <a href="/" class="btnNormalFix sizeS">쇼핑계속하기</a>
	                <a href="/myshop/order/list.html" class="btnSubmitFix sizeS">주문확인하기</a>
	            </span>
	        </div>
			
			</div>
<!-- 			            <a href="#none" class="close" onclick="OrderLayer.offDiv('order_benefit_price_detail_layer');"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"></a> -->
			</form>
			</div>
			</div>
		</div>
		
		<hr class="layout">
	
	<%@include file="../includes/footer.jsp" %>

</body>
</html>