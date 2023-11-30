<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<%@include file="../includes/src.jsp" %>
	<title>Shop</title>
</head>
<body>
	<%@include file="../includes/header.jsp" %>
	
	
	<!-- Hero Section Begin -->
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4>Brand</h4>
                            <ul>
                                <li><a href="#">네츄럴코어</a></li>
                                <li><a href="#">달링키친</a></li>
                                <li><a href="#">로투스</a></li>
                                <li><a href="#">벅스펫</a></li>
                                <li><a href="#">ITI</a></li>
                                <li><a href="#">조피쉬</a></li>
                                <li><a href="#">애니먼</a></li>
                                <li><a href="#">애니멀에센셜</a></li>
                                <li><a href="#">뉴플렉스</a></li>
                            </ul>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-9 col-md-7">
                    
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>Sort By</span>
                                    <select>
                                        <option value="0">Default</option>
                                        <option value="0">Default</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span>16<!-- 목록에 있는 상품 개수 --></span> Products found</h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <span class="icon_grid-2x2"></span>
                                    <span class="icon_ul"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach items="${prodlist}" var="prd">
	                        <div class="col-lg-4 col-md-6 col-sm-6">
	                            <div class="product__item">
	                                <div class="product__item__pic set-bg" data-setbg="${contextPath}/resources/shop/img/product/${prd.prodMainImg}">
	                                    <a href="/shop/detail"></a>
	                                    <ul class="product__item__pic__hover">
	                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
	                                    </ul>
	                                </div>
	                                <div class="product__item__text">
	                                	<input type="hidden" name="prodNo" value="${prd.prodNo}">
	                                    <h6><a href="/shop/detail?prodNo=${prd.prodNo}">${prd.prodName}</a></h6>
	                                    <h5>${prd.salePrice}</h5>
	                                </div>
	                            </div>
	                        </div>
                        </c:forEach>
                    </div>
                    <div class="product__pagination">
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->
	
	<%@include file="../includes/footer.jsp" %>
</body>
</html>