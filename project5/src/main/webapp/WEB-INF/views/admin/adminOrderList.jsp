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
											<th>배송입력</th>
											<th class="shortLine">삭제</th>
											
										</tr>
									</thead>
									<tbody>
										<c:forEach var="orderlist" items="${orderlist}">
											<tr>
												<td scope="row">${orderlist.orderNo}</td>
												<td><fmt:formatDate value="${orderlist.orderDate}" type="date"></fmt:formatDate></td>
												<td>${orderlist.orderDetailList[0].prodInfo.prodName}..외</td>
												<td>${orderlist.orderSum}</td>
												<td>${orderlist.orderSta}</td>
												<td>
													<!-- Large Modal -->
													
													<div class="btn btn-primary modalBtn" data-bs-target="#orderModal${orderlist.orderNo}">
														조회
													</div>

													<div class="modal fade userInfo" id="orderModal${orderlist.orderNo}" tabindex="-1">
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
																				<th>주문 순번</th>
																				<th>상품명</th>
																				<th>판매 금액</th>
																				<th>주문수량</th>
																			</tr>
																		</thead>
														                <tbody>
															            <c:forEach var="orderDetail" items="${orderlist.orderDetailList}">
																				<tr>
																					<td>${orderDetail.prodNo}</td>
																					<td>${orderDetail.orderListNo}</td>
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
																	<button type="button" class="btn btn-secondary"	data-bs-dismiss="modal" 
																	onclick="adminOrderDetailOpen(${orderlist.orderNo})">상세 내역</button>
																	<button type="button" class="btn btn-primary modalClose">닫기</button>
																</div>
															</div>
														</div>
													</div> <!-- End Large Modal-->
												</td>
												<td>
													<!-- Large Modal -->
												
													<div class="btn btn-primary modalBtn" data-bs-target="#orderModal${orderlist.orderNo}">
														운송장
													</div>

													<div class="modal fade userInfo" id="orderModal${orderlist.orderNo}" tabindex="-1">
														<div class="modal-dialog modal-lg">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title">배송 입력</h5>
																	<button type="button" class="btn-close"
																		data-bs-dismiss="modal" aria-label="Close"></button>
																</div>
																<div class="modal-body">
																	<!-- Bordered Table -->
														              <table class="table table-bordered">
														                <thead>
																			<tr>
																				<th>택배사</th>
																				<th>송장번호</th>																			
																			</tr>
																		</thead>
														                <tbody>
															            <tr>
															            <td>
															            <select name="deliveryCompany">
																			    <option value="우체국택배" selected>우체국택배</option>
																			    <option value="CJ대한통운">CJ대한통운</option>
																			    <option value="한진택배">한진택배</option>
																			    <option value="롯데택배">롯데택배</option>
																			    <option value="로젠택배">로젠택배</option>
																			    <option value="홈픽">홈픽</option>
																			</select>
															            </td>
															            <td><input type="text" name="deliInfo" id="deliInfo"></td>
																		</tr>
														                </tbody>
														              </table>
														              <!-- End Bordered Table -->
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-secondary"
																		data-bs-dismiss="modal" onclick="deliInfo(${orderlist.orderNo})">송장 입력</button>
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
																	<a href="adminProdDelete?prodNo=${orderlist.orderDetailList}">
																	<button type="button" class="btn btn-secondary"
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

	<script type="text/javascript">
    function deliInfo(orderNo) {
        var orderNo = orderNo;
        var deliInfo = document.querySelector('input[name=deliInfo]').value;
        

        // Ajax를 사용하여 서버에 값을 전송하고 업데이트
        $.ajax({
        	type: "GET",
            url: "deliInfo",  // 실제 엔드포인트 URL로 변경
            data: {
                orderNo: orderNo,
                deliInfo: deliInfo
            },
            success: function (data) {
                // 성공적으로 데이터를 받아왔을 때의 처리
                console.log(data);
                // 예: 받아온 데이터를 사용하여 동적으로 페이지 내용을 업데이트
                // 예: $("#someElement").html(data);
            },
            error: function (error) {
                // 요청이 실패했을 때의 처리
                console.error(error);
            }
        });
    }	
	</script>
	<script>
    function adminOrderDetailOpen(orderNo) {
        // 새 창을 열 URL 구성
        var url = "adminOrderDetail?orderNo=" + orderNo;

        // 새 창 열기
        window.open(url, "_blank", "width=800, height=600");
    }
	</script>
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