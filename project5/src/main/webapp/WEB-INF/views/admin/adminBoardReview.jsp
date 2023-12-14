<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<%@ include file="./includes/headAdmin.jsp"%>
<body>
	<main id="main" class="main" style="margin: 0;">
		<div class="pagetitle">
			<h1>리뷰보기</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item active"><c:choose>
							<c:when test="${board.boardClass == 1}">공지게시판</c:when>
							<c:when test="${board.boardClass == 2}">질의게시판</c:when>
							<c:otherwise>자유게시판</c:otherwise>
						</c:choose></li>
				</ol>
			</nav>
		</div>

		<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<table class="table datatable">
								<thead>
									<tr class="imsi">
										<th class="longLine">리뷰번호</th>
										<th class="longLine">회원</th>
										<th class="longLine">댓글 내용</th>
										<th class="longLine">댓글 등록일</th>
										<th class="shortLine">수정 여부</th>
										<th class="shortLine">삭제</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="repList" items="${repList}">
										<tr>
											<th scope="row">${repList.boRepNo}</th>
											<td>${repList.userNo}</td>
											<td>${repList.boRepContent}</td>
											<td><fmt:formatDate value="${repList.boRepReg}"
													type="date"></fmt:formatDate></td>
											<td>
											<c:choose>
												<c:when test="${repList.boRepReg < repList.boRepUpdate}">
													<span style="color: #6AA0FC; font-weight: bold;"><fmt:formatDate value="${repList.boRepUpdate}"
													type="date"></fmt:formatDate></span>
												</c:when>
												<c:otherwise><i class="bx bx-x-circle" style="font-size: 24px; color: orange"></i></c:otherwise>
											</c:choose>
											</td>
											<td>
												<!-- Large Modal -->
												<div class="btn btn-primary modalBtn"
													style="background-color: red; border-color: red;">
													<i class="bx bx-x"></i>
												</div>

												<div class="modal fade" id="largeModal" tabindex="-1">
													<div class="modal-dialog modal-lg">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title">삭제</h5>
																<button type="button" class="btn-close"
																	data-bs-dismiss="modal" aria-label="Close"></button>
															</div>
															<div class="modal-body">삭제 처리 하시겠습니까?</div>
															<div class="modal-footer">
																<a
																	href="adminBoardReviewDelete?boRepNo=${repList.boRepNo}&boardNo=${repList.boardNo}"><button
																		type="button" class="btn btn-secondary"
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
	<%@ include file="./includes/footerAdmin.jsp"%>
	
	<script>
		$(".datatable-table").css({"textAlign": "center"})
		$(".datatable-table th").css({"textAlign": "center"})
		$(".datatable-table th").eq(0).css({"width": "10%"});
		$(".datatable-table th").eq(1).css({"width": "15%"});
		$(".datatable-table th").eq(2).css({"width": "35%"});
		$(".datatable-table th").eq(3).css({"width": "15%"});
		$(".datatable-table th").eq(4).css({"width": "15%"});
		$(".datatable-table th").eq(5).css({"width": "10%"});
		$(window).on("resize", () => {		
			$(".datatable-table th").css({"textAlign": "center"})
			$(".datatable-table th").eq(0).css({"width": "15%"});
			$(".datatable-table th").eq(1).css({"width": "15%"});
			$(".datatable-table th").eq(2).css({"width": "15%"});
			$(".datatable-table th").eq(3).css({"width": "15%"});
			$(".datatable-table th").eq(4).css({"width": "calc(30%/3)"});
			$(".datatable-table th").eq(5).css({"width": "calc(30%/3)"});
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