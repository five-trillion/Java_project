<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src = "http://code.jQuery.com/jQuery-3.7.1.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shop</title>
<%@include file="../includes/src.jsp" %>
</head>
<body>
	<%@include file="../includes/header.jsp" %>
	
	<!-- Hero Section Begin -->
    
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="${contextPath}/resources/upload/product/${prd.prodImg1}" alt="">
                        </div>
                        <div class="product__details__pic__slider owl-carousel">
                        	<img data-imgbigurl="${contextPath}/resources/upload/product/${prd.prodImg1}"
                                src="${contextPath}/resources/upload/product/${prd.prodImg1}" alt="">
                            <img data-imgbigurl="${contextPath}/resources/upload/product/${prd.prodImg2}"
                                src="${contextPath}/resources/upload/product/${prd.prodImg2}" alt="">
                            <img data-imgbigurl="${contextPath}/resources/upload/product/${prd.prodImg3}"
                                src="${contextPath}/resources/upload/product/${prd.prodImg3}" alt="">
                            <img data-imgbigurl="${contextPath}/resources/shop/img/product/${prd.prodImg4}"
                                src="${contextPath}/resources/upload/product/${prd.prodImg4}" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>${prd.prodName}</h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(0<!-- 리뷰 개수 --> reviews)</span>
                        </div>
                        <div class="product__details__price"><fmt:formatNumber value="${prd.salePrice}" pattern="###,###,###.##"/>원</div>
                        <p>${prd.prodInfo}</p>
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" class="quantity_input" value="1">
                                </div>
                            </div>
                        </div>
                        <a href="/cart" class="primary-btn">ADD TO CART</a>
                        <ul>
                            <li><b>재고</b> <span>${prd.prodRest}개</span></li>
                            <div class="deli">
	                            <li><b>배송</b>
		                            <span>
	                            		<strong>오늘출발 상품</strong> <br>
	                            		오늘 15:00까지 결제시 오늘 바로 발송
	                            	</span>
	                            	<!-- <span>2일 예상 <samp>무료배송</samp></span> -->
                            	</li>
                            </div>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="false">상세정보</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">Review <span>(0<c:out value="${status.end}"/>)</span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc" style="text-align:center;" >
                                    <button id="spreadBtn01" class="btn01">펼치기</button>
									<div id="hiddenContent03" class="example01" style="display: none;">
										<img src="${contextPath}/resources/upload/product/details/${prd.detailImg}">
										<div class="product-notify-wrap " style="text-align:left; padding: 0 30px;">
	                                    <div class="product-notify-title"> 상품정보 제공고시</div>
	                                    <div class="product-notify-group tabled full-width">
	                                    <div class="product-notify-label table-cell">품명 및 모델명</div>
	                                    <div class="product-notify-value table-cell">[네츄럴코어] 에코 10 베지테리안</div></div>
	                                    <div class="product-notify-group tabled full-width">
	                                    <div class="product-notify-label table-cell">법에 의한 인증·허가 등을 받았음을 확인할 수 있는 경우 그에 대한 사항</div>
	                                    <div class="product-notify-value table-cell">상품상세 참조</div></div>
	                                    <div class="product-notify-group tabled full-width">
	                                    <div class="product-notify-label table-cell">제조국</div>
	                                    <div class="product-notify-value table-cell">대한민국</div></div>
	                                    <div class="product-notify-group tabled full-width">
	                                    <div class="product-notify-label table-cell">제조자</div>
	                                    <div class="product-notify-value table-cell">네츄럴코어</div></div>
	                                    <div class="product-notify-group tabled full-width">
	                                    <div class="product-notify-label table-cell">소비자상담 관련 전화번호</div>
	                                    <div class="product-notify-value table-cell">상품상세 참조</div></div>
	                                    </div>
									</div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <div class="shoping__cart__table">
				                        <table>
				                        	<c:if test="${rlist == null} ">
				                        		<div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem n_board typeList">
													<table border="1" summary="">
													<caption>주문 상품 정보</caption>
<!-- 														<thead> -->
<!-- 															<tr> -->
<!-- 																<td> -->
<!-- 											                        <p class="fs12 number">주문일자 [주문번호]</p> -->
<!-- 											                        <p class="thumb"></p> -->
<!-- 											                        <p class="fs12 product" style="padding: 0px;">상품</p> -->
<!-- 											                        <p class="quantity"></p> -->
<!-- 											                        <p class="right"></p> -->
<!-- 											                        <p class="fs12 state">주문상태</p> -->
<!-- 											                    </td> -->
<!-- 								                			</tr> -->
<!-- 								                		</thead> -->
													</table>
													<p class="message  fs14">주문 내역이 없습니다.</p>
												</div>
				                        	</c:if>
				                        	<c:if test="${rlist != null}">
					                            <tbody>
					                            	<c:forEach items="${rlist}" var="rlist" varStatus="status">
						                                <tr>
						                                    <td class="shoping__cart__quantity">
						                                    <input type="hidden" value="${rlist.prodNo}">
						                                        <img src="${contextPath}/resources/upload/review/${rlist.userImg}" alt="">
						                                    </td>
						                                    <td class="shoping__cart__item" style="padding-left: 35px;">
						                                        <h5>${rlist.reviTitle}</h5>
						                                        <div class="product__details__rating">
		                            								<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
		                        								</div>
						                                        <p>${rlist.rating}</p>
						                                        <p><fmt:formatDate pattern="yyyy-MM-dd" value="${rlist.reviReg}"/></p>
						                                        <p>${rlist.userNo}</p>
						                                        <p>${rlist.reviContent}</p>
						                                        
						                                    </td>
						                                    
						                                    <td class="shoping__cart__quantity" style="vertical-align: bottom; padding-right: 30px; text-align: right;">
						                                        <p> 댓글 : 0 </p>
						                                        <p><a href="#"> 리뷰 전체보기 </a></p>
						                                    </td>
						                                </tr>
					                                </c:forEach>
				                            	</tbody>
				                            </c:if>
				                    	</table>
                               		</div>
                            	</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Related Product Section Begin -->
    <section class="related-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related__product__title">
                        <h2>Related Product</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${contextPath}/resources/shop/img/product/product-1.jpg">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Related Product Section End -->
	<%= session.getAttribute("user") %>
	
	<%@include file="../includes/footer.jsp" %>
	<script>
// 	$(function(){
// 	    console.log($('tr').length);
// 	});
	$(document).ready(function(){
	$("#spreadBtn01").click(function(){
		if($("#hiddenContent03").is(":visible")){
			$("#hiddenContent03").css("display", "none");
		}else{
			$("#hiddenContent03").css("display", "block");
		}
	});
	});
	
// 	장바구니 추가 버튼
	$(document).ready(function() {
	    $("#primary-btn").on("click", function(e) {
	        e.preventDefault();
	
	        var prodNo = $("#prodNo").val();
	        var orderCnt = $(".quantity_input").val();
	
	        var data = {
	            "prodNo": prodNo,
	            "orderCnt": orderCnt
	        };
	
	        $.ajax({
	            url: '/cart',
	            method: 'POST',
	            data: data,
	            success: function(result) {
	                cartAlert(result);
	            }
	        });
	    });
	
	    function cartAlert(result) {
	        if (result == '0') {
	            alert("장바구니에 추가를 하지 못하였습니다.");
	        } else if (result == '1') {
	            alert("장바구니에 추가되었습니다.");
	        } else if (result == '5') {
	            alert("로그인이 필요합니다.");
	            // 로그인 페이지로 이동하는 코드 추가
	            window.location.href = '/shop/login';
	        }
	    }
	});

	</script>
	
</body>
</html>