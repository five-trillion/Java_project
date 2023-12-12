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
			<script type="text/javascript" src="//cdn.snapfit.co.kr/js/push/order.js" charset="utf-8"></script>
			
			<div class="page_wrap order_result" style="margin-top:0">
			    <div class="page_title fs60">주문완료</div>
			    <form id="frm_order_result" name="frm_order_result" action="" method="post" target="_self" enctype="multipart/form-data">
					<input id="order_id" name="order_id" value="20231211-0000125" type="hidden">
					<input id="bank_url_hidden" name="bank_url_hidden" value="" type="hidden">
			<div class="xans-element- xans-order xans-order-result xans-record-"><!-- 해당 스크립트 삭제에 유의 부탁드리며, 스냅 솔루션의 스크립트입니다. -->
			<!-- snappush start -->
			<script>
			snapPushOrderInstance.orderNo = "${order.orderNo}";
			snapPushOrderInstance.setPayPrice("${order.orderSum}");
			snapPushOrderInstance.setCouponDiscount("${order.userPoint}");
			snapPushOrderInstance.setTotalPrice("${order.orderSum-3000}");
			</script>
			<!-- snappush end -->
			<!------------- tiktok pixel -------------->
			<!------------- 주문 완료 -------------->
			<script>
			
			    try {
			        var productCount = EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA.order_product.length;
			        var tiktokItems = [];
			        if (productCount > 0) {
			            for (var i = 0; i < productCount; i++) {
			                tiktokItems.push({
			                    content_id: EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA.order_product[i].product_no,
			                    content_type: 'product',
			                    content_name: EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA.order_product[i].product_name,
			                    quantity: EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA.order_product[i].quantity,
			                    price: EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA.order_product[i].sub_total_price / EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA.order_product[i].quantity,
			                });
			            }
			        }
			        var pixelData = {
			            contents: tiktokItems,
			            value: EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA.payed_amount,
			            currency: 'KRW',
			        };
			        if(typeof tiktokPixelIds !== 'undefined' && tiktokPixelIds.length > 0) {
			            for(var i in tiktokPixelIds) {
			                ttq.instance(tiktokPixelIds[i]).track('CompletePayment', pixelData)
			            }
			        } else {
			            ttq.track('CompletePayment', pixelData)
			        }
			
			    } catch(e) {}
			
			</script>
			<!------------- 주문 완료 -------------->
			<!------------- tiktok pixel -------------->
			
			${order}
			<div class="orderInfo">
			    <p class="fs12">
	                <strong class="fs12">고객님의 주문이 완료 되었습니다.</strong>
	                주문내역 및 배송에 관한 안내는 <a href="/myshop/order/list.html">주문조회</a> 를 통하여 확인 가능합니다.
	            </p>
	            <ul>
					<li class="fs13">주문번호 : <strong>${order.orderNo}</strong></li>
	                <li class="fs13">주문일자 : <span>${order.orderDate}</span></li>
	            </ul>
			</div>
			
			<div class="orderListArea">
	            <div class="shoping__cart__table">
	        		<table>
	        			<caption>주문상품</caption>
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
		                	<c:forEach items="${order}" var="order">
		                    <tr>
		                    	<td class="shoping__cart__item__close" style="width:80px; text-align: center;">
		                            <span><input type="checkbox"></span>
		                        </td>
		                    	<td class="shoping__cart__total">
		                            <img src="${contextPath}/resources/upload/product/thumbnails/${order.prodMainImg}" alt="" style="width:100px;">
		                        </td>
		                        <td class="shoping__cart__item" style="padding-left: 20px; width: 420px;">
		                            <h5>${order.prodName}</h5> <br>
		                            <input type="hidden" value="${order.cartNo}">
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
		                        <td class="shoping__cart__item__close">
		                            <a class="delete_btn" data-cartno="${order.cartNo}"><span class="icon_close"></span></a>
		                        </td>
		                    </tr>
		                    <c:set var="total" value="${total + order.salePrice * order.orderCnt}"/>
		                    </c:forEach>
		                </tbody>
		            </table>
		            <p class="message  fs14" style="margin: 10px 0 0 10px;">
		            상품구매금액 <strong>${total}원</strong> + 배송비 3,000원 = 합계 : <strong><fmt:formatNumber pattern="###,###,###.##" value="${total+3000}"/>원</strong></p>
        		</div>
				<div class="ec-base-table shoping__cart__table typeList displaynone" nspace="individual">
	                <table border="1" summary="">
						<caption>개별배송</caption>
                    	<colgroup>
							<col style="width:92px">
							<col style="width:auto">
							<col style="width:98px">
							<col style="width:75px">
							<col style="width:98px">
							<col style="width:98px">
							<col style="width:98px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">이미지</th>
	                            <th scope="col">상품정보</th>
	                            <th scope="col">판매가</th>
	                            <th scope="col">수량</th>
								<th scope="col">적립금</th>
								<th scope="col">배송구분</th>
	                            <th scope="col">합계</th>
	                        </tr>
                        </thead>
						<tfoot class="right">
							<tr>
								<td colspan="7">
									<span class="gLeft">[개별배송]</span> 상품구매금액 <strong></strong><span class="displaynone"> + 부가세 </span> + 배송비  + 지역별배송비 <span class="displaynone"> - 상품할인금액 </span> = 합계 : <strong class="txtEm gIndent10"><span class="txt18"></span></strong> <span class="displaynone"></span>
								</td>
	                        </tr>
                        </tfoot>
                        <tbody class="xans-element- xans-order xans-order-individualresultlist center">
                        	<tr class="xans-record-">
								<td class="thumb"><a href="/product/detail.html"><img src="//img.echosting.cafe24.com/thumb/img_product_big.gif" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt=""></a></td>
	                            <td class="left">
	                                <strong class="name"></strong>
	                                <div class="option displaynone"></div>
	                                <ul class="xans-element- xans-order xans-order-optionset option"><li class="">
										<strong></strong> (개)</li>
									</ul>
									<p class="gBlank5 displaynone">무이자할부 상품</p>
	                            </td>
	                            <td class="right">
	                                <div class="">
	                                    <strong></strong>
	                                    <div class="displaynone"></div>
	                                </div>
	                                <div class="displaynone">
	                                    <strong></strong>
	                                    <div class="displaynone"></div>
	                                </div>
	                            </td>
	                            <td></td>
			                            <!--
			<td><span class="txtInfo"></span></td>
			<td><div class="txtInfo">개별배송<div class="displaynone">(해외배송가능)</div></div></td>
			-->
	                            <td class="right">
									<strong></strong><div class="displaynone"></div>
								</td>
			                            
			<!-- 해당 스크립트 삭제에 유의 부탁드리며, 스냅 솔루션의 스크립트입니다. -->
			<!-- snappush start -->
			<script type="text/javascript">
			snapPushOrderInstance.addOrderItem("" ,"", "", "", "", "");
			</script>
			<!-- snappush end -->
			                            
	                        </tr>
						</tbody>
					</table>
				</div>
	        </div>
			
			<div class="totalArea">
	            <div class="ec-base-table shoping__cart__table typeList gBorder total ">
	                <div>
			
                    	<div class="center">
                            <div>
                               	<strong class="td_t fs12">총 주문 금액 </strong> 
                                <div class="box fs21 price2 td_t">
									<strong> 31,000 원</strong><span class="displaynone"></span>
								</div>
                            </div>
                            <div>
                            	<strong class="td_t fs12">총 결제금액</strong>
	                                <div class="box txtEm fs21">
										<strong> 31,000 원</strong><span class="displaynone"></span>
									</div>
                            </div>
	                    </div>
	                </div>
	            </div>
	            <div class="detail">
                	<div class="ec-base-table shoping__cart__table gMerge ">
	                    <table border="1" summary="">
							<caption>적립예정 내역</caption>
	                        <colgroup>
								<col style="width:140px">
								<col style="width:auto">
							</colgroup>
							<tbody>
								<tr class="sum txt13">
									<th scope="row"><strong>총 적립예정금액</strong></th>
	                                <td><strong class="txt14">280</strong>원</td>
	                            </tr>
								<tr class="">
									<th scope="row">회원 적립금</th>
	                                <td>280원</td>
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
            	<div class="ec-base-table shoping__cart__table ">
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
			</div>
			</div>
			</form>
		</div>
		
		<hr class="layout">
	
	<%@include file="../includes/footer.jsp" %>

</body>
</html>