<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<html>
	<%@ include file="./includes/headAdmin.jsp" %>
<body>
	<%@ include file="./includes/headerAdmin.jsp" %>
	
	<%@ include file="./includes/sideAdmin.jsp" %>

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>상품 페이지 수정</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">상품 페이지 수정 등록</li>
				</ol>
			</nav>
		</div>
		<!-- 상품등록 페이지 상단 이름 종료 -->
		
		<div class="row">
			<form action="" method="post" enctype="multipart/form-data">
                <div class="row mb-3">
                  <label for="prodNo" class="col-sm-2 col-form-label">상품 코드(수정 불가)</label>
                  <div class="col-sm-10">
                    <input type="hidden" id="prodNo" name="prodNo" value="${VO.prodNo}" readonly="readonly">                  
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="brand" class="col-sm-2 col-form-label">브 랜 드</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="brand" name="brand" value="${VO.brand}">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="category" class="col-sm-2 col-form-label">카테고리</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="category" name="category" value="${VO.category}">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="prodName" class="col-sm-2 col-form-label">상 품 명</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="prodName" name="prodName" value="${VO.prodName}">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="prodInfo" class="col-sm-2 col-form-label">상품 설명</label>
                  <div class="col-sm-10">
                    <textarea class="form-control" style="height: 100px" id="prodInfo" name="prodInfo" value="${VO.prodInfo}"></textarea>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="netPrice" class="col-sm-2 col-form-label">공식 정가</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="netPrice" name="netPrice" value="${VO.netPrice}">
                  </div>
                </div>  
                <div class="row mb-3">
                  <label for="salePrice" class="col-sm-2 col-form-label">판매 가격</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="salePrice" name="salePrice" value="${VO.salePrice}">
                  </div>  
                </div>
                <div class="row mb-3">
                  <label for="mainImg" class="col-sm-2 col-form-label">메인 이미지</label>
                  <div class="col-sm-10">
                    <input class="form-control" type="file" id="mainImg" value="${VO.mainImg}">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="prodImg" class="col-sm-2 col-form-label">제품 상세 이미지</label>
                  <div class="col-sm-10">
                    <input class="form-control" type="file" id="prodImg" value="${VO.prodImg}">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="mini1Img" class="col-sm-2 col-form-label">미니 이미지 1</label>
                  <div class="col-sm-10">
                    <input class="form-control" type="file" id="mini1Img" value="${VO.mini1Img}">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="mini2Img" class="col-sm-2 col-form-label">미니 이미지 2</label>
                  <div class="col-sm-10">
                    <input class="form-control" type="file" id="mini2Img" value="${VO.mini2Img}">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="mini3Img" class="col-sm-2 col-form-label">미니 이미지 3</label>
                  <div class="col-sm-10">
                    <input class="form-control" type="file" id="mini3Img" value="${VO.mini3Img}">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="mini4Img" class="col-sm-2 col-form-label">미니 이미지 4</label>
                  <div class="col-sm-10">
                    <input class="form-control" type="file" id="mini4Img" value="${VO.mini4Img}">
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">수정 등록</button> &nbsp;&nbsp;&nbsp;
                    <button type="reset" class="btn btn-primary">등록 취소</button>
                  </div>
                </div>

              </form><!-- End General Form Elements -->
		</div>



	</main>
	<%@ include file="./includes/footerAdmin.jsp" %>
	
	<script type="text/javascript">
	$("#prodNo1").blur(function(){
		prodNo();	
	});
	$("#prodNo2").blur(function(){
		prodNo();	
	});
	$("#prodNo3").blur(function(){
		prodNo();	
	});
	$("#prodNo4").blur(function(){
		prodNo();	
	});

	function prodNo() {
		const prodNo1 = $("#prodNo1").val();
		const prodNo2 = $("#prodNo2").val();
		const prodNo3 = $("#prodNo3").val();
		const prodNo4 = $("#prodNo4").val();
		
		if(prodNo1 != "" && prodNo2 != "" && prodNo3 != "" && prodNo4 != "") {
			$("#prodNo").val(prodNo1+"-"+prodNo2+"-"+prodNo3+"-"+prodNo4);
		}
	};
	
	</script>
</body>
</html>
