<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<%@ include file="./includes/headAdmin.jsp"%>
<body>
	<div id="container">
		<%@ include file="./includes/headerAdmin.jsp"%>

		<%@ include file="./includes/sideAdmin.jsp"%>
		<main id="main" class="main adminUserManage">

			<div class="pagetitle">
				<h1>회원관리</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">회원관리</a></li>
						<li class="breadcrumb-item active">조회</li>
					</ol>
				</nav>
			</div>
			<!-- End Page Title -->

			<section class="section">
				<div class="row">
					<div class="col-lg-12">

						<div class="card">
							<div class="card-body">
								<h5 class="card-title">조회</h5>

								<!-- Table with stripped rows -->
								<table class="table datatable">
									<thead>
										<tr class="imsi">
											<th class="longLine">회원 번호</th>
											<th class="longLine">유저 아이디</th>
											<th class="longLine">닉네임</th>
											<th class="longLine">가입일</th>
											<th class="shortLine">권한</th>
											<th class="shortLine">조회</th>
											<th class="shortLine">강퇴</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="user" items="${userList}">
											<tr>
												<th scope="row">${user.userNo}</th>
												<td>${user.userName}</td>
												<td>${user.nick}</td>
												<td><fmt:formatDate value="${user.regDate}" type="date"></fmt:formatDate></td>
												<td>
													<c:choose>
														<c:when test="${user.admin == 0}">관리자</c:when>
														<c:otherwise>고객</c:otherwise>
													</c:choose>
												</td>
												<td>
													<!-- Large Modal -->
													<div class="btn btn-primary modalBtn">
														돋보기</div>

													<div class="modal fade userInfo" tabindex="-1">
														<div class="modal-dialog modal-lg">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title">회원 정보</h5>
																	<button type="button" class="btn-close"
																		data-bs-dismiss="modal" aria-label="Close"></button>
																</div>
																<div class="modal-body">
																	<!-- Bordered Table -->
														              <table class="table table-bordered">
														                <tbody>
															                  <tr>
																				<th>회원번호</th>
																				<td>${user.userNo}</td>
																				<th>아이디</th>
																				<td>${user.userId}</td>
																			</tr>
																			<tr>
																				<th>이름</th>
																				<td>${user.userName}</td>
																				<th>닉네임</th>
																				<td>${user.nick}</td>
																			</tr>
																			<tr>
																				<th>연락처</th>
																				<td colspan="3">${user.tel}</td>
																			</tr>
																			<tr>
																				<th>전화번호</th>
																				<td colspan="3">${user.phone}</td>
																			</tr>
																			<tr>
																				<th>우편번호</th>
																				<td>${user.zip}</td>
																				<th>정보 동의 여부</th>
																				<td>${user.eventYn}</td>
																			</tr>
																			<tr>
																				<th>등록일</th>
																				<td><fmt:formatDate value="${user.regDate}"
																						type="date"></fmt:formatDate></td>
																				<th>생일</th>
																				<td><fmt:formatDate value="${user.birth}"
																						type="date"></fmt:formatDate></td>
																			</tr>
																			<tr>
																				<th>현재 포인트</th>
																				<td>${user.point}</td>
																				<th>권한등급</th>
																				<td>${user.admin}</td>
																			</tr>
														                </tbody>
														              </table>
														              <!-- End Bordered Table -->
																</div>
																<div class="modal-footer">
																	<a href="adminUserModify?userNo=${user.userNo}"><button type="button" class="btn btn-secondary"
																		data-bs-dismiss="modal">수정</button></a>
																	<button type="button" class="btn btn-primary modalClose">닫기</button>
																</div>
															</div>
														</div>
													</div> <!-- End Large Modal-->
												</td>
												<td>
													<!-- Large Modal -->
													<div class="btn btn-primary modalBtn">삭제</div>

													<div class="modal fade" id="largeModal" tabindex="-1">
														<div class="modal-dialog modal-lg">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title">삭제</h5>
																	<button type="button" class="btn-close"
																		data-bs-dismiss="modal" aria-label="Close"></button>
																</div>
																<div class="modal-body">
																	삭제 처리 하시겠습니까?
																</div>
																<div class="modal-footer">
																	<a href="adminUserDelete?userNo=${user.userNo}"><button type="button" class="btn btn-secondary"
																		data-bs-dismiss="modal">삭제</button></a>
																	<button type="button" class="btn btn-primary modalClose">닫기</button>
																</div>
															</div>
														</div>
													</div> <!-- End Large Modal-->
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<!-- End Table with stripped rows -->

							</div>
						</div>

					</div>
				</div>
			</section>

		</main>
		<!-- End #main -->
	</div>
	<%@ include file="./includes/footerAdmin.jsp"%>

	<script>
		$(".table-bordered").css({"textAlign": "center"})
		$(".datatable-table").css({"textAlign": "center"})
		$(".datatable-table th").css({"textAlign": "center"})
		$(".datatable-table th").eq(0).css({"width": "15%"});
		$(".datatable-table th").eq(1).css({"width": "15%"});
		$(".datatable-table th").eq(2).css({"width": "15%"});
		$(".datatable-table th").eq(3).css({"width": "15%"});
		$(".datatable-table th").eq(4).css({"width": "calc(30%/3)"});
		$(".datatable-table th").eq(5).css({"width": "calc(30%/3)"});
		$(".datatable-table th").eq(6).css({"width": "calc(30%/3)"});
		$(window).on("resize", () => {		
			$(".datatable-table th").css({"textAlign": "center"})
			$(".datatable-table th").eq(0).css({"width": "15%"});
			$(".datatable-table th").eq(1).css({"width": "15%"});
			$(".datatable-table th").eq(2).css({"width": "15%"});
			$(".datatable-table th").eq(3).css({"width": "15%"});
			$(".datatable-table th").eq(4).css({"width": "calc(30%/3)"});
			$(".datatable-table th").eq(5).css({"width": "calc(30%/3)"});
			$(".datatable-table th").eq(6).css({"width": "calc(30%/3)"});
		})
		$(".modalBtn").on("click", (e) => {
			e.preventDefault();
			$(e.target).next().modal("show");
		})
		
		$(".modalClose").on("click", (e) => {
			$(e.target).parents(".modal").modal("hide");
		})
	</script>
</body>
</html>