<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<%@ include file="./includes/headAdmin.jsp"%>
<body>
	<%@ include file="./includes/headerAdmin.jsp"%>

	<%@ include file="./includes/sideAdmin.jsp"%>

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>상품 등록</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">상품 페이지 등록</li>
				</ol>
			</nav>
		</div>
		<!-- 상품등록 페이지 상단 이름 종료 -->

		<div class="row">
			<form name="notiWrite" action="adminNotiModify" method="post"
				enctype="multipart/form-data" role="form"
				onsubmit="return writeCheck();">
				<input type="hidden" id="boardNo" name="boardNo" value="${noti.boardNo}">
				<div class="row mb-3">
					<label for="boardTitle" class="col-sm-2 col-form-label">제
						목</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="boardTitle"
							name="boardTitle" value="${noti.boardTitle}" maxlength="50">
					</div>
				</div>
				<div class="row mb-3">
					<label for="boardContent" class="col-sm-2 col-form-label">글
						내용</label>
					<div class="col-sm-10">
						<textarea rows="10" class="form-control" id="boardContent"
							name="boardContent" maxlength="1000">${noti.boardContent}</textarea>
					</div>
				</div>
				<div class="row mb-3">
					<label for="boardImgMulti" class="col-sm-2 col-form-label">게시판
						이미지</label>
					<div class="col-sm-10">
						<input class="form-control" type="file" name="boardImgMulti"
							id="boardImgMulti">
					</div>
				</div>

				<div class="row mb-3">
					<label class="col-sm-2 col-form-label"></label>
					<div class="col-sm-10 btnBox">
						<button type="submit" class="btn btn-primary">공지 등록</button>
						<button type="reset" class="btn btn-primary">초기화</button>
						<a href="adminBoardNoti" class="btn btn-success">목록</a>
					</div>
				</div>

			</form>
			<!-- End General Form Elements -->
		</div>



	</main>
	<%@ include file="./includes/footerAdmin.jsp"%>

	<script>
		console.log(document.notiWrite.boardTitle);
		$(".btnBox").children().css({
			"margin-right" : "20px"
		});
		function writeCheck() {

			if (document.notiWrite.boardTitle.value == "") {
				alert("제목을 입력해 주세요");
				return false;
			}
			if (document.notiWrite.boardContent.value == "") {
				alert("내용을 입력해 주세요");
				return false;
			}
			consoel.log("유효성 검사 완료")
			return true;
		}
	</script>
</body>
</html>