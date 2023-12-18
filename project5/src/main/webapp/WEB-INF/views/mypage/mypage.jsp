<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage</title>
<%@include file="../includes/src.jsp" %>
</head>
<body>

	<%@include file="../includes/header.jsp" %>

	<div id="contents" style="padding: 0 0 80px;">
        <div class=""><!--
		    $url = /member/login.html
		-->
		</div>
		
		<%@include file="../includes/mp_header.jsp" %>
		
		<div class="page_wrap">
			<div class="mp_idx">
		        <div class="left">
		            <ul class="xans-element- xans-myshop xans-myshop-asyncbankbook coldiv-1 gray ">
		            	<li><a href="/mypage/point" class="fs15"><strong>적립금</strong><span><span id="xans_myshop_bankbook_avail_mileage">${user.point}원</span></span></a></li>
					</ul>
					<ul class="coldiv-1 gray">
						<li><a href="/mypage/order" class="fs15">주문배송조회<i class="arrow"></i></a></li>
		            </ul>
		            <ul class="coldiv-3 orderstate ">
		            	<li>
		                    <strong><a href="/mypage/order" class="fs30"><span id="xans_myshop_orderstate_shppied_standby_count">0</span></a></strong>
		                    <span class="fs11">배송 준비중</span>
		                </li>
						<li>
		                    <strong><a href="/mypage/order" class="fs30"><span id="xans_myshop_orderstate_shppied_begin_count">0</span></a></strong>
		                    <span class="fs11">배송중</span>
                		</li>
						<li>
		                    <strong><a href="/mypage/order" class="fs30"><span id="xans_myshop_orderstate_shppied_complate_count">0</span></a></strong>
		                    <span class="fs11">배송완료</span>
                		</li>
					</ul>
				</div>
		        <div class="right">
		            <ul class="coldiv-1 gray">
		            	<li>
		            		<div style="display:inline-block; float:right"><a href="/shop/mypage-modify" class="fs15 modify">회원정보 수정</a></div>
		            		<div style="display:inline-block; float:left"><a href="/shop/mypage-pet" class="fs15">반려견 정보</a></div>
		            	</li>
		            </ul>
		            <ul class="coldiv-1 gray">
		            	<li><a href="/myshop/order/list.html?mode=cs" class="fs15">취소/교환/반품내역<i class="arrow"></i></a></li>
		            </ul>
		            <ul class="xans-element- xans-myshop xans-myshop-orderstate coldiv-3 orderstate ">
		            	<li>
		                    <strong><a href="/mypage/order" class="fs30"><span id="xans_myshop_orderstate_order_cancel_count">0</span></a></strong>
		                    <span class="fs11">취소</span>
                		</li>
						<li>
		                    <strong><a href="/mypage/order" class="fs30"><span id="xans_myshop_orderstate_order_exchange_count">0</span></a></strong>
		                    <span class="fs11">교환</span>
                		</li>
						<li>
		                    <strong><a href="/mypage/order" class="fs30"><span id="xans_myshop_orderstate_order_return_count">0</span></a></strong>
		                    <span class="fs11">반품</span>
                		</li>
					</ul>
				</div>
		    </div>
		</div>
		
		
    </div>
    
    <%@include file="../includes/footer.jsp" %>
    
    <script>
    $(".home").addClass("on");
    </script>
</body>
</html>