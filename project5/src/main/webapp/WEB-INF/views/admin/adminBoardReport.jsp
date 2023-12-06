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
				<h1>자유게시판</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">게시판관리</a></li>
						<li class="breadcrumb-item active">자유</li>
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
											<th class="longLine">신고번호</th>
											<th class="longLine">신고자</th>
											<th class="longLine">신고사유</th>
											<th class="longLine">신고일</th>
											<th class="shortLine">처리유무</th>
											<th class="shortLine">상세보기</th>
											<th class="shortLine">삭제</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>031</td>
											<td>031</td>
											<td>031</td>
											<td>031</td>
											<td>031</td>
											<td>031</td>
											<td>031</td>
										</tr>
										<c:forEach var="board" items="${repList}">
											<tr>
												<th scope="row">${board.repoNo}</th>
												<td>${board.userNo}</td>
												<td>${board.repoReason}</td>
												<td><fmt:formatDate value="${board.repoDate}" type="date"></fmt:formatDate></td>
												<td><i class="ri ri-ball-pen-fill"></td>
												<td>
													<c:if test="${board.boardNo != 0}">
														<div class="btn btn-primary" onClick="window.open('/admin/adminReportDetail?boardNo=${board.boardNo}&boRepNo=0&reviRepNo=0','_blank', 'width=500, height=500, top=200, left=400')">돋보기</div>
													</c:if>
													<c:if test="${board.boRepNo != 0}">
														<div class="btn btn-primary" onClick="window.open('/admin/adminReportDetail?boardNo=0&boRepNo=${board.boRepNo}&reviRepNo=0','_blank', 'width=500, height=500, top=200, left=400')">돋보기</div>
													</c:if>
													<c:if test="${board.reviRepNo != 0}">
														<div class="btn btn-primary" onClick="window.open('/admin/adminReportDetail?boardNo=0&boRepNo=0&reviRepNo=${board.reviRepNo}','_blank', 'width=500, height=500, top=200, left=400')">돋보기</div>
													</c:if>
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
																	<a href="adminBoardDelete?repoNo=${board.repoNo}"><button type="button" class="btn btn-secondary"
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