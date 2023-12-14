<%@page import="java.util.Date"%>
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
								<div class="card-top" style="display: flex; justify-content: space-between">
									<h5 class="card-title">조회</h5>
									<div class="period" style="display: flex; align-items: center; gap: 10px;">
										<h5 class="card-title"  style="display: inline-block;">기간</h5>
											<c:choose>
												<c:when test="${!empty startDate}">
													<input type="date" name="startDate" id="startDate" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${startDate}" type="date" />" class="form-control dateInput" style="width: auto; cursor:pointer">
												</c:when>
												<c:otherwise>
													<input type="date" name="startDate" id="startDate" class="form-control dateInput" style="width: auto; cursor:pointer">
												</c:otherwise>
											</c:choose>
												
										<h5 class="card-title"  style="display: inline-block;">~</h5>
											<c:choose>
												<c:when test="${!empty endDate}">
													<input type="date" name="endDate" id="endDate" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${endDate}" type="date" />" class="form-control dateInput" style="width: auto; cursor:pointer">
												</c:when>
												<c:otherwise>
													<input type="date" name="endDate" id="endDate" class="form-control dateInput" style="width: auto; cursor:pointer">
												</c:otherwise>
											</c:choose>
										<a class="btn btn-primary" href="adminSalesManage">조회</a>
									</div>
								</div>
								<!-- Table with stripped rows -->
								<table class="table datatable datas">
									<thead>
										<tr class="imsi">
											<th class="longLine">기간</th>
											<th class="longLine">판매량</th>
											<th class="longLine">판매건수</th>
											<th class="longLine">판매 금액(원)</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="sales" items="${sales}" varStatus="status">
										<c:if test="${status.first}"><c:set var="firstDate" value="${sales.salesDate}"></c:set></c:if>
										<c:if test="${status.last}"><c:set var="lastDate" value="${sales.salesDate}"></c:set></c:if>
										<c:choose>
											<c:when test="${empty startDate && empty endDate}">
												<tr>
													<th scope="row"><fmt:formatDate value="${sales.salesDate}" type="date" /></th>
													<td>${sales.salesAmount}</td><c:set var="amountSum" value="${amountSum + sales.salesAmount}" />
													<td>${sales.salesVolume}</td><c:set var="volumeSum" value="${volumeSum + sales.salesVolume}" />
													<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${sales.salesPrice}" /></td><c:set var="priceSum" value="${priceSum + sales.salesPrice}" />
												</tr>
											</c:when>
											<c:when test="${!empty startDate && empty endDate}">
												<c:if test="${startDate <= sales.salesDate}">
													<tr>
														<th scope="row"><fmt:formatDate value="${sales.salesDate}" type="date" /></th>
														<td>${sales.salesAmount}</td><c:set var="amountSum" value="${amountSum + sales.salesAmount}" />
														<td>${sales.salesVolume}</td><c:set var="volumeSum" value="${volumeSum + sales.salesVolume}" />
														<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${sales.salesPrice}" /></td><c:set var="priceSum" value="${priceSum + sales.salesPrice}" />
													</tr>
												</c:if>
											</c:when>
											<c:when test="${empty startDate && !empty endDate}">
												<c:if test="${sales.salesDate <= endDate}">
													<tr>
														<th scope="row"><fmt:formatDate value="${sales.salesDate}" type="date" /></th>
														<td>${sales.salesAmount}</td><c:set var="amountSum" value="${amountSum + sales.salesAmount}" />
														<td>${sales.salesVolume}</td><c:set var="volumeSum" value="${volumeSum + sales.salesVolume}" />
														<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${sales.salesPrice}" /></td><c:set var="priceSum" value="${priceSum + sales.salesPrice}" />
													</tr>
												</c:if>
											</c:when>
											<c:otherwise>
												<c:if test="${startDate <= sales.salesDate && sales.salesDate <= endDate}">
													<tr>
														<th scope="row"><fmt:formatDate value="${sales.salesDate}" type="date" /></th>
														<td>${sales.salesAmount}</td><c:set var="amountSum" value="${amountSum + sales.salesAmount}" />
														<td>${sales.salesVolume}</td><c:set var="volumeSum" value="${volumeSum + sales.salesVolume}" />
														<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${sales.salesPrice}" /></td><c:set var="priceSum" value="${priceSum + sales.salesPrice}" />
													</tr>
												</c:if>
											</c:otherwise>
										</c:choose>
										</c:forEach>
									</tbody>
								</table>
								<!-- End Table with stripped rows -->
								
								<h5 class="card-title">합산</h5>
								<table class="table table-bordered border-primary salesSum">
                <thead>
                  <tr>
                    <th scope="col">기간</th>
                    <th scope="col">판매량</th>
                    <th scope="col">판매건수</th>
                    <th scope="col">판매금액</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td scope="row" style="white-space: nowrap;">
                    	<c:choose>
                    		<c:when test="${empty startDate && empty endDate}">
                    			<fmt:formatDate value="${firstDate}" type="date" /> ~
                  				<fmt:formatDate value="${lastDate}" type="date" />
                    		</c:when>
                    		<c:otherwise>
                    			<fmt:formatDate value="${startDate}" type="date" /> ~
                  				<fmt:formatDate value="${endDate}" type="date" />
                    		</c:otherwise>
                    	</c:choose>
                    	
                    </td>
                    <td>${amountSum}</td>
                    <td>${volumeSum}</td>
                    <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${priceSum}" /></td>
                  </tr>
                </tbody>
              </table>
              <!-- End Primary Color Bordered Table -->
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
		let startDate = document.querySelector("#startDate").value;
		let endDate = document.querySelector("#endDate").value;
		$(".period a.btn").attr("href", "adminSalesManage?startDate="+startDate+"&endDate="+endDate);
		$(".dateInput").on("change", (e)=> {
			startDate = document.querySelector("#startDate").value;
			endDate = document.querySelector("#endDate").value;
		$(".period a.btn").attr("href", "adminSalesManage?startDate="+startDate+"&endDate="+endDate);
		})
		
		/* style */
		$(".salesSum th").css({"width": "25%"});
		$(".table-bordered").css({"textAlign": "center"});
		$(".datatable-table").css({"textAlign": "center"});
		$(".datatable-table th").css({"textAlign": "center"});
		$(window).on("resize", () => {		
			$(".datatable-table th").css({"textAlign": "center"});
		});
		$(".modalBtn").on("click", (e) => {
			e.preventDefault();
			$(e.target).next().modal("show");
		});
		
		$(".modalClose").on("click", (e) => {
			$(e.target).parents(".modal").modal("hide");
		});
		
	</script>
</body>
</html>