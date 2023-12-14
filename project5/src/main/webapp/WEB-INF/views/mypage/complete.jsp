<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
        <div id="contents">
			<!-- 해당 스크립트 삭제에 유의 부탁드리며, 스냅 솔루션의 스크립트입니다. -->
			<!---- snappush  start contact mail: support@snapvi.co.kr --->
			<script type="text/javascript" src="//cdn.snapfit.co.kr/js/push/order.js" charset="utf-8"></script>
			<!---- snappush  end -->
			
			<style>
			    .order_result .ec-base-table table{border:none;    border-top: 1px solid var(--acr1);}
			    .order_result  .ec-base-table table:before{display:none;}
			    .order_result .ec-base-table thead th{border-left:none;background: none;font-size: 12px;}
			    .order_result .ec-base-table td{border-top:none;    border-bottom: 1px solid var(--acr3);}
			    .order_result .n_board table tr td{    border-bottom: 1px solid var(--acr3);}
			    .order_result  .ec-base-table.typeList td{padding:15px 0;}
			
			    .order_result .n_board table tr td .prd_info{width: 60%;}
			    .order_result .n_board table tr td .thumbnail,
			    .order_result .n_board table tr td .prd_price,
			    .order_result .n_board table tr td .prd_cnt,
			    .order_result .n_board table tr td .prd_tot{width: 10%;}
			    .order_result .ec-base-table .thumbnail img{max-width: 30px;}
			    .order_result .ec-base-table.typeList tfoot td{background:none;}
			    .order_result .ec-base-table.typeList tfoot td.totalP{padding: 0 0 15px 0;}
			    .order_result .ec-base-table.typeList tfoot td.totalDet{border-bottom: 0;}
			    
			    .order_result .totalArea .ec-base-table .center{display: flex;justify-content: space-evenly;align-items: center;border-top: 1px solid var(--acr1);}
			    .order_result .totalArea .ec-base-table .center > div{flex: 1;}
			    .order_result .totalArea .ec-base-table .center > div strong.td_t{display: block;border-bottom: 1px solid var(--acr3);margin-bottom: 10px;height: 40px;line-height: 40px;}
			    .order_result .orderArea .ec-base-table td > span.row{display: inline-block;width: 130px;vertical-align: middle;font-weight: 600;}
			
			
			    @media all and (max-width:768px) {
			        .order_result  .n_board table tr td{display: block;}
			        .order_result  .n_board table tr td .td_t{width:100%;display: block;margin-bottom: 5px;}
			        #btn_bank_go{margin-top: 10px;display: block;}
			        
			        .order_result .ec-base-table.typeList tbody td{    padding-left: 50px !important;}
			        .order_result .n_board table tr td .thumbnail {position: absolute;left: 0;}
			        .order_result .n_board table tr td .thumbnail,
			        .order_result .n_board table tr td .prd_price,
			        .order_result .n_board table tr td .prd_cnt,
			        .order_result .n_board table tr td .prd_tot{width: 100%;margin-top: 5px;}
			        .order_result .n_board table tr td .prd_price{display:none;}
			        .order_result .orderArea .ec-base-table td > span.row{display: block;padding-bottom: 5px;width: 100%;}
			
			    }
			</style>
			
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
			<div class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember  displaynone "><div class="information">
			                <h3 class="title">혜택정보</h3>
			                <div class="description">
			                    <div class="member displaynone">
			                        <p><strong>박주영</strong> 님은, [f] 회원이십니다.</p>
			                        <ul class="">
			<li class="displaynone">
			<span class="displaynone">0</span> 이상 <span class="displaynone"></span> 구매시 <span></span>을 추가할인 받으실 수 있습니다. <span class="displaynone">(최대 0)</span>
			</li>
			                            <li class="">
			<span class="">1,000원</span> 이상 <span class="displaynone"></span> 구매시 <span>1%</span>을 추가적립 받으실 수 있습니다. <span class="">(최대 100,000원)</span>
			</li>
			                        </ul>
			</div>
			                    <ul class="mileage">
			<li><a href="/myshop/mileage/historyList.html">가용적립금 : <strong>0원</strong></a></li>
			                        <li class="displaynone"><a href="/myshop/deposits/historyList.html">예치금 : <strong></strong></a></li>
			                        <li><a href="/myshop/coupon/coupon.html">쿠폰 : <strong>3개</strong></a></li>
			                    </ul>
			</div>
			            </div>
			</div>
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
			<tr class="displaynone">
			<td>
			                                <strong class="td_t fs12">전자보증보험<br>서비스정보</strong>
			                                <div></div>
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
			<td class="fs12 totalDet">[기본배송] 상품구매금액 <strong>28,000<span class="displaynone"> (0)</span></strong><span class="displaynone"> + 부가세 2,545</span> + 배송비 3,000 + 지역별배송비 0<span class="displaynone"> - 상품할인금액 0</span>
			</td>
			                        	<td class="fs12 totalP"> = 합계 : <strong class="txtEm gIndent10"><span class="txt13">31,000</span>원</strong> <span class="displaynone"></span>
			</td>
			                        </tr></tfoot><tbody class="xans-element- xans-order xans-order-normalresultlist"><tr class="xans-record-">
			<td>
			                                <div class="thumbnail"><a href="/product/detail.html?product_no=15&amp;cate_no=23"><img src="//fnfn.kr/web/product/tiny/202209/bac63c9fc1b6686ca2437187705135c3.png" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt=""></a></div>
			                                <div class="prd_info left fs13">
			                                    <strong class="name "><a href="/product/픈픈-폼-플레이-샴푸-300ml/15/category/23/" class="ec-product-name">픈픈 폼 플레이 샴푸 300ml</a></strong>
			                                    <div class="option ">[옵션: 단품/-], [향 선택 : 프레쉬 가든 1개]</div>
			                                    <p class="gBlank5 displaynone">무이자할부 상품</p>
			                                </div>
			                                <div class="prd_price fs13">
			                                    <div class="">
			                                        <strong>28,000원</strong>
			                                        <div class="displaynone"></div>
			                                    </div>
			                                    <div class="displaynone fs13">
			                                        <strong>28,000원</strong>
			                                        <div class="displaynone"></div>
			                                    </div>
			                                </div>
			                                <div class="prd_cnt fs13">1</div>
			                                <!--
			<td><span class="txtInfo">-</span></td>
			<td><div class="txtInfo">기본배송<div class="displaynone">(해외배송가능)</div></div></td>
			-->
			                                <div class="prd_tot fs13">
			<strong>28,000원</strong><div class="displaynone"></div>
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
			<span class="gLeft">[개별배송]</span> 상품구매금액 <strong><span class="displaynone"> ()</span></strong><span class="displaynone"> + 부가세 </span> + 배송비  + 지역별배송비 <span class="displaynone"> - 상품할인금액 </span> = 합계 : <strong class="txtEm gIndent10"><span class="txt18"></span></strong> <span class="displaynone"></span>
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
			<div class="orderArea displaynone">
			            <div class="title">
			                <h3>사은품</h3>
			            </div>
			            <div class="ec-base-table typeList" nspace="gift">
			                <table border="1" summary="">
			<caption>사은품</caption>
			                    <colgroup>
			<col style="width:92px">
			<col style="width:auto">
			<col style="width:75px">
			<col style="width:110px">
			</colgroup>
			<thead><tr>
			<th scope="col">이미지</th>
			                            <th scope="col">상품정보</th>
			                            <th scope="col">수량</th>
			                            <th scope="col">사은품 구분</th>
			                        </tr></thead><tbody class="xans-element- xans-order xans-order-giftresultlist center"><tr class="xans-record-">
			<td class="thumb"><img src="//img.echosting.cafe24.com/thumb/img_product_big.gif" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt=""></td>
			                            <td class="left">
			                                <span class="displaynone"><img src=""></span> <strong></strong>
			                                <div class="option displaynone"></div>
			                            </td>
			                            <td></td>
			                            <td></td>
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
			<tr class="displaynone">
			<th scope="row">쿠폰할인</th>
			                                <td>
			                                    <span class="gSpace20">0원</span>
			                                    <a href="#none" class="btnNormal eUsedCouponDetail">내역보기</a>
			                                </td>
			                            </tr>
			<tr class="displaynone">
			<th scope="row">추가할인금액</th>
			                                <td>
			                                    <span class="gSpace20">0원</span>
			                                    <a href="#none" onclick="OrderLayer.onDiv('order_benefit_price_detail_layer', event);" class="btnNormal">내역보기</a>
			                                </td>
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
			<tr class="displaynone">
			<th scope="row">네이버 마일리지/캐쉬</th>
			                                <td>0원 </td>
			                            </tr>
			<tr class="displaynone">
			<th scope="row">예치금</th>
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
			<tr class="displaynone">
			<th scope="row">상품별 적립금</th>
			                                <td>0원</td>
			                            </tr>
			<tr class="">
			<th scope="row">회원 적립금</th>
			                                <td>280원</td>
			                            </tr>
			<tr class="displaynone">
			<th scope="row">쿠폰 적립금</th>
			                                <td>
			                                    <span class="gSpace20">0원</span>
			                                    <a href="#none" class="btnNormal eUsedCouponDetail">내역보기</a>
			                                </td>
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
			<tr class="displaynone">
			<th scope="row">수령지</th>
			                            <td>
			                                <strong></strong>
			                                <ul class="gBlank10">
			<li>- 주소 : </li>
			                                    <li>- 전화번호 : </li>
			                                    <li>- 영업시간 : </li>
			                                    <li>- 수령 가능일 : </li>
			                                    <li>- 수령지 안내 : </li>
			                                </ul>
			<div class="map displaynone">
			                                    <p>* 약도</p>
			                                                                    </div>
			                            </td>
			                        </tr>
			<tr>
			<td class="fs15"> <span class="row fs12">받으시는분</span><span>박주영</span></td>
			                        </tr>
			<tr class="displaynone">
			<td class="fs15">
			<span class="row fs12">영문이름</span><span></span></td>
			                        </tr>
			<tr class="displaynone">
			<td class="fs15">
			<span class="row fs12">이름(발음기호)</span><span></span></td>
			                        </tr>
			<tr class="displaynone">
			<td class="fs15">
			<span class="row fs12">국가</span></td>
			                        </tr>
			<tr class="">
			<td class="fs15">
			<span class="row fs12">우편번호</span><span>06122</span></td>
			                        </tr>
			<tr class="">
			<td class="fs15">
			<span class="row fs12">주소</span><span>서울 강남구 논현로111길 3 휴먼스페이스주상복합아파트</span></td>
			                        </tr>
			<tr class="displaynone">
			<td class="fs15">
			<span class="row fs12">도시</span></td>
			                        </tr>
			<tr class="displaynone">
			<td class="fs15">
			<span class="row fs12">주/지방</span></td>
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
			<tr class="displaynone">
			<td class="fs15">
			<span class="row fs12">희망배송일</span><strong></strong>
			</td>
			                        </tr>
			<tr class="displaynone">
			<td class="fs15">
			<span class="row fs12">희망배송시간</span><strong></strong>
			</td>
			                        </tr>
			<tr class="displaynone">
			<td class="fs15">
			<span class="row fs12">희망배송업체/방식</span></td>
			                        </tr>
			<tr class="displaynone">
			<td class="fs15">
			<span class="row fs12">수령가능일</span></td>
			                        </tr>
			</tbody>
			</table>
			</div>
			        </div>
			<div class="orderArea displaynone">
			            <div class="title">
			                <h3>추가정보</h3>
			            </div>
			
			            <div class="ec-base-table">
			                <table border="1" summary="">
			<caption>추가정보</caption>
			                    <colgroup>
			<col style="width:140px;">
			<col style="width:auto;">
			</colgroup><tbody class="xans-element- xans-order xans-order-ordadd"><tr class="">
			<th scope="row"></th>
			                            <td></td>
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
			<div class="ec-base-help displaynone">
			            <h3>이용안내</h3>
			            <div class="inner">
			                <ol>
			<li class="item1">비회원 주문의 경우, 주문번호를 꼭 기억하세요. 주문번호로 주문조회가 가능합니다.</li>
			                    <li class="item2">배송은 결제완료 후 지역에 따라 1일 ~ 3일 가량이 소요됩니다. </li>
			                    <li class="item3">상품별 자세한 배송과정은 주문조회를 통하여 조회하실 수 있습니다.</li>
			                    <li class="item4">주문의 취소 및 환불, 교환에 관한 사항은 이용안내의 내용을 참고하십시오.</li>
			                </ol>
			<h4>세금계산서 발행 안내</h4>
			                <ol>
			<li class="item1">부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달 10일까지만 요청하실 수 있습니다.</li>
			                    <li class="item2">세금계산서는 사업자만 신청하실 수 있습니다.</li>
			                    <li class="item3">배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</li>
			                    <li class="item4">[세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로 사업자등록증사본을 보내셔야 세금계산서 발생이 가능합니다.</li>
			                    <li class="item5">[세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수 있습니다.</li>
			                </ol>
			<h4>부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경안내</h4>
			                <ol>
			<li class="item1">변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신 주문에 대해서는 세금계산서 발행이 불가하며</li>
			                    <li class="item2">신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법 시행령 57조)</li>
			                    <li class="item3">상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만 세금계산서 발행이 가능함을 양지하여 주시기 바랍니다.</li>
			                </ol>
			<h4>현금영수증 이용안내</h4>
			                <ol>
			<li class="item1">현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체, 에스크로, 예치금)에 대해 발행이 됩니다.</li>
			                    <li class="item2">현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은 포함되지 않습니다.</li>
			                    <li class="item3">발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을 해야 합니다.</li>
			                    <li class="item4">현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에 따라 변경 될 수 있습니다.)</li>
			                    <li class="item5">현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</li>
			                </ol>
			</div>
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
			                    <li class="displaynone">
			<strong class="term">부가세</strong><span class="desc">원</span>
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
			<div id="order_benefit_price_detail_layer" class="totalDetail ec-base-layer">
			            <div class="header">
			                <h3>추가할인금액 내역보기</h3>
			            </div>
			            <div class="content">
			                <p>0원</p>
			                <ul class="ec-base-desc typeDot gLarge rightDD">
			<li class="displaynone">
			<strong class="term">기간할인</strong><span class="desc">0원</span>
			</li>
			                    <li class="displaynone">
			<strong class="term">회원할인</strong><span class="desc">0원</span>
			</li>
			                    <li class="displaynone">
			<strong class="term">재구매할인</strong><span class="desc">0원</span>
			</li>
			                    <li class="displaynone">
			<strong class="term">대량구매할인</strong><span class="desc">0원</span>
			</li>
			                    <li class="displaynone">
			<strong class="term">바로가기(링콘)할인</strong><span class="desc">0원</span>
			</li>
			                    <li class="displaynone">
			<strong class="term">어바웃pbp할인</strong><span class="desc">0원</span>
			</li>
			                    <li class="displaynone">
			<strong class="term">신규상품할인</strong><span class="desc">0원</span>
			</li>
			                    <li class="displaynone">
			<strong class="term">세트할인</strong><span class="desc">0원</span>
			</li>
			                    <li class="displaynone">
			<strong class="term">결제수단할인</strong><span class="desc">원</span>
			</li>
			                    <li class="displaynone">
			<strong class="term">회원등급할인</strong><span class="desc">0원</span>
			</li>
			                    <li class="displaynone">
			<strong class="term">배송비할인</strong><span class="desc">원</span>
			</li>
			                </ul>
			<ul class="ec-base-desc typeDot gLarge rightDD displaynone">
			                                    </ul>
			<ul class="ec-base-desc typeDot gLarge rightDD displaynone">
			                                    </ul>
			</div>
			            <a href="#none" class="close" onclick="OrderLayer.offDiv('order_benefit_price_detail_layer');"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"></a>
			        </div>
			</div>
			</form></div>
			
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


</body>
</html>