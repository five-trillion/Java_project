<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
                            <span>(18<!-- 리뷰 개수 --> reviews)</span>
                        </div>
                        <div class="product__details__price">${prd.salePrice}</div>
                        <p>${prd.prodInfo}</p>
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                        </div>
                        <a href="#" class="primary-btn">ADD TO CART</a>
                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                        <ul>
                            <li><b>재고</b> <span><%-- ${code.} --%></span></li>
                            <li><b>배송</b> <span>2일 예상 <samp>무료배송</samp></span></li>
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
                                    aria-selected="false">Review <span>(0)<!-- 리뷰개수 --></span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6></h6>
                                    <p></p>
                                    <img src="${contextPath}/resources/upload/product/details/${prd.detailImg}">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <div class="shoping__cart__table">
				                        <table>
				                            <tbody>
				                            	<c:forEach items="${list}" var="list">
				                                <tr>
				                                    <td class="shoping__cart__item">
				                                    <input type="hidden" value="${list.prodNo}">
				                                        <img src="${contextPath}/resources/upload/review/${list.userImg}" alt="">
				                                        <h5>${list.reviTitle}</h5>
				                                        <p>${list.rating}
				                                        <p>${list.reviContent}</p>
				                                    </td>
				                                    <td class="shoping__cart__quantity">
				                                        ${list.userNo}
				                                    </td>
				                                    <td class="shoping__cart__quantity">
				                                        댓글 : 0
				                                    </td>
				                                    <td class="shoping__cart__quantity">
				                                        <fmt:formatDate pattern="yyyy-MM-dd" value="${list.reviReg}"/>
				                                    </td>
				                                </tr>
				                                </c:forEach>
			                            	</tbody>
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
	
	<%@include file="../includes/footer.jsp" %>
</body>
</html>