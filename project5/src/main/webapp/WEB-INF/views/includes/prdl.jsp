<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

					<div class="row">
                        <c:forEach items="${prodlist}" var="prd">
                        	<input type="hidden" value="${prd.brand}">
                        	<input type="hidden" value="${prd.category}">
	                        <div class="col-lg-4 col-md-6 col-sm-6">
	                        	<div class="click-area" onclick="location.href='/shop/detail?prodNo=${prd.prodNo}'">
		                            <div class="product__item">
		                                <div class="product__item__pic set-bg" data-setbg="${contextPath}/resources/upload/product/thumbnails/${prd.prodMainImg}">
		                                </div>
		                                <div class="product__item__text">
		                                	<input type="hidden" name="prodNo" value="${prd.prodNo}">
		                                    <h6>${prd.prodName}</h6>
									       	<h5 class="product_sale_strike"><fmt:formatNumber value="${prd.netPrice}" pattern="###,###,###.##"/>원</h5>
									        <h5 class="salePrice "><fmt:formatNumber value="${prd.salePrice}" pattern="###,###,###.##"/>원</h5>
		                                </div>
		                            </div>
	                            </div>
	                        </div>
                        </c:forEach>
                    </div>