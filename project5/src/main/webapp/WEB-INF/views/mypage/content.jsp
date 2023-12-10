<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../includes/src.jsp" %>
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
                    <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab" aria-selected="false">작성한 댓글</a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="tabs-1" role="tabpanel">
                    <div class="product__details__tab__desc">
                        <h6>Products Infomation</h6>
                        <p>.</p>
                    </div>
                </div>
                <div class="tab-pane" id="tabs-2" role="tabpanel">
                    <div class="product__details__tab__desc">
                        <h6>Products Infomation</h6>
                        <p>.</p>
                    </div>
                </div>
                <div class="tab-pane" id="tabs-3" role="tabpanel">
                    <div class="product__details__tab__desc">
                        <h6>Products Infomation</h6>
                        <p>.</p>
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