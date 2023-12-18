<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contents</title>
<%@include file="../includes/src.jsp" %>
<style>
	.product__details__tab .nav-tabs:after, .product__details__tab .nav-tabs:before {
		display: none;
	}
	.product__details__tab__desc {
		text-align: center;
	}
	.typeList {
		width: 80%;
		margin: 0 auto;
	}
</style>
</head>
<body>

	<%@include file="../includes/header.jsp" %>
	
	<div id="contents" style="padding: 0 0 80px;">
	
	<%@include file="../includes/mp_header.jsp" %>
	
	
	<div class="col-lg-12">
        <div class="product__details__tab" style="padding: 30px 50px 0;">
            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">작성 가능한 리뷰</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab" aria-selected="false">작성한 리뷰</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab" aria-selected="false">작성한 게시글</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab" aria-selected="false">작성한 댓글</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#tabs-5" role="tab" aria-selected="false">나의 문의</a>
                </li>
            </ul>
            <div class="tab-content">
            
                <div class="tab-pane active" id="tabs-1" role="tabpanel">
                    <div class="product__details__tab__desc">
                        <div class="n_board line typeList gBorder">
							<table border="1" summary="">
								<caption>게시판 목록</caption>
								<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
									<tr style="">
										<td>
											<div class="writer fs12">주문일자 [주문번호]</div>
											<div class="writer fs12"></div>
											<div class="subject left fs12">상품</div>
											<div class=" fs12 writer_date"></div>
											<div class=" fs12 hit"></div>
										</td>
									</tr>
								</thead>
								<c:choose>
					            	<c:when test="${rvreg.isEmpty()}">
					<tbody>
						<tr>
							<td><p class="message  fs14">리뷰 작성 가능한 상품이 없습니다.</p></td>
						</tr>
					</tbody>
					            	</c:when>
					            	<c:otherwise>
								<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
									<c:forEach items="${rvreg}" var="rvreg" varStatus="loop">
										<tr style="background-color: #FFFFFF; color: #555555;"
											class="xans-record-">
											<td>
												<div class="writer fs13">
													<fmt:formatDate value="${rvreg.orderDate}" pattern="yyyy-MM-dd HH:mm:ss"/><br>[${rvreg.orderNo}]
												</div>
												<div class="writer fs13">
													<a href="/shop/detail?prodNo=${rvreg.prodNo}">
														<img src="${contextPath}/resources/upload/product/main/${rvreg.prodMainImg}" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="">
														</a>
												</div>
												<div class="subject left fs13">
		                        					<div class="product left top">
		                            					<strong class="name fs14" onclick="location.href='/shop/detail?prodNo=${rvreg.prodNo}'">${rvreg.prodName}</strong>
		                            					<ul class="xans-element- xans-myshop xans-myshop-optionset option fs10">
		                            						<li class="">
																<strong> 주문수량: ${rvreg.orderCnt} </strong>
															</li>
														</ul>
		                        					</div>
												</div>
												<form class=" fs13 writer_date" action="/board/reviewWrite">
													<input type="hidden" name="prodNo" id="prodNo" value="${rvreg.prodNo}">
													<input type="submit" class="site-btn" value="리뷰작성">
												</form>
											</td>
										</tr>
									</c:forEach>
								</tbody>
								</c:otherwise>
								</c:choose>
							</table>
						</div>
                    </div>
                </div>
                
                <div class="tab-pane" id="tabs-2" role="tabpanel">
                    <div class="product__details__tab__desc">
                        <div class="n_board line typeList gBorder">
							<table border="1" summary="">
								<caption>게시판 목록</caption>
								<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
									<tr style="">
										<td>
											<div class="subject left fs12">상품</div>
											<div class="writer fs12">평점</div>
											<div class="subject left fs12">제목</div>
											<div class=" fs12 writer_date">작성일</div>
										</td>
									</tr>
								</thead>
								<c:choose>
					            	<c:when test="${revi.isEmpty()}">
					<tbody>
						<tr>
							<td><p class="message  fs14">작성하신 리뷰 내역이 없습니다.</p></td>
						</tr>
					</tbody>
					            	</c:when>
					            	<c:otherwise>
								<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
									<c:forEach items="${revi}" var="revi" varStatus="loop">
										<tr style="background-color: #FFFFFF; color: #555555;"
											class="xans-record-">
											<td>
												<div class="subject left fs13">
													<a href='/shop/detail?prodNo=${revi.prodNo}'>
													<c:out value="${revi.prodName}"/>
													</a>
												</div>
												<div class="writer fs13">
													<c:if test="${revi.rating == 1}">
                        								<i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                        							</c:if>
		                                        	<c:if test="${revi.rating == 2}">
                          								<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                          							</c:if>
		                                        	<c:if test="${revi.rating == 3}">
                          								<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                          							</c:if>
		                                        	<c:if test="${revi.rating == 4}">
                          								<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i>
                          							</c:if>
		                                        	<c:if test="${revi.rating == 5}">
                          								<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                          							</c:if>
												</div>
												<div class="subject left fs13">
													<c:out value="${revi.reviTitle}"/></a>
												</div>
												<div class=" fs13 writer_date">
													<fmt:formatDate pattern="yyyy-MM-dd" value="${revi.reviReg}"/>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
								</c:otherwise>
								</c:choose>
							</table>
						</div>
                    </div>
                </div>
                
                <div class="tab-pane" id="tabs-3" role="tabpanel">
                    <div class="product__details__tab__desc">
                        <div class="n_board line typeList gBorder">
							<table border="1" summary="">
								<caption>게시판 목록</caption>
								<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
									<tr style="">
										<td>
											<div class="subject left fs12">제목</div>
											<div class=" fs12 writer_date">작성일</div>
											<div class=" fs12 hit">조회수</div>
										</td>
									</tr>
								</thead>
								<c:choose>
					            	<c:when test="${loun.isEmpty()}">
					<tbody>
						<tr>
							<td><p class="message  fs14">작성 내역이 없습니다.</p></td>
						</tr>
					</tbody>
					            	</c:when>
					            	<c:otherwise>
								<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
									<c:forEach items="${loun}" var="loun" varStatus="loop">
										<tr style="background-color: #FFFFFF; color: #555555;"
											class="xans-record-">
											<td>
												<div class="subject left fs13">
													<a href='/board/loungeRead?boardNo=<c:out value="${loun.boardNo}"/>&pageNum=${pageNum}&amount=${amount}'>
													<c:out value="${loun.boardTitle}"/></a>
												</div>
												<div class=" fs13 writer_date">
													<fmt:formatDate pattern="yyyy-MM-dd" value="${loun.boardUpdate}"/>
												</div>
												<div class=" fs13 hit">
													<c:out value="${loun.boardCnt}"/>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
								</c:otherwise>
								</c:choose>
							</table>
						</div>
                    </div>
                </div>
                
                <div class="tab-pane" id="tabs-4" role="tabpanel">
                    <div class="product__details__tab__desc">
                        <div class="n_board line typeList gBorder">
							<table border="1" summary="">
								<caption>게시판 목록</caption>
								<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
									<tr style="">
										<td>
											<div class="subject left fs12">댓글</div>
											<div class=" fs12 writer_date">작성일</div>
										</td>
									</tr>
								</thead>
								<c:choose>
					            	<c:when test="${repl.isEmpty()}">
					<tbody>
						<tr>
							<td><p class="message  fs14">작성한 댓글이 없습니다.</p></td>
						</tr>
					</tbody>
					            	</c:when>
					            	<c:otherwise>
								<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
									<c:forEach items="${repl}" var="repl" varStatus="loop">
										<tr style="background-color: #FFFFFF; color: #555555;"
											class="xans-record-">
											<td>
												<div class="subject left fs13">
													<a href='/board/loungeRead?boardNo=<c:out value="${repl.boardNo}"/>&pageNum=${pageNum}&amount=${amount}'>
													<c:out value="${repl.boRepContent}"/></a>
												</div>
												<div class=" fs13 writer_date">
													<fmt:formatDate pattern="yyyy-MM-dd" value="${repl.boRepUpdate}"/>
												</div>
												<div class=" fs13 hit">
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
								</c:otherwise>
								</c:choose>
							</table>
						</div>
                    </div>
                </div>
                
                <div class="tab-pane" id="tabs-5" role="tabpanel">
                    <div class="product__details__tab__desc">
                        <div class="n_board line typeList gBorder">
							<table border="1" summary="">
								<caption>게시판 목록</caption>
								<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
									<tr style="">
										<td>
											<div class="subject left fs12">제목</div>
											<div class=" fs12 writer_date">작성일</div>
										</td>
									</tr>
								</thead>
								<c:choose>
					            	<c:when test="${qna.isEmpty()}">
					<tbody>
						<tr>
							<td><p class="message  fs14">문의 내역이 없습니다.</p></td>
						</tr>
					</tbody>
					            	</c:when>
					            	<c:otherwise>
								<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
									<c:forEach items="${qna}" var="qna" varStatus="loop">
										<tr style="background-color: #FFFFFF; color: #555555;"
											class="xans-record-">
											<td>
												<div class="chk fs13">
													<c:out value=""/>
												</div>
												<div class="subject left fs13">
													<a href='/board/loungeRead?boardNo=<c:out value="${qna.boardNo}"/>'>
													<c:out value=""/></a>
												</div>
												<div class=" fs13 writer_date">
													<fmt:formatDate pattern="yyyy-MM-dd" value=""/>
												</div>
												<div class=" fs13 hit">
													<c:out value=""/>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
								</c:otherwise>
								</c:choose>
							</table>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    </div>

<!-- 	<div class="sf_main_review"> <div id="tab_area"> -->
<!-- 	<div class="tab writable selected" data-type="writable"> -->
<!-- 	  <span class="tab_title">작성 가능한 리뷰</span>(<span class="tab_review_count">0</span>) -->
<!-- 	</div>  -->
<!-- 	<div class="tab writed" data-type="writed"> <span class="tab_title">작성한 리뷰</span>(<span class="tab_review_count">0</span>) -->
<!-- 	</div> -->
<!--  	</div> -->
<!--   	<div id="content_area"> <div class="content writable" data-type="writable"><div class="searchResultIsNull">            <div class="searchResultIsNullImg"></div>                <div class="searchResultIsNullText"><span>작성 가능한 리뷰가 없습니다</span></div>        </div></div> <div class="content writed selected" data-type="writed"> <div class="sf_review_list"> <div class="sf_review_area"><div class="searchResultIsNull">            <div class="searchResultIsNullImg"></div>                <div class="searchResultIsNullText"><span>리뷰가 없습니다</span></div>        </div></div> </div> <div class="sf_review_pagination"> <ol class="pagination" id="pagination"></ol> </div> </div> </div> -->
<!-- 	</div> -->
<!-- 	</div> -->
	
	<%@include file="../includes/footer.jsp" %>
	<%@include file="../includes/mp_footer.jsp" %>
	
	<script>
	$(".board").addClass("on");
	</script>
	
</body>
</html>