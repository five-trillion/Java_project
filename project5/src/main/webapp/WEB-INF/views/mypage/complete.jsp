<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../includes/src.jsp" %>
</head>
<body>
	<%@include file="../includes/header.jsp" %>
	<div id="container">
        <div id="contents">
			<!-- 해당 스크립트 삭제에 유의 부탁드리며, 스냅 솔루션의 스크립트입니다. -->
			<!---- snappush  start contact mail: support@snapvi.co.kr --->
			<script type="text/javascript" src="//cdn.snapfit.co.kr/js/push/order.js" charset="utf-8"></script>
			<!---- snappush  end -->
			
			<div class="page_wrap order_result">
			    <div class="page_title fs60">주문완료</div>
			    <form id="frm_order_result" name="frm_order_result" action="" method="post" target="_self" enctype="multipart/form-data">
			<input id="order_id" name="order_id" value="20231211-0000125" type="hidden">
			<input id="bank_url_hidden" name="bank_url_hidden" value="" type="hidden"><div class="xans-element- xans-order xans-order-result xans-record-"><!-- 해당 스크립트 삭제에 유의 부탁드리며, 스냅 솔루션의 스크립트입니다. -->
			<!-- snappush start -->
			<script>
			snapPushOrderInstance.orderNo = "20231211-0000125";
			snapPushOrderInstance.setPayPrice("31,000");
			snapPushOrderInstance.setUseMileage("0");
			snapPushOrderInstance.setCouponDiscount("0");
			snapPushOrderInstance.setTotalPrice("28,000");
			snapPushOrderInstance.setTotalDiscount("0");
			snapPushOrderInstance.groupName = "f";
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
			
			<div class="orderInfo">
			            <p class="fs12">
			                <strong class="fs12">고객님의 주문이 완료 되었습니다.</strong>
			                주문내역 및 배송에 관한 안내는 <a href="/myshop/order/list.html">주문조회</a> 를 통하여 확인 가능합니다.
			            </p>
			            <ul>
			<li class="fs13">주문번호 : <strong>20231211-0000125</strong>
			</li>
			                <li class="fs13">주문일자 : <span>2023-12-11 14:58:14</span>
			</li>
			            </ul>
			</div>
			<div class="orderArea">
			
			            <div class="ec-base-table n_board ">
			                <table border="1" summary="">
			<caption>결제정보</caption>
			                    <tbody>
			<tr>
			<td>
			                                <strong class="td_t fs12">최종결제금액</strong>
			                                <div>
			                                    <strong class="txtEm fs15">31,000</strong><strong class="txtEm">원</strong> <span class="txtEm displaynone"></span>
			                                </div>
			                            </td>
			                        </tr>
			<tr>
			<td>
			                                <strong class="td_t fs12">결제수단</strong>
			                                <div>
			                                    <strong class="fs15"><span>가상계좌</span></strong>
			                                    <p class="fs15">
			                                        <span>계좌번호 : 하나은행 20893968588337<br><b>2023년 12월 18일(월)</b>까지 미입금시 주문이 자동취소됩니다.</span>                                        <span class="displaynone"><a href="#none" id="" class="btnNormal">인터넷뱅킹 바로가기</a></span>
			                                        <span class="displaynone"><a href="" id="" class="btnNormal">결제사이트 바로가기</a></span>
			                                    </p>
			                                    <p class=" fs12">
			                                        현금영수증 발행 :
			                                        <strong class="displaynone">신청 <span class="txtNormal">() </span></strong>
			                                        <strong class="">신청안함</strong>
			                                        <strong class="displaynone">신청실패<br><span class="txtInfo txt11">하단의 주문확인하기를 클릭하고 주문상세조회에서 다시 신청하시거나 관리자에게 문의하시기 바랍니다.</span></strong>
			                                    </p>
			                                </div>
			                            </td>
			                        </tr>
			
			</tbody>
			</table>
			</div>
			        </div>
			<div class="orderListArea">
			            <div class="ec-base-table typeList  n_board" nspace="normal">
			                <table border="1" summary="">
			<caption>기본배송</caption>
			                    <thead><tr>
			<td>
			                            <div class="thumbnail fs12">이미지</div>
			                            <div class="prd_info fs12">상품정보</div>
			                            <div class="prd_price fs12">판매가</div>
			                            <div class="prd_cnt fs12">수량</div>
			                            <div class="prd_tot fs12">합계</div>
			                        </td>
			                    </tr></thead>
			<tfoot><tr class="right">
			<td class="fs12 totalDet">[기본배송] 상품구매금액 <strong>28,000</strong><span class="displaynone"> + 부가세 2,545</span> + 배송비 3,000 + 지역별배송비 0
			</td>
			                        	<td class="fs12 totalP"> = 합계 : <strong class="txtEm gIndent10"><span class="txt13">31,000</span>원</strong> <span class="displaynone"></span>
			</td>
			                        </tr></tfoot><tbody class="xans-element- xans-order xans-order-normalresultlist"><tr class="xans-record-">
			<td>
			                                <div class="thumbnail"><a href="/product/detail.html?product_no=15&amp;cate_no=23"><img src="//fnfn.kr/web/product/tiny/202209/bac63c9fc1b6686ca2437187705135c3.png" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt=""></a></div>
			                                <div class="prd_info left fs13">
			                                    <strong class="name "><a href="/product/픈픈-폼-플레이-샴푸-300ml/15/category/23/" class="ec-product-name">픈픈 폼 플레이 샴푸 300ml</a></strong>
			                                    <div class="option ">[옵션: 단품/-], [향 선택 : 프레쉬 가든 1개]</div>
			                                </div>
			                                <div class="prd_price fs13">
			                                    <div class="">
			                                        <strong>28,000원</strong>
			                                    </div>
			                                    <div class="displaynone fs13">
			                                        <strong>28,000원</strong>
			                                    </div>
			                                </div>
			                                <div class="prd_cnt fs13">1</div>
			                                <div class="prd_tot fs13">
			<strong>28,000원</strong>
			</div>
			                                
			<!-- 해당 스크립트 삭제에 유의 부탁드리며, 스냅 솔루션의 스크립트입니다. -->
			<!-- snappush start -->
			<script type="text/javascript">
			snapPushOrderInstance.addOrderItem("15" ,"28,000", "1", "세트 선택=단품, -=-", "28,000", "-");
			</script>
			<!-- snappush end -->
			                                
			                            </td>
			                        </tr>
			</tbody>
			</table>
			</div>
			
			
			            <div class="ec-base-table typeList displaynone" nspace="individual">
			                <table border="1" summary="">
			<caption>개별배송</caption>
			                    <colgroup>
			<col style="width:92px">
			<col style="width:auto">
			<col style="width:98px">
			<col style="width:75px">
			<!--
			<col style="width:98px" />
			<col style="width:98px" />
			--><col style="width:98px">
			</colgroup>
			<thead><tr>
			<th scope="col">이미지</th>
			                            <th scope="col">상품정보</th>
			                            <th scope="col">판매가</th>
			                            <th scope="col">수량</th>
			                            <!--
			<th scope="col">적립금</th>
			<th scope="col">배송구분</th>
			-->
			                            <th scope="col">합계</th>
			                        </tr></thead>
			<tfoot class="right"><tr>
			<td colspan="7">
			<span class="gLeft">[개별배송]</span> 상품구매금액 <strong></strong><span class="displaynone"> + 부가세 </span> + 배송비  + 지역별배송비 <span class="displaynone"> - 상품할인금액 </span> = 합계 : <strong class="txtEm gIndent10"><span class="txt18"></span></strong> <span class="displaynone"></span>
			</td>
			                        </tr></tfoot><tbody class="xans-element- xans-order xans-order-individualresultlist center"><tr class="xans-record-">
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
			
			
			            <div class="ec-base-table typeList displaynone" nspace="oversea">
			                <table border="1" summary="">
			<caption>해외배송</caption>
			                    <colgroup>
			<col style="width:92px">
			<col style="width:auto">
			<col style="width:98px">
			<col style="width:75px">
			<!--
			<col style="width:98px" />
			<col style="width:98px" />
			--><col style="width:98px">
			</colgroup>
			<thead><tr>
			<th scope="col">이미지</th>
			                            <th scope="col">상품정보</th>
			                            <th scope="col">판매가</th>
			                            <th scope="col">수량</th>
			                            <!--
			<th scope="col">적립금</th>
			<th scope="col">배송구분</th>
			-->
			                            <th scope="col">합계</th>
			                        </tr></thead>
			<tfoot class="right"><tr>
			<td colspan="7">
			<span class="gLeft">[해외배송]</span> 상품구매금액 <strong><span class="displaynone"> ()</span></strong><span class="displaynone"> + 부가세 </span> + 배송비 <span class="displaynone"> - 상품할인금액 </span> = 합계 : <strong class="txtEm gIndent10"><span class="txt18"></span></strong> <span class="displaynone"></span>
			</td>
			                        </tr></tfoot><tbody class="xans-element- xans-order xans-order-oversearesultlist center"><tr class="xans-record-">
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
			<td><div class="txtInfo">해외배송</div></td>
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
			            <div class="ec-base-table typeList gBorder total ">
			                <div>
			
			                    <div class="center">
			                            <div>
			                                <strong class="td_t fs12">총 주문 금액 <a href="#none" onclick="OrderLayer.onDiv('order_layer_detail', event);" class="btnNormal">내역보기</a></strong> 
			                                <div class="box fs21 price2 td_t">
			<strong> 31,000 원</strong><span class="displaynone"></span>
			</div>
			                            </div>
			                            <div class="displaynone">
			                                <strong class="td_t fs12"><strong>총 </strong><strong class="displaynone">할인</strong><strong class="displaynone"> + </strong><strong class="displaynone">부가결제</strong><strong> 금액</strong></strong>
			                                <div class="box fs21 displaynone">
			<strong>-  0 원</strong><span class="displaynone"></span>
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
			                <div class="ec-base-table gMerge displaynone">
			                    <table border="1" summary="">
			<caption>할인 내역</caption>
			                        <colgroup>
			<col style="width:140px">
			<col style="width:auto">
			</colgroup>
			<tbody>
			<tr class="sum txt13">
			<th scope="row"><strong>총 할인금액</strong></th>
			                                <td><strong class="txt14">0</strong>원</td>
			                            </tr>
			
			</tbody>
			</table>
			</div>
			                <div class="ec-base-table gMerge displaynone">
			                    <table border="1" summary="">
			<caption>부가결제 내역</caption>
			                        <colgroup>
			<col style="width:140px">
			<col style="width:auto">
			</colgroup>
			<tbody>
			<tr class="sum txt13">
			<th scope="row"><strong>총 부가결제금액</strong></th>
			                                <td><strong class="txt14">0</strong>원</td>
			                            </tr>
			<tr class="displaynone">
			<th scope="row">적립금</th>
			                                <td>0원</td>
			                            </tr>
			
			</tbody>
			</table>
			</div>
			                
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
			<tr><td class="fs15">
			<span class="row fs12">휴대전화</span><span>010-1111-1111</span>                        </td></tr>
			<tr>
			<td class="fs15">
			<span class="row fs12">배송메시지</span></td>
			                        </tr>
			</tbody>
			</table>
			</div>
			        </div>
			        
			<div class="ec-base-button">
			            <span class="gLeft">
			                <a href="#none" onclick="window.open('/myshop/order/issue/cash.html?order_id=20231211-0000125', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;" class="btnNormal ">현금영수증 신청</a>
			                <a href="#none" onclick="window.open('/myshop/order/issue/tax.html?order_id=20231211-0000125', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;" class="btnNormal ">세금계산서 신청</a>
			                <a href="#none" onclick="window.open('/myshop/order/print/spec.html?order_id=20231211-0000125', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;" class="btnNormal displaynone">거래명세서 인쇄</a>
			                <a href="#none" onclick="window.open('/exec/front/MyShop/OrderPrintPg/?order_id=20231211-0000125', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;" class="btnNormal displaynone">카드매출전표 인쇄</a>
			                <a href="#none" onclick="window.open('/myshop/order/store_pickup.html?order_id=20231211-0000125', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;" class="btnNormal displaynone">수령지정보 인쇄</a>
			            </span>
			            <span class="gRight">
			                <a href="/" class="btnNormalFix sizeS">쇼핑계속하기</a>
			                <a href="/myshop/order/list.html" class="btnSubmitFix sizeS">주문확인하기</a>
			            </span>
			        </div>
			
			<div id="order_layer_detail" class="totalDetail ec-base-layer">
			            <div class="header">
			                <h3>총 주문금액 상세내역</h3>
			            </div>
			            <div class="content">
			                <p>31,000원</p>
			                <ul class="ec-base-desc typeDot gLarge rightDD">
			<li>
			<strong class="term">상품금액</strong><span class="desc">28,000원</span>
			</li>
			                    <li>
			<strong class="term">배송비</strong><span class="desc">3,000원</span>
			</li>
			                    <li>
			<strong class="term">지역별 배송비</strong><span class="desc">0원</span>
			</li>
			                </ul>
			</div>
			<a href="#none" class="close" onclick="OrderLayer.offDiv('order_layer_detail');"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"></a>
			        </div>
			</div>
			            <a href="#none" class="close" onclick="OrderLayer.offDiv('order_benefit_price_detail_layer');"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"></a>
			</div>
			</div>
			</form>
		</div>
			
			<!-- 해당 스크립트 삭제에 유의 부탁드리며, 스냅 솔루션의 스크립트입니다. -->
			<!---- snappush  start contact mail: support@snapvi.co.kr --->
			<div id="spm_page_type" style="display:none">sq_order_result_page</div>
			<script async="" type="text/javascript" src="//cdn.snapfit.co.kr/js/spm_f_common.js" charset="utf-8"></script>
			<div id="spm_banner_main"><iframe id="spm_banner_frame_form" name="spm_banner_frame_form" scrolling="no" src="https://push.snapfit.co.kr/Spm_Mgr/make_frame_form?%7B%22sf_store_name%22%3A%22fnfn%22%2C%22device_type%22%3A%22pc%22%2C%22url%22%3A%22https%3A%2F%2Ffnfn.kr%2Forder%2Forder_result.html%3Forder_id%3D20231211-0000125%22%2C%22adminPushID%22%3A%22%22%2C%22solution_type%22%3A%22cafe24%22%2C%22page_type%22%3A%22sq_order_result_page%22%2C%22referrerUrl%22%3A%22https%3A%2F%2Ffnfn.kr%2Forder%2Forderform.html%3Fbasket_type%3DA0000%26delvtype%3DA%22%2C%22todayBannerStatus%22%3A%22%22%2C%22spmislive%22%3A%221%22%2C%22useKakao%22%3A%220%22%2C%22useDelegate%22%3A%220%22%2C%22kakaoDevKey%22%3A%22%22%2C%22kakaoDelegate%22%3A%221%22%2C%22bannerDelegate%22%3A%220%22%2C%22delegateBannerImage%22%3A%22%2F%2Fsnapvi.ecn.cdn.infralab.net%2Fsnapfit%2Fimage%2Fnew_delegate_banner.jpg%22%2C%22delegateBannerIcon%22%3A%22%2F%2Fsnapvi.ecn.cdn.infralab.net%2Fsnapfit%2Fimage%2Fdelegate_ico.png%22%2C%22kakaoBannerImage%22%3A%22%2F%2Fsnapvi.ecn.cdn.infralab.net%2Fsnapfit%2Fimage%2Fnew_kakao_banner.jpg%22%2C%22kakaoBannerIcon%22%3A%22%2F%2Fsnapvi.ecn.cdn.infralab.net%2Fsnapfit%2Fimage%2Fkakao_ico.png%22%2C%22delegateBannerLogin%22%3Afalse%2C%22idsyncstatus%22%3A%22%22%2C%22user_id%22%3A%22jypark0819%22%2C%22spm_spmuserid_pc%22%3A%22a51d3db19632ac653b21d99c164504d2%22%2C%22spm_spmuserid_m%22%3A%22%22%2C%22pageinfo%22%3A%7B%22pagetype%22%3A%22sq_order_result_page%22%2C%22cate%22%3A%22sq_order_result_page%22%2C%22itemcate%22%3Anull%7D%2C%22pushlogo%22%3A%22%2F%2Fcdn.snapfit.co.kr%2Fimage%2Fpushlogo%2Fpush_logo2.png%22%2C%22result%22%3A%22success%22%7D" style="width: 0px; height: 0px; border: 0px; display: none;"></iframe><div id="spm_img_logo" style="position: absolute; bottom: -11px; width: 56px; right: 1px; display: none;"><img src="//cdn.snapfit.co.kr/image/pushlogo/push_logo2.png" style="width: 100%;"></div></div>
			<script>snapPushOrderInstance.sendOrderStatistics();</script>
			<!---- snappush  end -->
			                </div><hr class="layout"><!--import(/layout/basic/aside.html)--><aside><div class="aside_wrap">
			        <div class="menu_close"><span></span><span></span></div>
			        <div class="menu_logo">
			            <h1 class="logo"><a href="/index.html"><img src="/web/upload/img/logo.png" alt="로고"></a></h1>
						<span><a href="/myshop/order/list.html" class="fs13">주문조회</a></span>
			        </div>
			        <div class="menu_btn">
			        	<ul class="xans-element- xans-layout xans-layout-statelogon "><li><a href="/myshop/index.html">마이페이지</a></li>
			<li><a href="/exec/front/Member/logout/">로그아웃</a></li>
			</ul>
			</div>
			        <!--//menu_btn-->
			        
			        <div class="category_menu">
			        	<ul><li><p><a href="/product/list.html?cate_no=23">Product</a></p></li>
			                <li><p>Community<i class="xi-angle-up"></i></p>
			                	<div class="m_submenu">
			                    	<ul><!--li><a href="/event/event.html?cate_no=44" class="fs14">Event</a></li--><li><a href="/board/free/list.html?board_no=1" class="fs14">Notice</a></li>
			                        	<li><a href="/board/product/list.html?board_no=4" class="fs14">Review</a></li>
			                            <li><a href="/board/product/list.html?board_no=6" class="fs14">Q&amp;A</a></li>
			                            <!--li><a href="/page/membership.html?ck=2" class="fs14">Membership</a></li-->
			                        </ul></div>
			                </li>
			                <li><p><a href="/page/brand.html">Brand</a></p></li>
			            </ul></div>
			        <!--//category_menu-->
			        
			        <div class="side_bnr">
			            <div class="swiper mySwiper swiper-initialized swiper-horizontal swiper-pointer-events swiper-backface-hidden">
			                <div class="swiper-wrapper" id="swiper-wrapper-4c2c0fc706bf67a8" aria-live="off" style="transform: translate3d(-1250px, 0px, 0px); transition-duration: 0ms;">
			                    <!--배너 추가/수정 영역입니다-->
			                    <div class="swiper-slide swiper-slide-prev" role="group" aria-label="1 / 2" style="width: 1250px;"><a href=""><img src="/web/img/side_bn01.png" alt=""></a></div>
			                    <div class="swiper-slide swiper-slide-active" role="group" aria-label="2 / 2" style="width: 1250px;"><a href=""><img src="/web/img/side_bn02.png" alt=""></a></div>
			                </div>
			                <div class="swiper-pagination swiper-pagination-fraction swiper-pagination-horizontal"><span class="swiper-pagination-current">02</span><span class="swiper-pagination-total">02</span></div>
			            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
			        </div>
			    </div>
			    <div class="dim_bg"></div>
			</aside></div>
	
	<%@include file="../includes/footer.jsp" %>

</body>
</html>