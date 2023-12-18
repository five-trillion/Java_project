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
				<h1>주문 관리</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">주문 목록</a></li>
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
											<th class="longLine">주문 번호</th>
											<th class="longLine">주 문 일</th>
											<th class="longLine">상 품 명</th>
											<th class="longLine">주문 합계</th>
											<th class="shortLine">주문 상태</th>
											<th class="shortLine">조회</th>
											<th class="shortLine">삭제</th>
											
										</tr>
									</thead>
									<tbody>
										<c:forEach var="orderList" items="${orderList}">
											<tr>
												<td scope="row">${orderList.orderNo}</td>
												<td><fmt:formatDate value="${orderList.orderDate}" type="date"></fmt:formatDate></td>
												<td>${orderList.prodInfo.prodName}..외</td>
												<td>${orderList.orderSum}</td>
												<td>${orderList.orderSta}</td>
												<td>
													<!-- Large Modal -->
													<div class="btn btn-primary modalBtn" data-bs-toggle="modal" data-bs-target="#orderModal${orderList.orderNo}">
														조회
													</div>

													<!-- Order Detail Modal -->
													<div class="modal fade userInfo" id="orderModal${orderList.orderNo}" tabindex="-1">
														<div class="modal-dialog modal-lg">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title">주문 상세</h5>
																	<button type="button" class="btn-close"
																		data-bs-dismiss="modal" aria-label="Close"></button>
																</div>
																<div class="modal-body">
																	<!-- Bordered Table -->
																	<table class="table table-bordered">
																		<thead>
																			<tr>
																				<th>상품코드</th>
																				<th>상품명</th>
																				<th>판매금액</th>
																				<th>주문수량</th>
																			</tr>
																		</thead>
																		<tbody>
																			<c:forEach var="orderDetail" items="${orderList.orderDetailList}">
																				<tr>
																					<td>${orderDetail.prodNo}</td>
																					<td>${orderDetail.prodInfo.prodName}</td>
																					<td>${orderDetail.prodInfo.salePrice}</td>
																					<td>${orderDetail.orderCnt}</td>
																				</tr>
																			</c:forEach>
																		</tbody>
																	</table>
																	<!-- End Bordered Table -->
																</div>
																<div class="modal-footer">
																	<a href="adminOrderDetail?orderNo=${orderList.orderNo}">
																		<button type="button" class="btn btn-secondary"
																			data-bs-dismiss="modal">상세 내역</button>
																	</a>
																	<button type="button" class="btn btn-primary modalClose">닫기</button>
																</div>
															</div>
														</div>
													</div> <!-- End Large Modal-->
												</td>
												<td>
													<!-- Large Modal -->
													<div class="btn btn-primary modalBtn" data-bs-toggle="modal" data-bs-target="#deleteModal${orderList.orderNo}">
														삭제
													</div>

													<!-- Delete Modal -->
													<div class="modal fade" id="deleteModal${orderList.orderNo}" tabindex="-1">
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
																	<a href="adminProdDelete?prodNo=${prodList.prodNo}">
																		<button type="button" class="btn btn-secondary"
																			data-bs-dismiss="modal">삭제</button>
																	</a>
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

