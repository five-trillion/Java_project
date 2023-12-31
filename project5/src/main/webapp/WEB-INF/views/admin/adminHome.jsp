<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
	<%@ include file="./includes/headAdmin.jsp" %>
<body>
<div id="container">
	<%@ include file="./includes/headerAdmin.jsp" %>
	
	<%@ include file="./includes/sideAdmin.jsp" %>
	<main id="main" class="main adminHome">

		<div class="pagetitle">
			<h1>홈</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">홈</a></li>
					<li class="breadcrumb-item active">홈</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">

				<!-- Left side columns -->
				<div class="col-lg-8">
					<div class="row">

						<!-- 오늘 매출 -->
						<div class="col-xxl-4 col-md-6 topBox">
							<div class="card info-card sales-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										오늘 주문량
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart"></i>
										</div>
										<div class="ps-3">
											<h6>${sales.salesAmount}</h6>
											<!-- <span class="text-success small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">increase</span> -->

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End 오늘 매출 -->

						<!-- 오늘 주문량 -->
						<div class="col-xxl-4 col-md-6 topBox">
							<div class="card info-card revenue-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										오늘의 매출
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-currency-dollar"></i>
										</div>
										<div class="ps-3">
											<h6>&#8361;${sales.salesPrice}</h6>
											<!-- <span class="text-success small pt-1 fw-bold">8%</span> <span
												class="text-muted small pt-2 ps-1">increase</span> -->

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End 오늘 주문량 -->
						
						<!-- 오늘 가입자 -->
						<div class="col-xxl-4 col-xl-12 topBox">

							<div class="card info-card customers-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										오늘 가입자
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">
											<h6>${join.salesAmount}</h6>
											<!-- <span class="text-danger small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">decrease</span> -->

										</div>
									</div>

								</div>
							</div>
							
							

						</div>
						<!-- End 오늘 가입자 -->
						
						<!-- End Customers Card -->

						<!-- 매출 그래프 -->
						<!-- <div class="col-12">
							<div class="card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										매출 그래
									</h5>

									Line Chart
									<div id="reportsChart"></div>

									<script>
                    document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: 'Sales',
                          data: [31, 40, 28, 51, 42, 82, 56],
                        }, {
                          name: 'Revenue',
                          data: [11, 32, 45, 32, 34, 52, 41]
                        }, {
                          name: 'Customers',
                          data: [15, 11, 32, 18, 9, 24, 11]
                        }],
                        chart: {
                          height: 280,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 2
                        },
                        xaxis: {
                          type: 'datetime',
                          categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                        },
                        tooltip: {
                          x: {
                            format: 'dd/MM/yy HH:mm'
                          },
                        }
                      }).render();
                    });
                  </script>
									End Line Chart

								</div>

							</div>
						</div> -->
						<!-- End 매출 그래프 -->

						<!-- 상품 판매 순위 -->
						<div class="col-12 bottomBox">
							<div class="card top-selling overflow-auto">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body pb-0">
									<h5 class="card-title">
										상품 순위
									</h5>

									<table class="table table-borderless">
										<thead>
											<tr>
												<th scope="col">#</th>
												<th scope="col">상품명</th>
												<th scope="col">판매량</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="prod" items="${prodRanking}" varStatus="status">
												<tr>
													<th scope="row">${status.index+1}</th>
													<td><a href="#" class="text-primary fw-bold">${prod.prodName}</a></td>
													<td class="fw-bold">${prod.salesAmount}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>

								</div>

							</div>
						</div>
						<!-- End 상품 판매 순위 -->

						<!-- 게시판 순위 -->
						<div class="col-12 bottomBox">
							<div class="card top-selling overflow-auto">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body pb-0">
									<h5 class="card-title">
										게시판 글 순위
									</h5>

									<table class="table table-borderless">
										<thead>
											<tr>
												<th scope="col">#</th>
												<th scope="col">게시판 분류</th>
												<th scope="col">제목</th>
												<th scope="col">조회수</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="board" items="${boardRanking}" varStatus="status">
												<tr>
													<th scope="row">${status.index+1}</th>
													<td>
														<c:if test="${board.boardClass == 1}">공지게시판</c:if>
														<c:if test="${board.boardClass == 2}">질의게시판</c:if>
														<c:if test="${board.boardClass == 3}">자유게시판</c:if>
													</td>
													<td><a href="#" class="text-primary fw-bold">${board.boardTitle}</a></td>
													<td class="fw-bold">${board.boardCnt}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>

								</div>

							</div>
						</div>
						<!-- End 게시판 순위 -->

					</div>
				</div>
				<!-- End Left side columns -->

			<!-- End Right side columns -->
			</div>
		</section>

	</main>
	<!-- End #main -->
</div>
	<%@ include file="./includes/footerAdmin.jsp" %>
	<script>
		$(".topBox").css({"width": "33.333333%"});
	</script>
</body>
</html>