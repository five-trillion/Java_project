<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
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
                            <span>(<c:out value="${fn:length(rlist)}"/> reviews)</span>
                        </div>
                        <div class="product__details__price"><fmt:formatNumber value="${prd.salePrice}" pattern="###,###,###.##"/>원</div>
                        <p>${prd.prodInfo}</p>
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" id="orderCnt" class="quantity_input" value="1">
                                </div>
                            </div>
                        </div>
                        <input type="hidden" id="prodNo" name="prodNo" value="${prd.prodNo}">
                        <button type="button" class="primary-btn" id="cart-btn">카트에 담기</button>
                        <script>
//                     	장바구니 추가 버튼
					    $("#cart-btn").on("click", function(e) {
					        e.preventDefault();
							
					        var prodNo = $("#prodNo").val();
					        var orderCnt = $(".quantity_input").val();
					
				            var data = {
				                prodNo: prodNo,
				                orderCnt: orderCnt
				            };
							
				            $.ajax({
				                url: '/cart/add',
				                method: 'POST',
				                data: JSON.stringify(data),
				                contentType: 'application/json; charset=utf-8',
				                success: function(result) {
				                    cartAlert(result);
				                }
				            });
					            
				            function cartAlert(result) {
				            	console.log("Function called");
                    	        if (result == '0') {
                    	            alert("장바구니에 추가를 하지 못하였습니다.");
                    	        } else if (result == '1') {
                    	            alert("장바구니에 추가되었습니다.");
                    	        } else if (result == '2') {
                    	        	alert("장바구니에 이미 추가된 상품입니다.");			                    	        	
                    	        } else if (result == '5') {
                    	            alert("로그인이 필요합니다.");
                    	            // 로그인 페이지로 이동하는 코드 추가
                    	            window.location.href = '/shop/login';
                    	        }
                    	    };
					    });
                        </script>
                        <button type="button" class="primary-btn" id="order-btn">구매하기</button>
                        <script>
                        $("#order-btn").on("click", function(e) {
                        	self.location="/checkout";
                        });
                        </script>
                        <ul>
                            <li><b>재고</b> <span>${prd.prodRest}개</span></li>
                            <li><b>배송</b>
	                            <span><strong>오늘출발 상품</strong> 오늘 15:00까지 결제시 오늘 바로 발송 </span>
                            	<!-- <span>2일 예상 <samp>무료배송</samp></span> -->
                           	</li>
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
                                    aria-selected="false">Review <span>(<c:out value="${fn:length(rlist)}"/>)</span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel" style="text-align:center;" >
                                <div class="product__details__tab__desc">${code}
									<div id="hiddenContent03" class="example01" style="max-height:1100px; overflow:hidden;">
										<img src="${contextPath}/resources/upload/product/details/${prd.detailImg}">
										<div class="product-notify-wrap " style="text-align:left; padding: 0 30px;">
	                                    <div class="product-notify-title"> 상품정보 제공고시</div>
	                                    <div class="product-notify-group tabled full-width">
	                                    <div class="product-notify-label table-cell">품명 및 모델명</div>
	                                    <div class="product-notify-value table-cell">[${name.codeName}] ${prd.prodName}</div></div>
	                                    <div class="product-notify-group tabled full-width">
	                                    <div class="product-notify-label table-cell">법에 의한 인증·허가 등을 받았음을 확인할 수 있는 경우 그에 대한 사항</div>
	                                    <div class="product-notify-value table-cell">상품상세 참조</div></div>
	                                    <div class="product-notify-group tabled full-width">
	                                    <div class="product-notify-label table-cell">제조국</div>
	                                    <div class="product-notify-value table-cell">대한민국</div></div>
	                                    <div class="product-notify-group tabled full-width">
	                                    <div class="product-notify-label table-cell">제조자</div>
	                                    <div class="product-notify-value table-cell">${name.codeName}</div></div>
	                                    <div class="product-notify-group tabled full-width">
	                                    <div class="product-notify-label table-cell">소비자상담 관련 전화번호</div>
	                                    <div class="product-notify-value table-cell">상품상세 참조</div></div>
	                                    </div>
									</div>
                                </div>
                                <button id="spreadBtn01" class="site-btn" style="margin: 40px 0 0;">상세정보 펼쳐보기</button>
                                <button id="spreadBtn02" class="site-btn" style="display:none; margin: 40px 0 0; padding: 13px 35px 12px">상세정보 접기</button>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc" style="padding: 60px 80px;">
                                    <div class="shoping__cart__table">
				                      <c:choose>
				                        <c:when test="${rlist.isEmpty()}">
			                        		<div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem n_board typeList">
												<p class="message  fs14">구매평이 없습니다.</p>
											</div>
			                        	</c:when>
			                        	<c:otherwise>
				                        	<table>
					                            <tbody>
					                            	<c:forEach items="${rlist}" var="rlist" varStatus="status">
						                                <tr>
						                                    <td class="shoping__cart__item" style="padding-left: 35px;">
						                                        <input type="hidden" id="prodNo" value="${rlist.prodNo}">
						                                        <div class="product__details__rating" style="margin-bottom: 15px;">
						                                        	<c:if test="${rlist.rating == 1}">
		                            									<i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
		                            								</c:if>
						                                        	<c:if test="${rlist.rating == 2}">
		                            									<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
		                            								</c:if>
						                                        	<c:if test="${rlist.rating == 3}">
		                            									<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
		                            								</c:if>
						                                        	<c:if test="${rlist.rating == 4}">
		                            									<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i>
		                            								</c:if>
						                                        	<c:if test="${rlist.rating == 5}">
		                            									<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
		                            								</c:if>
		                        								</div>
<%-- 						                                        <p><fmt:formatDate pattern="yyyy-MM-dd" value="${rlist.reviReg}"/></p> --%>
																<h6>${rlist.reviTitle}</h6>
						                                        <p style="margin-bottom: 15px;">${rlist.reviContent}</p>
						                                        <img src="${contextPath}/resources/upload/review/${rlist.userImg}" alt="" style="width: 200px;">
						                                    </td>
						                                    
						                                    <td class="shoping__cart__quantity" style="vertical-align: top; padding-right: 30px; text-align: right;">
						                                        <p>${rlist.userNick}님이 작성하신 <br> 리뷰입니다.</p>
						                                        <p> 댓글 : 0 </p>
						                                        <p><a href="/board/reviewRead"> 리뷰 전체보기 </a></p>
						                                    </td>
						                                </tr>
					                                </c:forEach>
				                            	</tbody>
				                            </table>
			                            </c:otherwise>
				                      </c:choose>
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

	<%@include file="../includes/footer.jsp" %>
	<script>
	$(document).ready(function(){
	$("#spreadBtn01").click(function(){
		$("#hiddenContent03").css("max-height", "inherit");
		$("#hiddenContent03").css("overflow", "visible");
		$("#spreadBtn01").css("display", "none");
		$("#spreadBtn02").css("display", "inline-block");
	});
	$("#spreadBtn02").click(function(){
		$("#hiddenContent03").css("max-height", "1100px");
		$("#hiddenContent03").css("overflow", "hidden");
		$("#spreadBtn01").css("display", "inline-block");
		$("#spreadBtn02").css("display", "none");
	});
	});
	$(".shop-btn").addClass("active");
	</script>
	
</body>
</html>