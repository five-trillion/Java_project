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
							<form action="" method="post" class="row g-3">
								<div class="col-md-6">
									<label for="userNo" class="form-label">회원 번호</label> <input
										type="text" class="form-control" id="userNo" name="userNo"
										value="${user.userNo}" disabled>
								</div>
								<div class="col-md-6">
									<label for="userId" class="form-label">아이디</label> <input
										type="text" class="form-control" id="userId" name="userId"
										value="${user.userId}" disabled>
								</div>
								<div class="col-md-6">
									<label for="userName" class="form-label">이름</label> <input
										type="text" class="form-control" id="userName" name="userName"
										value="${user.userName}" disabled>
								</div>
								<div class="col-md-6">
									<label for="nick" class="form-label">닉네임</label> <input
										type="text" class="form-control" id="nick" name="nick"
										value="${user.nick}">
								</div>
								<div class="col-md-6">
									<label for="tel" class="form-label">일반전화</label> <input
										type="text" class="form-control" id="tel" name="tel"
										value="${user.tel}">
								</div>
								<div class="col-md-6">
									<label for="phone" class="form-label">휴대폰</label> <input
										type="text" class="form-control" id="phone" name="phone"
										value="${user.phone}">
								</div>
								<div class="col-md-8">
									<label for="email" class="form-label">이메일</label> <input
										type="email" class="form-control" id="email" name="email"
										value="${user.email}">
								</div>
								<div class="col-md-4">
									<label for="zip" class="form-label">우편번호</label> <input
										type="text" class="form-control" id="zip" name="zip"
										value="${user.zip}">
								</div>
								<div class="col-md-12">
									<label for="address" class="form-label">주소</label> <input
										type="text" class="form-control" id="address" name="address"
										value="${user.address}">
								</div>

								<div class="col-md-6">
									<label for="regDate" class="form-label">가입일</label> <input
										type="text" class="form-control" id="regDate" name="regDate"
										value="<fmt:formatDate pattern='yyyy/MM/dd' value='${user.regDate}' />"
										disabled>
								</div>
								<div class="col-md-6">
									<label for="birth" class="form-label">생년원일</label> <input
										type="text" class="form-control" id="birth" name="birth"
										value="<fmt:formatDate pattern='yyyy/MM/dd' value='${user.birth}' />"
										disabled>
								</div>
								<div class="col-12">
									<label for="point" class="form-label">잔여포인트</label> <input
										type="text" class="form-control" id="point" name="point"
										value="${user.point}" disabled>
								</div>
								<div class="col-md-6">
									<div style="margin-bottom: 0.5rem;">정보동의</div>
									<c:choose>
										<c:when test="${user.eventYn == 1}">
											<div class="btn-group" role="group"
												aria-label="Basic example" style="width: 100%; pointer-events: none;">
												<button type="button" class="btn btn-info">동의</button>
												<button type="button" class="btn btn-outline-info">비동의</button>
											</div>
										</c:when>
										<c:otherwise>
											<div class="btn-group" role="group"
												aria-label="Basic example" style="width: 100%; pointer-events: none;">
												<button type="button" class="btn btn-outline-info">동의</button>
												<button type="button" class="btn btn-info">비동의</button>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
								<div class="col-md-6">
									<div style="margin-bottom: 0.5rem;">권한</div>
										<c:choose>
											<c:when test="${user.admin == 0}">
											<div class="btn-group" role="group"
										aria-label="Basic example" style="width: 100%;">
												<button type="button" class="btn btn-info adminBtn">관리자</button>
												<button type="button" class="btn btn-outline-info userBtn">회원</button>
											</div>
											<input type="radio" name="admin" id="admin" value="0" checked style="opacity:0; pointer-events: none;">
											<input type="radio" name="admin" id="user" value="1" style="opacity:0; pointer-events: none;">
											</c:when>
											<c:otherwise>
											<div class="btn-group" role="group"
										aria-label="Basic example" style="width: 100%;">
												<button type="button" class="btn btn-outline-info adminBtn">관리자</button>
												<button type="button" class="btn btn-info userBtn">회원</button>
											</div>
											<input type="radio" name="admin" id="admin" value="0" style="opacity:0; pointer-events: none;">
											<input type="radio" name="admin" id="user" value="1" checked style="opacity:0; pointer-events: none;">
											</c:otherwise>
										</c:choose>
								</div>
								<div class="text-center btnBox">
									<button type="submit" class="btn btn-primary">수정</button>
									<button type="reset" class="btn btn-secondary">초기화</button>
									<a href="adminUserManage" class="btn btn-success">목록</a>
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
		let defaultAdmin = document.querySelector("input[name=admin]:checked").value
		$(".adminBtn").on("click", (e) => {
			$(e.target).parent().next().prop("checked", true);
			$(e.target).attr("class","btn btn-info adminBtn");
			$(e.target).next().attr("class", "btn btn-outline-info userBtn")
		});
		$(".userBtn").on("click", (e) => {
			$(e.target).parent().next().next().prop("checked", true);
			$(e.target).attr("class","btn btn-info userBtn");
			$(e.target).prev().attr("class", "btn btn-outline-info adminBtn")
		});
		
		$("button[type=reset]").on("click", () => {
			console.log("dddd");
			console.log(defaultAdmin);
			if (defaultAdmin == 0) {
				$(".adminBtn").attr("class","btn btn-info adminBtn");
				$(".adminBtn").next().attr("class", "btn btn-outline-info userBtn")	
			} else {
				$(".userBtn").attr("class","btn btn-info userBtn");
				$(".userBtn").prev().attr("class", "btn btn-outline-info adminBtn")
			}
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