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
				<h1>상품 관리</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">상품 목록</a></li>
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
								<h5 class="card-title">목록</h5>

								<!-- Table with stripped rows -->
								<table class="table datatable">
									<thead>
										<tr class="imsi">
											<th class="longLine">상품 코드</th>
											<th class="longLine">상품 이미지(메인)</th>
											<th class="longLine">상품 명</th>
											<th class="longLine">등록일</th>
											<th class="shortLine">판매가</th>
											<th class="shortLine">조회</th>
											<th class="shortLine">강퇴</th>
											
										</tr>
									</thead>
									<tbody>
										<c:forEach var="prodList" items="${prodList}">
											<tr>
												<td scope="row">${prodList.prodNo}</td>
												<td>
												<img alt="상품 메인 이미지" src="${contextPath}/resources/upload/product/main/${prodList.prodMainImg}" style="width: 100px;">
												</td><!-- 상품 이미지용 -->
												<td>${prodList.prodName}</td>
												<td><fmt:formatDate value="${prodList.prodReg}" type="date"></fmt:formatDate></td>
												<td>${prodList.salePrice}</td>
												<td>
													<!-- Large Modal -->
													<div class="btn btn-primary modalBtn">
														돋보기</div>

													<div class="modal fade userInfo" tabindex="-1">
														<div class="modal-dialog modal-lg">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title">상품 정보</h5>
																	<button type="button" class="btn-close"
																		data-bs-dismiss="modal" aria-label="Close"></button>
																</div>
																<div class="modal-body">
																	<!-- Bordered Table -->
														              <table class="table table-bordered">
														                <tbody>
															                  <tr>
																				<th>상품 코드</th>
																				<td colspan="3">${prodList.prodNo}</td>
																			</tr>	
																			<tr>	
																				<th>상품명</th>
																				<td colspan="3">${prodList.prodName}</td>
																			</tr>
																			<tr>
																				<th>브랜드</th>
																				<td>${prodList.brand}</td>
																				<th>카테고리</th>
																				<td>${prodList.category}</td>
																			</tr>
																			<tr>
																				<th>공시가</th>
																				<td>${prodList.netPrice}</td>
																				<th>판매가</th>
																				<td>${prodList.salePrice}</td>
																			</tr>
																			<tr>
																				<th>상품 설명</th>
																				<td colspan="3">${prodList.prodInfo}</td>
																			</tr>
																			<tr>
																				<th>등록일</th>
																				<td><fmt:formatDate value="${prodList.prodReg}"
																						type="date"></fmt:formatDate></td>
																				<th>수정일</th>
																				<td><fmt:formatDate value="${prodList.prodUpdate}"
																						type="date"></fmt:formatDate></td>
																			</tr>
																		
														                </tbody>
														              </table>
														              <!-- End Bordered Table -->
																</div>
																<div class="modal-footer">
																	<a href="adminProdUpdateForm?prodNo=${prodList.prodNo}"><button type="button" class="btn btn-secondary"
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
																	<a href="adminProdDelete?prodNo=${prodList.prodNo}"><button type="button" class="btn btn-secondary"
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