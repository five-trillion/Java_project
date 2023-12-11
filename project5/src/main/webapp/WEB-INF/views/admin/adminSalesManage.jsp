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
											<th class="longLine">기간</th>
											<th class="longLine">판매량</th>
											<th class="longLine">판매건수</th>
											<th class="longLine">판매 금액(원)</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="sales" items="${sales}">
											<tr>
												<th scope="row"><fmt:formatDate value="${sales.salesDate}" type="date" /></th>
												<td>${sales.salesAmount}</td>
												<td>${sales.salesVolume}</td>
												<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${sales.salesPrice}" /></td>
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
		$(window).on("resize", () => {		
			$(".datatable-table th").css({"textAlign": "center"})
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