<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<%@ include file="./includes/headAdmin.jsp"%>
<body>
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
						<div class="row mb-3">
		                  <label for="boardTitle" class="col-sm-2 col-form-label">제 목</label>
		                  <div class="col-sm-10">
		                    <input type="text" class="form-control" id="boardTitle" name="boardTitle" value="${board.boardContent}" readonly>
		                  </div>
		                </div>
						<div class="row mb-3">
		                  <label for="boardContent" class="col-sm-2 col-form-label">내 용</label>
		                  <div class="col-sm-10">
		                    <textarea rows="10" class="form-control" id="boardContent" name="boardContent" readonly>${board.boardContent}</textarea>
		                  </div>
		                </div>

					</div>
				</div>
			</section>

		</main>
		<!-- End #main -->
	<%@ include file="./includes/footerAdmin.jsp"%>
</body>
</html>