<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<%@ include file="./includes/headAdmin.jsp"%>
<body>
	<%@ include file="./includes/headerAdmin.jsp"%>

	<%@ include file="./includes/sideAdmin.jsp"%>

	<main id="main" class="main adminUserManage">
		<div class="pagetitle">
			<h1>회원 관리</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">조회</a></li>
					<li class="breadcrumb-item active">수정</li>
				</ol>
			</nav>
		</div>
		<!-- 상품등록 페이지 상단 이름 종료 -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">회원 정보</h5>

							<!-- Multi Columns Form -->
							<form class="row g-3">
								<div class="col-md-6">
									<label for="userNo" class="form-label">회원 번호</label> <input
										type="text" class="form-control" id="userNo" name="userNo" value="${user.userNo}" readonly>
								</div>
								<div class="col-md-6">
									<label for="userId" class="form-label">아이디</label>
									<input type="text" class="form-control" id="userId" name="userId" value="${user.userId}" readonly>
								</div>
								<div class="col-md-6">
									<label for="userName" class="form-label">이름</label> <input
										type="text" class="form-control" id="userName" name="userName" value="${user.userName}" readonly>
								</div>
								<div class="col-md-6">
									<label for="nick" class="form-label">닉네임</label>
									<input type="text" class="form-control" id="nick" name="nick" value="${user.nick}">
								</div>
								<div class="col-md-6">
									<label for="tel" class="form-label">일반전화</label> <input
										type="text" class="form-control" id="tel" name="tel" value="${user.tel}">
								</div>
								<div class="col-md-6">
									<label for="phone" class="form-label">휴대폰</label>
									<input type="text" class="form-control" id="phone" name="phone" value="${user.phone}">
								</div>
								<div class="col-md-8">
									<label for="email" class="form-label">이메일</label> <input
										type="email" class="form-control" id="email" name="email" value="${user.email}">
								</div>
								<div class="col-md-4">
									<label for="zip" class="form-label">우편번호</label> <input
										type="text" class="form-control" id="zip" name="zip" value="${user.zip}">
								</div>
								<div class="col-md-12">
									<label for="address" class="form-label">주소</label> <input
										type="text" class="form-control" id="address" name="address" value="${user.address}">
								</div>
								
								<div class="col-md-6">
									<label for="regDate" class="form-label">가입일</label>
									<input type="text" class="form-control" id="regDate" name="regDate" value="<fmt:formatDate pattern='yyyy/MM/dd' value='${user.regDate}' />" readonly>
								</div>
								<div class="col-md-6">
									<label for="birth" class="form-label">생년원일</label> <input
										type="text" class="form-control" id="birth" name="birth" value="<fmt:formatDate pattern='yyyy/MM/dd' value='${user.birth}' />">
								</div>
								<div class="col-12">
									<label for="point" class="form-label">잔여포인트</label>
									<input type="text" class="form-control" id="point" name="point" value="${user.point}" readonly>
								</div>
								<div class="col-md-4">
									<div style="margin-bottom: 0.5rem;">정보동의</div>
					          <label class="form-check-label" for="eventY"><button type="button" class="btn btn-outline-info">동의</button></label>
										<input class="form-check-input" type="radio" id="eventY" name="eventYn" value="0" checked>
					          <label class="form-check-label" for="eventN"><button type="button" class="btn btn-outline-info">비동의</button></label>
										<input class="form-check-input" type="radio" id="eventN" name="eventYn" value="1">
								</div>
								<div class="col-md-4">
									<div style="margin-bottom: 0.5rem;">권한</div>
									<label class="form-check-label" for="admin"><button type="button" class="btn btn-info">관리자</button></label>
									<input class="form-check-input" type="radio" id="admin" name="admin" value="0" checked>
				          <label class="form-check-label" for="user"><button type="button" class="btn btn-outline-info">회원</button></label>
									<input class="form-check-input" type="radio" id="user" name="admin" value="1">
								</div>
								<div class="text-center btnBox">
									<button type="submit" class="btn btn-primary">Submit</button>
									<button type="reset" class="btn btn-secondary">Reset</button>
								</div>
							</form>
							<!-- End Multi Columns Form -->

						</div>
					</div>
				</div>
			</div>
			</section>



	</main>
	<%@ include file="./includes/footerAdmin.jsp"%>
	<script type="text/javascript">
		$(".btnBox").css({"marginTop" : "30px"})
		$(".form-check-input:checked").prev().children().attr("class","btn btn-info");
		$(".form-check-label").on("click", (e) => {
			$(e.target).parent().next().prop("checked", true);
			$(".form-check-input").prev().children().attr("class","btn btn-outline-info");
			$(".form-check-input:checked").prev().children().attr("class","btn btn-info");
		});
		$(".form-check").css({"display": "inline-block"})
		$(".form-check-input").css({
			"float": "none",
			"margin": "auto"
		})
		$(".col-sm-2").css({
			"width" : "auto"
		});
		$(".half").css({
			"width" : "50%",
			"display" : "inline-block"
		});
		$(".quater").css({
			"width" : "25%"
		});
		$(".prodCode").on("blur", prodNo);
		function prodNo() {
			console.log("dddd");
			const prodNo1 = $("#prodNo1").val();
			const prodNo2 = $("#prodNo2").val();
			const prodNo3 = $("#prodNo3").val();
			const prodNo4 = $("#prodNo4").val();

			$("#prodNo").val(
					prodNo1 + "-" + prodNo2 + "-" + prodNo3 + "-" + prodNo4);

			console
					.log(prodNo1 + "-" + prodNo2 + "-" + prodNo3 + "-"
							+ prodNo4);
		};
	</script>
</body>
</html>