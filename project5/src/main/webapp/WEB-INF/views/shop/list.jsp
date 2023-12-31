<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
                            	<li><a class="shopclick" href="/shop">전체 상품</a></li>
                                <li><a class="ncclick" href="/shop/brand?b=nc">네츄럴코어</a></li>
                                <li><a class="dkclick" href="/shop/brand?b=dk">달링키친</a></li>
                                <li><a class="loclick" href="/shop/brand?b=lo">로투스</a></li>
                                <li><a class="bpclick" href="/shop/brand?b=bp">벅스펫</a></li>
                                <li><a class="itclick" href="/shop/brand?b=it">ITI</a></li>
                                <li><a class="jfclick" href="/shop/brand?b=jf">조피쉬</a></li>
                                <li><a class="anclick" href="/shop/brand?b=an">애니먼</a></li>
                                <li><a class="aeclick" href="/shop/brand?b=ae">애니멀에센셜</a></li>
                                <li><a class="nfclick" href="/shop/brand?b=nf">뉴플렉스</a></li>
                            </ul>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-9 col-md-7">
                    
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__found" style="text-align: left;">
                                    <h6>상품 <span><c:out value="${fn:length(prodlist)}"/></span></h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-5">
                            </div>
                            <div class="col-lg-4 col-md-4">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach items="${prodlist}" var="prd">
                        	<input type="hidden" value="${prd.brand}">
                        	<input type="hidden" value="${prd.category}">
	                        <div class="col-lg-4 col-md-6 col-sm-6">
	                        	<div class="click-area" onclick="location.href='/shop/detail?prodNo=${prd.prodNo}'">
		                            <div class="product__item">
		                                <div class="product__item__pic set-bg" data-setbg="${contextPath}/resources/upload/product/main/${prd.prodMainImg}">
		                                </div>
		                                <div class="product__item__text">
		                                	<input type="hidden" name="prodNo" value="${prd.prodNo}">
		                                    <h6>${prd.prodName}</h6>
		                                    <h5 style="color:#dd1111; font-size:14px;">
		                                    <fmt:formatNumber type="number" maxFractionDigits="0" value="${(1 - prd.salePrice / prd.netPrice) * 100}" />%</h5>
									       	<h5 class="product_sale_strike"><fmt:formatNumber value="${prd.netPrice}" pattern="###,###,###.##"/>원</h5>
									        <h5 class="salePrice "><fmt:formatNumber value="${prd.salePrice}" pattern="###,###,###.##"/>원</h5>
		                                </div>
		                            </div>
	                            </div>
	                        </div>
                        </c:forEach>
                    </div>
<!--                     <div class="product__pagination"> -->
<!--                         <a href="#">1</a> -->
<!--                         <a href="#">2</a> -->
<!--                         <a href="#">3</a> -->
<!--                         <a href="#"><i class="fa fa-long-arrow-right"></i></a> -->
<!--                     </div> -->
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->
	
	<%@include file="../includes/footer.jsp" %>
	
	<script>
	$(".shop-btn").addClass("active");
	</script>
	
</body>
</html>