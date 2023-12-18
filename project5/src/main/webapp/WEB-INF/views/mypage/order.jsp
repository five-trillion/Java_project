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
	<style>
	
	.typeList{
	display: none;
	}
	.typeList.current{
		display: inherit;
	}
	</style>
</head>
<body>

	<%@include file="../includes/header.jsp" %>
	
	<div id="contents" style="padding: 0 0 80px;">
		<%@include file="../includes/mp_header.jsp" %>
		<div class="page_wrap">
		    <div class="xans-element- xans-myshop xans-myshop-orderhistorytab ec-base-tab" style="padding-top: 0;">
			    <ul class="menu col-2 " style="margin-bottom:0;max-width: 100%;padding: 0;">
					<li class="tab_class selected nav-item" data-tab="tab-1">
						<a>주문내역조회 (<span id="xans_myshop_total_orders"><c:out value="${fn:length(order)}"/></span>)</a></li>
			        <li class="tab_class_cs nav-item" data-tab="tab-2">
			        	<a>취소/반품/교환 내역 (<span id="xans_myshop_total_orders_cs">0</span>)</a>
			        </li>
			    </ul>
			</div>
		
		    <form method="GET" id="OrderHistoryForm" name="OrderHistoryForm">
		    	<div class="xans-element- xans-myshop xans-myshop-orderhistoryhead">
		    		<fieldset class="order_head">
						<legend>검색기간설정</legend>
		            		<div class="stateSelect ">
				                <select id="order_status" name="order_status" class="fSelect">
									<option value="all">전체 주문처리상태</option>
									<option value="shipped_before">주문완료</option>
									<option value="shipped_standby">배송준비중</option>
									<option value="shipped_begin">배송중</option>
									<option value="shipped_complate">배송완료</option>
									<option value="order_cancel">취소</option>
									<option value="order_exchange">교환</option>
									<option value="order_return">반품</option>
								</select>            
							</div>
				            <div class="period_layout">
				                <span class="period">
				                    <a href="#none" class="fs15" days="00">오늘</a>
				                    <a href="#none" class="fs15" days="07">1주일</a>
				                    <a href="#none" class="fs15" days="30">1개월</a>
				                    <a href="#none" class="fs15" days="90">3개월</a>
				                    <a href="#none" class="fs15" days="180">6개월</a>
				                </span>
				            </div>
				            <div class="date">
				                <input id="history_start_date" name="history_start_date" class="fText hasDatepicker" readonly="readonly" size="10" value="2023-08-30" type="text">
				                <button type="button" class="ui-datepicker-trigger"><img src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif" alt="..." title="..."></button> ~ 
				                <input id="history_end_date" name="history_end_date" class="fText hasDatepicker" readonly="readonly" size="10" value="2023-11-28" type="text">
				                <button type="button" class="ui-datepicker-trigger"><img src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif" alt="..." title="..."></button>
				            </div>
				            <div class="order_submit">
				                <input alt="조회" id="order_search_btn" type="image" src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/btn_search.gif">
				            </div>
		        	</fieldset>
		<ul class="fs12">
		<li></li>
		<li class="displaynone">기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
		            <li class="">기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 주문처리완료 후 36개월 이내의 주문내역을 조회하실 수 있습니다.</li>
		            <li class=" ">완료 후 36개월 이상 경과한 주문은 전화상담 (070-4897-1148) 바랍니다.</li>
		            <li class="">취소/교환/반품 신청은 배송완료일 기준 7일까지 가능합니다.</li>
		        </ul>
		</div>
		<input id="mode" name="mode" value="" type="hidden">
		<input id="term" name="term" value="" type="hidden">
		</form>
		
		<div class="tab-content">
		<div id="tab-1" class="xans-element- xans-myshop xans-myshop-orderhistorylistitem n_board typeList current">
		        
		<table border="1" summary="">
		<caption>주문 상품 정보</caption>
		            <thead>
		            	<tr>
							<td>
		                        <p class="fs12 number">주문일자 [주문번호]</p>
		                        <p class="thumb"></p>
		                        <p class="fs12 product" style="padding: 0px;">상품</p>
		                        <p class="quantity"></p>
		                        <p class="right"></p>
		                        <p class="fs12 state">주문상태</p>
		                    </td>
		                </tr>
		            </thead>
		            <c:choose>
		            	<c:when test="${order.isEmpty()}">
		<tbody>
			<tr>
				<td><p class="message  fs14">주문 내역이 없습니다.</p></td>
			</tr>
		</tbody>
		            	</c:when>
		            	<c:otherwise>
							<tbody class="center">
								<c:forEach items="${order}" var="order">
								<tr class="">
									<td>
		                        		<div class="number fs12">
		                            		<p></p>
                                           	<p>
                                           		<fmt:formatDate value="${order.orderDate}" pattern="yyyy-MM-dd HH:mm:ss"/><br>[${order.orderNo}]
                                           	</p>                            
		                            		<p><a href="/mypage/order_detail?orderNo=${order.orderNo}&prodNo=${order.prodNo}" class="btnNormal" onclick="">상세정보</a></p>
										</div>
		                        		<div class="thumb"><a href="/shop/detail?prodNo=${order.prodNo}"><img src="${contextPath}/resources/upload/product/main/${order.prodMainImg}" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt=""></a></div>
		                        		<div class="product left top">
		                            		<strong class="name fs14" onclick="location.href='/shop/detail?prodNo=${order.prodNo}'">${order.prodName}</strong>
		                            		<ul class="xans-element- xans-myshop xans-myshop-optionset option fs10"><li class="">
												<strong> 주문수량: ${order.orderCnt} </strong></li>
											</ul>
		                        		</div>
				                        <div class="quantity fs14"></div>
				                        <div class="right">
											<strong class="fs14"></strong><div class=""></div>
										</div>
		                        		<div class="state fs14">
				                            <p class="txtEm"></p>
				                            <p class="fs12">
				                                ${order.odst}
				                            </p>                            
				                            <a href="#none" class="btnNormal" onclick="">주문취소</a>
				                            <a href="exchange.html" class="btnNormal">교환신청</a>
				                            <a href="return.html" class="btnNormal">반품신청</a>
				                            <a href="#" class="btnSubmit snap_review_write_btn" style="display: none;" data-params="" data-detail="">구매후기</a>
				                            <a href="#none" class="btnNormal displaynone" onclick="">취소철회</a>
				                            <a href="#none" class="btnNormal displaynone" onclick="">교환철회</a>
				                            <a href="#none" class="btnNormal displaynone" onclick="">반품철회</a>
				                        </div>
	                    			</td>
	                			</tr>
	                			</c:forEach>
							</tbody>
						</c:otherwise>
		            </c:choose>
		</table>
		</div>
		
		<div id="tab-2" class="xans-element- xans-myshop xans-myshop-orderhistorylistitem n_board typeList">
		<table border="1" summary="">
<caption>취소/반품/교환</caption>
            <thead>
            	<tr>
					<td>
                        <p class="fs12 number">주문일자 [주문번호]</p>
                        <p class="thumb"></p>
                        <p class="fs12 product" style="padding: 0px;">상품</p>
                        <p class="quantity"></p>
                        <p class="right"></p>
                        <p class="fs12 state">주문상태</p>
                    </td>
                </tr>
            </thead>
<tbody class="center ">
	<tr>
	<td>				
<p class="message fs14">취소/반품/교환 내역이 없습니다.</p>
    </td>
    </tr>        		
</tbody>
</table>
		</div>
		
		    <div class="xans-element- xans-myshop xans-myshop-orderhistorypaging ec-base-paginate"><a href="?page=1&amp;history_start_date=2023-08-30&amp;history_end_date=2023-11-28&amp;past_year=2022" class="first"><img src="//img.echosting.cafe24.com/skin/base/common/btn_page_first.gif" alt="첫 페이지"></a>
		<a href="?page=1&amp;history_start_date=2023-08-30&amp;history_end_date=2023-11-28&amp;past_year=2022"><img src="//img.echosting.cafe24.com/skin/base/common/btn_page_prev.gif" alt="이전 페이지"></a>
		<ol>
		<li class="xans-record-"><a href="?page=1&amp;history_start_date=2023-08-30&amp;history_end_date=2023-11-28&amp;past_year=2022" class="this">1</a></li>
		                    </ol>
		<a href="?page=1&amp;history_start_date=2023-08-30&amp;history_end_date=2023-11-28&amp;past_year=2022"><img src="//img.echosting.cafe24.com/skin/base/common/btn_page_next.gif" alt="다음 페이지"></a>
		<a href="?page=1&amp;history_start_date=2023-08-30&amp;history_end_date=2023-11-28&amp;past_year=2022" class="last"><img src="//img.echosting.cafe24.com/skin/base/common/btn_page_last.gif" alt="마지막 페이지"></a>
		</div>
		</div>
		
		<!-- snap review script start contact mail : support@snapvi.co.kr -->
		<script>
		function onloadsnapscript () { var snapInstance = new snapSolution("fnfn"); snapInstance.loadScript('review_independent'); }
		</script>
		<!-- snap review end -->
		
	</div>
	</div>
	
	<%@include file="../includes/footer.jsp" %>
	<script>
	$(".order").addClass("on");
	
	$(".nice-select").css({"display":"none"});
	$("#order_status").css({"display":"block"});
	
	$(document).ready(function(){
		$('ul.menu li').click(function(){
			var tab_id = $(this).attr('data-tab');

			$('.typeList').removeClass('current');

			$(this).addClass('current');
			$("#"+tab_id).addClass('current');
		});
		$('.tab_class_cs').click(function(){
			$('.tab_class').removeClass('selected');
			$(this).addClass('selected');
		});
		$('.tab_class').click(function(){
			$('.tab_class_cs').removeClass('selected');
			$(this).addClass('selected');
		});
	});
	</script>

</body>
</html>