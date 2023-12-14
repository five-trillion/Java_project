<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../includes/src.jsp" %>
<style>
	.product__details__tab .nav-tabs:after, .product__details__tab .nav-tabs:before {
		display: none;
	}
	.typeList {
		margin: 70px;
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
                    
                </div>
                
                <div class="tab-pane" id="tabs-2" role="tabpanel">
                    <div class="product__details__tab__desc">
                        
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
											<div class="chk fs12">번호</div>
											<div class="displaynone cate fs12">카테고리</div>
											<div class="subject left fs12">제목</div>
											<div class="writer fs12">작성자</div>
											<div class=" fs12 writer_date">작성일</div>
											<div class=" fs12 hit">조회수</div>
										</td>
									</tr>
								</thead>
								<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
									<c:forEach items="${freeList}" var="board" varStatus="loop">
										<tr style="background-color: #FFFFFF; color: #555555;"
											class="xans-record-">
											<td>
												<div class="chk fs13">
													<c:out value="${board.boardNo}"/>
												</div>
												<div class="subject left fs13">
													<a href='/board/loungeRead?boardNo=<c:out value="${board.boardNo}"/>'>
													<c:out value="${board.boardTitle}"/></a>
												</div>
												<div class="writer fs13">
													<c:out value="${board.userNick}"/>
												</div>
												<div class=" fs13 writer_date">
													<fmt:formatDate pattern="yyyy-MM-dd" value="${board.boardUpdate}"/>
												</div>
												<div class=" fs13 hit">
													<c:out value="${board.boardCnt}"/>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
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
											<div class="chk fs12">번호</div>
											<div class="displaynone cate fs12">카테고리</div>
											<div class="subject left fs12">제목</div>
											<div class="writer fs12">작성자</div>
											<div class=" fs12 writer_date">작성일</div>
											<div class=" fs12 hit">조회수</div>
										</td>
									</tr>
								</thead>
								<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
									<c:forEach items="${freeList}" var="board" varStatus="loop">
										<tr style="background-color: #FFFFFF; color: #555555;"
											class="xans-record-">
											<td>
												<div class="chk fs13">
													<c:out value="${board.boardNo}"/>
												</div>
												<div class="subject left fs13">
													<a href='/board/loungeRead?boardNo=<c:out value="${board.boardNo}"/>'>
													<c:out value="${board.boardTitle}"/></a>
												</div>
												<div class="writer fs13">
													<c:out value="${board.userNick}"/>
												</div>
												<div class=" fs13 writer_date">
													<fmt:formatDate pattern="yyyy-MM-dd" value="${board.boardUpdate}"/>
												</div>
												<div class=" fs13 hit">
													<c:out value="${board.boardCnt}"/>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
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
											<div class="chk fs12">번호</div>
											<div class="displaynone cate fs12">카테고리</div>
											<div class="subject left fs12">제목</div>
											<div class="writer fs12">작성자</div>
											<div class=" fs12 writer_date">작성일</div>
											<div class=" fs12 hit">조회수</div>
										</td>
									</tr>
								</thead>
								<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
									<c:forEach items="${freeList}" var="board" varStatus="loop">
										<tr style="background-color: #FFFFFF; color: #555555;"
											class="xans-record-">
											<td>
												<div class="chk fs13">
													<c:out value="${board.boardNo}"/>
												</div>
												<div class="subject left fs13">
													<a href='/board/loungeRead?boardNo=<c:out value="${board.boardNo}"/>'>
													<c:out value="${board.boardTitle}"/></a>
												</div>
												<div class="writer fs13">
													<c:out value="${board.userNick}"/>
												</div>
												<div class=" fs13 writer_date">
													<fmt:formatDate pattern="yyyy-MM-dd" value="${board.boardUpdate}"/>
												</div>
												<div class=" fs13 hit">
													<c:out value="${board.boardCnt}"/>
												</div>
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