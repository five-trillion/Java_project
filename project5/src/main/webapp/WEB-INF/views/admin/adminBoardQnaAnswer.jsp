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
				<h1>답변하기</h1>
			</div>
			
		</main>
		<!-- End #main -->
	</div>
	<%@ include file="./includes/footerAdmin.jsp"%>
	
	<script>
		$(".larger").css({"fontSize" : "24px"})
		$(".table-bordered").css({"textAlign": "center"})
		$(".datatable-table").css({"textAlign": "center"})
		$(".datatable-table th").css({"textAlign": "center"})
		$(".datatable-table th").eq(0).css({"width": "calc(60%/6)"});
		$(".datatable-table th").eq(1).css({"width": "20%"});
		$(".datatable-table th").eq(2).css({"width": "20%"});
		$(".datatable-table th").eq(3).css({"width": "calc(60%/6)"});
		$(".datatable-table th").eq(4).css({"width": "calc(60%/6)"});
		$(".datatable-table th").eq(5).css({"width": "calc(60%/6)"});
		$(".datatable-table th").eq(6).css({"width": "calc(60%/6"});
		$(".datatable-table th").eq(7).css({"width": "calc(60%/6)"});
		$(window).on("resize", () => {		
			$(".datatable-table th").css({"textAlign": "center"})
			$(".datatable-table th").eq(0).css({"width": "calc(60%/6)"});
			$(".datatable-table th").eq(1).css({"width": "20%"});
			$(".datatable-table th").eq(2).css({"width": "20%"});
			$(".datatable-table th").eq(3).css({"width": "calc(60%/6)"});
			$(".datatable-table th").eq(4).css({"width": "calc(60%/6)"});
			$(".datatable-table th").eq(5).css({"width": "calc(60%/6)"});
			$(".datatable-table th").eq(6).css({"width": "calc(60%/6"});
			$(".datatable-table th").eq(7).css({"width": "calc(60%/6)"});
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