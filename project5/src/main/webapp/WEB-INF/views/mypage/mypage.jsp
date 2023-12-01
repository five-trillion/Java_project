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
		<div class="xans-element- xans-myshop xans-myshop-asyncbenefit page_wrap"><div class="ec-base-box typeMember gMessage displaynone">
		        <div class="information">
		            <p class="thumbnail"><img src="//fnfn.kr/web/upload/mg_img_1.png" alt="" onerror="this.src='//img.echosting.cafe24.com/skin/base/member/img_member_default.gif';" class="myshop_benefit_group_image_tag"></p>
		            <div class="description">
		                <span>저희 쇼핑몰을 이용해 주셔서 감사합니다. <strong class="txtEm"><span><span class="xans-member-var-name">박주영</span></span></strong> 님은 <strong>[<span class=""><img src="//fnfn.kr/web/bbs_member_icon/member/1643074939.png" alt="" class="myshop_benefit_group_icon_tag"></span><span class="xans-member-var-group_name">f</span><span class="myshop_benefit_ship_free_message"></span>]</strong> 회원이십니다.</span>
		                <p class="myshop_benefit_display_no_benefit"><strong class="txtEm"><span class="myshop_benefit_dc_pay"></span> <span class="myshop_benefit_dc_min_price">1,000원 이상</span></strong> 구매시 <strong class="txtEm"><span class="myshop_benefit_dc_price">1</span><span class="myshop_benefit_dc_type">%</span></strong>을 <span class="myshop_benefit_use_dc">추가적립</span> 받으실 수 있습니다. <span class="myshop_benefit_dc_max_percent">(최대 100,000원)</span></p>
		                <p class="displaynone myshop_benefit_display_with_all"><strong class="txtEm"><span class="myshop_benefit_dc_pay"></span> <span class="myshop_benefit_dc_min_price_mileage">0원 이상</span></strong> 구매시 <strong class="txtEm"><span class="myshop_benefit_dc_price_mileage">0원</span><span class="myshop_benefit_dc_type_mileage"></span></strong>을 <span class="myshop_benefit_use_dc_mileage"></span> 받으실 수 있습니다. <span class="myshop_benefit_dc_max_mileage_percent"></span></p>
		                <div class=" gBlank5" id="sGradeAutoDisplayArea">
		                    <p class=" sAutoGradeDisplay "><strong>[<span class="sNextGroupIconArea"><img src="//fnfn.kr/web/bbs_member_icon/member/1643074953.png" alt="n" class="myshop_benefit_next_group_icon_tag"></span><span class="xans-member-var-sNextGrade">n</span>]</strong> 까지 남은 구매금액은 <strong><span class="xans-member-var-sGradeIncreasePrice">100,000원</span></strong> 입니다. (최근 <span class="xans-member-var-sGradePeriod">6개월 동안</span> 구매금액 : <span class="xans-member-var-sPeriodOrderPrice">0원</span>)</p>
		                    <p class="displaynone sAutoGradeDisplay "><strong>[<span class="sNextGroupIconArea"><img src="//fnfn.kr/web/bbs_member_icon/member/1643074953.png" alt="n" class="myshop_benefit_next_group_icon_tag"></span><span class="xans-member-var-sNextGrade">n</span>]</strong> 까지 남은 구매건수는 <strong><span class="xans-member-var-sGradeIncreaseCount">0건</span></strong> 입니다. (최근 <span class="xans-member-var-sGradePeriod">6개월 동안</span> 구매건수 : <span class="xans-member-var-sPeriodOrderCount">0건</span>)</p>
		                    <p class="displaynone sAutoGradeDisplay "><strong>[<span class="sNextGroupIconArea"><img src="//fnfn.kr/web/bbs_member_icon/member/1643074953.png" alt="n" class="myshop_benefit_next_group_icon_tag"></span><span class="xans-member-var-sNextGrade">n</span>]</strong> 까지 남은 구매금액은 <strong><span class="xans-member-var-sGradeIncreasePrice">100,000원</span></strong>, 남은 구매건수는 <strong><span class="xans-member-var-sGradeIncreaseCount">0건</span></strong> 입니다. (최근 <span class="xans-member-var-sGradePeriod">6개월 동안</span> 구매금액 : <span class="xans-member-var-sPeriodOrderPrice">0원</span>｜구매건수 : <span class="xans-member-var-sPeriodOrderCount">0건</span>)</p>
		                    <p class="displaynone sAutoGradeDisplay "><strong>[<span class="sNextGroupIconArea"><img src="//fnfn.kr/web/bbs_member_icon/member/1643074953.png" alt="n" class="myshop_benefit_next_group_icon_tag"></span><span class="xans-member-var-sNextGrade">n</span>]</strong> 까지 남은 구매금액은 <strong><span class="xans-member-var-sGradeIncreasePrice">100,000원</span></strong>, 또는 남은 구매건수 <strong><span class="xans-member-var-sGradeIncreaseCount">0건</span></strong> 입니다. (최근 <span class="xans-member-var-sGradePeriod">6개월 동안</span> 구매금액 : <span class="xans-member-var-sPeriodOrderPrice">0원</span>｜구매건수 : <span class="xans-member-var-sPeriodOrderCount">0건</span>)</p>
		                    <p id="sChangeMaxTypePriceArea" class="displaynone "><strong>[<span class="sNextGroupIconArea"><img src="//fnfn.kr/web/bbs_member_icon/member/1643074953.png" alt="n" class="myshop_benefit_next_group_icon_tag"></span><span class="xans-member-var-sNextGrade">n</span>]</strong> 등급을 유지하기 위해 남은 구매금액은 <strong><span class="xans-member-var-sGradeIncreasePrice">100,000원</span></strong> 입니다. (최근 <span class="xans-member-var-sGradePeriod">6개월 동안</span> 구매금액 : <span class="xans-member-var-sPeriodOrderPrice">0원</span>)</p>
		                    <p id="sChangeMaxTypeCountArea" class="displaynone "><strong>[<span class="sNextGroupIconArea"><img src="//fnfn.kr/web/bbs_member_icon/member/1643074953.png" alt="n" class="myshop_benefit_next_group_icon_tag"></span><span class="xans-member-var-sNextGrade">n</span>]</strong> 등급을 유지하기 위해 남은 구매건수는 <strong><span class="xans-member-var-sGradeIncreaseCount">0건</span></strong> 입니다. (최근 <span class="xans-member-var-sGradePeriod">6개월 동안</span> 구매건수 : <span class="xans-member-var-sPeriodOrderCount">0건</span>)</p>
		                    <p id="sChangeMaxTypePriceAndCountArea" class="displaynone "><strong>[<span class="sNextGroupIconArea"><img src="//fnfn.kr/web/bbs_member_icon/member/1643074953.png" alt="n" class="myshop_benefit_next_group_icon_tag"></span><span class="xans-member-var-sNextGrade">n</span>]</strong> 등급을 유지하기 위해 남은 구매금액은 <strong><span class="xans-member-var-sGradeIncreasePrice">100,000원</span></strong>, 남은 구매건수는 <strong><span class="xans-member-var-sGradeIncreaseCount">0건</span></strong> 입니다. (최근 <span class="xans-member-var-sGradePeriod">6개월 동안</span> 구매금액 : <span class="xans-member-var-sPeriodOrderPrice">0원</span>｜구매건수 : <span class="xans-member-var-sPeriodOrderCount">0건</span>)</p>
		                    <p id="sChangeMaxTypePriceOrCountArea" class="displaynone "><strong>[<span class="sNextGroupIconArea"><img src="//fnfn.kr/web/bbs_member_icon/member/1643074953.png" alt="n" class="myshop_benefit_next_group_icon_tag"></span><span class="xans-member-var-sNextGrade">n</span>]</strong> 등급을 유지하기 위해 남은 구매금액은 <strong><span class="xans-member-var-sGradeIncreasePrice">100,000원</span></strong>, 또는 남은 구매건수 <strong><span class="xans-member-var-sGradeIncreaseCount">0건</span></strong> 입니다. (최근 <span class="xans-member-var-sGradePeriod">6개월 동안</span> 구매금액 : <span class="xans-member-var-sPeriodOrderPrice">0원</span>｜구매건수 : <span class="xans-member-var-sPeriodOrderCount">0건</span>)</p>
		                    <p class="txtInfo txt11">승급 기준에 따른 예상 금액이므로 총주문 금액과 다를 수 있습니다.</p>
		                </div>
		            </div>
		        </div>
		     </div>
		<div class="invite ec-base-box typeThinBg gMerge displaynone">
		        <strong class="txtEm">주소를 복사하여 친구를 쇼핑몰에 초대해보세요.</strong>
		        <p class="copy">
		            <input type="text" id="" value="///?reco_id=" readonly="">
		            &nbsp;<a href="#none" onclick="" class="btnSubmit">주소복사</a>
		        </p>
		        <ul>
		<li>- 친구에게는 가입즉시 의 이 지급됩니다.</li>
		            <li>- </li>
		        </ul>
		</div>
		</div>
		
		<div class="page_wrap">
			<div class="mp_idx">
		        <div class="left">
		            <ul class="xans-element- xans-myshop xans-myshop-asyncbankbook coldiv-1 gray ">
		            	<li><a href="/myshop/mileage/historyList.html" class="fs15"><strong>적립금</strong><span><span id="xans_myshop_bankbook_avail_mileage">${user.point}원</span></span></a></li>
					</ul>
					<ul class="coldiv-1 gray">
						<li><a href="/myshop/order/list.html" class="fs15">주문배송조회<i class="arrow"></i></a></li>
		            </ul>
		            <ul class="coldiv-4 orderstate ">
		            	<li>
		            		<strong><a href="/myshop/order/list.html?order_status=shipped_before" class="fs30"><span id="xans_myshop_orderstate_shppied_before_count">0</span></a></strong>
                    		<span class="fs11">입금전</span>
                		</li>
						<li>
		                    <strong><a href="/myshop/order/list.html?order_status=shipped_standby" class="fs30"><span id="xans_myshop_orderstate_shppied_standby_count">0</span></a></strong>
		                    <span class="fs11">배송 준비중</span>
		                </li>
						<li>
		                    <strong><a href="/myshop/order/list.html?order_status=shipped_begin" class="fs30"><span id="xans_myshop_orderstate_shppied_begin_count">0</span></a></strong>
		                    <span class="fs11">배송중</span>
                		</li>
						<li>
		                    <strong><a href="/myshop/order/list.html?order_status=shipped_complate" class="fs30"><span id="xans_myshop_orderstate_shppied_complate_count">0</span></a></strong>
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
		                    <strong><a href="/myshop/order/list.html?order_status=order_cancel" class="fs30"><span id="xans_myshop_orderstate_order_cancel_count">0</span></a></strong>
		                    <span class="fs11">취소</span>
                		</li>
						<li>
		                    <strong><a href="/myshop/order/list.html?order_status=order_exchange" class="fs30"><span id="xans_myshop_orderstate_order_exchange_count">0</span></a></strong>
		                    <span class="fs11">교환</span>
                		</li>
						<li>
		                    <strong><a href="/myshop/order/list.html?order_status=order_return" class="fs30"><span id="xans_myshop_orderstate_order_return_count">0</span></a></strong>
		                    <span class="fs11">반품</span>
                		</li>
					</ul>
				</div>
		    </div>
		</div>
		
		<div id="myshopMain" class="xans-element- xans-myshop xans-myshop-main displaynone"><ul>
		<li class="shopMain order">
		            <h3><a href="/myshop/order/list.html"><strong>Order</strong><span>주문내역 조회</span></a></h3>
		            <p><a href="/myshop/order/list.html">고객님께서 주문하신 상품의<br> 주문내역을 확인하실 수 있습니다.</a></p>
		        </li>
		        <li class="shopMain profile">
		            <h3><a href="/member/modify.html"><strong>Profile</strong><span>회원 정보</span></a></h3>
		            <p><a href="/member/modify.html">회원이신 고객님의 개인정보를<br> 관리하는 공간입니다.</a></p>
		        </li>
		        <li class="shopMain wishlist">
		            <h3><a href="/myshop/wish_list.html"><strong>Wishlist</strong><span>관심 상품</span></a></h3>
		            <p><a href="/myshop/wish_list.html">관심상품으로 등록하신<br> 상품의 목록을 보여드립니다.</a></p>
		        </li>
		        <li class="shopMain likeIt displaynone ">
		            <h3><a href=""><strong>Like it</strong><span>좋아요</span></a></h3>
		            <p><a href="">'좋아요'를 선택한 상품과<br> 상품분류 목록을 보여드립니다.</a></p>
		        </li>
		        <li class="shopMain mileage ">
		            <h3 class="txtTitle16B"><a href="/myshop/mileage/historyList.html"><strong>Mileage</strong><span>적립금</span></a></h3>
		            <p class="txtSub11"><a href="/myshop/mileage/historyList.html">적립금은 상품 구매 시<br> 사용하실 수 있습니다.</a></p>
		       </li>
		       <li class="shopMain deposits displaynone ">
		           <h3 class="txtTitle16B"><a href="/myshop/deposits/historyList.html"><strong>Deposits</strong><span>예치금</span></a></h3>
		            <p class="txtSub11"><a href="/myshop/deposits/historyList.html">예치금은 현금과 동일하게<br> 상품 구매시 사용하실 수 있습니다.</a></p>
		        </li>
		        <li class="shopMain consult displaynone">
		            <h3><a href="/board/consult/list.html"><strong>Consult</strong><span>1:1 맞춤상담</span></a></h3>
		            <p><a href="/board/consult/list.html">고객님의 궁금하신 문의사항에 대하여<br> 1:1맞춤상담 내용을<br> 확인하실 수 있습니다.</a></p>
		        </li>
		        <li class="shopMain coupon ">
		            <h3><a href="/myshop/coupon/coupon.html"><strong>Coupon</strong><span>쿠폰</span></a></h3>
		            <p><a href="/myshop/coupon/coupon.html">고객님이 보유하고 계신<br> 쿠폰내역을 보여드립니다.</a></p>
		        </li>
		        <li class="shopMain board ">
		            <h3><a href="/myshop/board_list.html"><strong>Board</strong><span>게시물 관리</span></a></h3>
		            <p><a href="/myshop/board_list.html">고객님께서 작성하신 게시물을<br> 관리하는 공간입니다.</a></p>
		        </li>
		        <li class="shopMain address">
		            <h3><a href="/myshop/addr/list.html"><strong>Address</strong><span>배송 주소록 관리</span></a></h3>
		            <p><a href="/myshop/addr/list.html">자주 사용하는 배송지를 등록하고<br> 관리하실 수 있습니다.</a></p>
		        </li>
		                <li class="shopMain regularDelivery ">
		            <h3><a href="/myshop/regular_delivery.html"><strong>Subscription</strong><span>정기배송 관리</span></a></h3>
		            <p><a href="/myshop/regular_delivery.html">고객님께서 신청하신 정기배송의<br>신청 정보 및 내역을 확인하실 수 있습니다.</a></p>
		        </li>
		    </ul>
		</div>
    </div>
    
    <%@include file="../includes/footer.jsp" %>
</body>
</html>