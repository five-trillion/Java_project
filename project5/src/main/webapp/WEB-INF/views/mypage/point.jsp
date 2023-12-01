<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../includes/src.jsp" %>
</head>
<body>

	<%@include file="../includes/header.jsp" %>

	<div id="contents" style="padding: 0 0 80px;">
                    
		<div class="page_title fs60">My page</div>
		<ul class="mypage_tab">
			<li class="home"><a href="/shop/mypage" class="fs15">홈</a></li>
			<li class="order"><a href="/shop/mypage-order" class="fs15">주문내역</a></li>
			<li class="mileage on"><a href="/shop/mypage-point" class="fs15">적립금</a></li>
			<li class="modify"><a href="/shop/mypage-user" class="fs15">회원정보</a></li>
			<li class="board"><a href="/shop/mypage-content" class="fs15">게시물관리</a></li>
		</ul>
		<div class="page_wrap">
		    <div class="xans-element- xans-myshop xans-myshop-mileagehistorypackage "><!--css(/css/module/myshop/mileageHistoryPackage.css)-->
		<div class="ec-base-tab">
		            <ul class="menu col-3">
		<li class="selected"><a href="/myshop/mileage/historyList.html" class="fs15">적립내역보기</a></li>
		                <li><a href="/myshop/mileage/unavailList.html" class="fs15">미가용적립내역보기</a></li>
		                <li><a href="/myshop/mileage/couponList.html" class="fs15">미가용쿠폰/회원등급적립내역</a></li>
		            </ul>
		</div>
		<div class="xans-element- xans-myshop xans-myshop-summary mileage_box"><ul>
		<li class="">
		<strong class="title fs12">사용가능 적립금</strong> <span class="data fs30"><span id="xans_myshop_summary_avail_mileage">0원</span>&nbsp;</span>
		</li>
		            </ul>
		<ul>
		<li class="">
		<strong class="title fs12">총 적립금</strong> <span class="data fs21"><span id="xans_myshop_summary_total_mileage">0원</span>&nbsp;</span>
		</li>
		                <li class="">
		<strong class="title fs12">사용된 적립금</strong> <span class="data fs21"><span id="xans_myshop_summary_used_mileage">0원</span>&nbsp;</span>
		</li>
		                <li class="">
		<strong class="title fs12">미가용 적립금</strong> <span class="data fs21"><span id="xans_myshop_summary_unavail_mileage">0원</span>&nbsp;</span>
		</li>
		                <li class="">
		<strong class="title fs12">환불예정 적립금</strong> <span class="data fs21"><span id="xans_myshop_summary_returned_mileage">0원</span>&nbsp;</span>
		</li>
		            </ul>
		</div>
		<div class="xans-element- xans-myshop xans-myshop-historylist"><!--
		                $only_html = no
		                $count = 10
		                $login_page = /member/login.html
		            -->
		<div class="n_board line typeList">
		                <table border="1" summary="">
		<caption>적립금 내역</caption>
		                    <thead><tr>
		<td>
		                                <p scope="col" class="fs13 od_date">주문날짜</p>
		                                <p scope="col" class="fs13 m_name">적립금</p>
		                                <p scope="col" class="fs13 with_link">관련 주문</p>
		                                <p scope="col" class="fs13 m_type">내용</p>
		                            </td>
		                        </tr></thead>
		<tbody class="displaynone center">
		<tr class="">
		<td>
		                                <p class="fs14 od_date"></p>
		                                <p class="fs14 m_name"></p>
		                                <p class="fs14 with_link"></p>
		                                <p class="fs14 m_type"></p>
		                            </td>
		                        </tr>
		<tr class="">
		<td>
		                                <p class="fs14 od_date"></p>
		                                <p class="fs14 m_name"></p>
		                                <p class="fs14 with_link"></p>
		                                <p class="fs14 m_type"></p>
		                            </td>
		                        </tr>
		<tr class="">
		<td>
		                                <p class="fs14 od_date"></p>
		                                <p class="fs14 m_name"></p>
		                                <p class="fs14 with_link"></p>
		                                <p class="fs14 m_type"></p>
		                            </td>
		                        </tr>
		</tbody>
		</table>
		<p class="message  fs14">적립금 내역이 없습니다.</p>
		            </div>
		</div>
		</div>
		
		    <div class="xans-element- xans-myshop xans-myshop-historypaging ec-base-paginate"><a href="/myshop/mileage/historyList.html?page=1" class="first"><img src="//img.echosting.cafe24.com/skin/base/common/btn_page_first.gif" alt="첫 페이지"></a>
		<a href="/myshop/mileage/historyList.html?page=1" class="prev"><img src="//img.echosting.cafe24.com/skin/base/common/btn_page_prev.gif" alt="이전 페이지"></a>
		<ol>
		<li class="xans-record-"><a href="?page=1" class="this">1</a></li>
		                    </ol>
		<a href="/myshop/mileage/historyList.html?page=1" class="next"><img src="//img.echosting.cafe24.com/skin/base/common/btn_page_next.gif" alt="다음 페이지"></a>
		<a href="/myshop/mileage/historyList.html?page=1" class="last"><img src="//img.echosting.cafe24.com/skin/base/common/btn_page_last.gif" alt="마지막 페이지"></a>
		</div>
		
		    <div class="xans-element- xans-myshop xans-myshop-head ec-base-help displaynone "><h3>적립금 안내</h3>
		<div class="inner">
		            <ol class="xans-element- xans-myshop xans-myshop-historyinfo"><li class="item1 ">주문으로 발생한 적립금은 배송완료 후 20일 부터 실제 사용 가능한 적립금으로 전환됩니다. 배송완료 시점으로부터 20일 동안은 미가용 적립금으로 분류됩니다. </li>
		<li class="item2 ">미가용 적립금은 반품, 구매취소 등을 대비한 임시 적립금으로 사용가능 적립금으로 전환되기까지 상품구매에 사용하실 수 없습니다.</li>
		<li class="item3 ">사용가능 적립금(총적립금 - 사용된적립금 - 미가용적립금)은 상품구매 시 바로 사용가능합니다.</li>
		</ol>
		</div>
		</div>
		</div>

	</div>
	
	<%@include file="../includes/footer.jsp" %>
	
</body>
</html>