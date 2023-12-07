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

			<div class="pagetitle" style="margin-bottom: 3rem;">
				<h1>답변하기</h1>
			</div>
			<section class="section">
				<div class="row">
					<div class="col-lg-12 top">

						<div class="card half">
							<div class="card-body">
								<h5 class="card-title">
									<strong>질문</strong>
								</h5>

								<div class="row g-3">
									<!-- Vertical Form -->
									<div class="col-12">
										<label for="inputNanme4" class="form-label">제 목</label>
										<input type="text" class="form-control" value="${question.boardTitle}" readonly>
									</div>
									<div class="col-12">
										<label for="inputEmail4" class="form-label">내 용</label>
										<textarea rows="20" class="form-control" readonly>${question.boardContent}</textarea>
									</div>
								</div>
								<!-- Vertical Form -->

							</div>
						</div>

						<div class="card half">
							<div class="card-body">
								<h5 class="card-title">
									<strong>답변</strong>
								</h5>

								<!-- Vertical Form -->
								<form name="answer" method="post" class="row g-3">
									<input type="hidden" id="boardNo" name="boardNo" value="${question.boardNo}">
									<div class="col-12">
										<label for="inputNanme4" class="form-label">제 목</label> <input
											type="text" class="form-control" name="ansTitle"
											id="ansTitle">
									</div>
									<div class="col-12">
										<label for="inputEmail4" class="form-label">내 용</label>
										<textarea rows="20" class="form-control" name="ansContent"
											id="ansContent"></textarea>
									</div>
									<div class="text-center">
										<button type="submit" class="btn btn-primary">답변제출</button>
										<button type="reset" class="btn btn-secondary">초기화</button>
									</div>
								</form>
								<!-- Vertical Form -->
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
		$(".top").css({
			"display" : "flex",
			"gap" : "20px"

		})
		$(".half").css({
			"width" : "50%",
		});
		function answerCheck() {
			document.answer.ansTitle
		}
	</script>
</body>
</html>