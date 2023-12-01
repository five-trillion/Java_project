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
		<main id="main" class="main adminBoardNoti_Free">

			<div class="pagetitle">
				<h1>공지게시판</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">게시판관리</a></li>
						<li class="breadcrumb-item active">공지</li>
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
											<th class="longLine">번호</th>
											<th class="longLine">제목</th>
											<th class="longLine">등록일</th>
											<th class="longLine">리뷰보기</th>
											<th class="shortLine">조회수</th>
											<th class="shortLine">상세</th>
											<th class="shortLine">삭제</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>0</td>
											<td>0</td>
											<td>0</td>
											<td>0</td>
											<td>0</td>
											<td>0</td>
											<td>0</td>
										</tr>
										<c:forEach var="board" items="${boardList}">
											<tr>
												<th scope="row">${board.boardNo}</th>
												<td>${board.boardTitle}</td>
												<td><fmt:formatDate value="${board.boardReg}" type="date"></fmt:formatDate></td>
												<td>리뷰</td>
												<td>${board.boardCnt}</td>
												<td>
													<!-- Large Modal -->
													<div class="btn btn-primary modalBtn">
														돋보기</div>

													<div class="modal fade" tabindex="-1">
														<div class="modal-dialog modal-lg">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title">게시글 정보</h5>
																	<button type="button" class="btn-close"
																		data-bs-dismiss="modal" aria-label="Close"></button>
																</div>
																<div class="modal-body">
																</div>
																<div class="modal-footer">
																	<a href="adminUserModify"><button type="button" class="btn btn-secondary"
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
		$(".datatable-table th").eq(0).css({"width": "calc(60%/5)"});
		$(".datatable-table th").eq(1).css({"width": "20%"});
		$(".datatable-table th").eq(2).css({"width": "20%"});
		$(".datatable-table th").eq(3).css({"width": "15%"});
		$(".datatable-table th").eq(4).css({"width": "calc(60%/5)"});
		$(".datatable-table th").eq(5).css({"width": "calc(60%/5)"});
		$(".datatable-table th").eq(6).css({"width": "calc(60%/5)"});
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