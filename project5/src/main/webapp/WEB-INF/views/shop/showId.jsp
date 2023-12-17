<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<%@ include file="../includes/src.jsp" %>
<style>
	.result-box {
		text-align:center;
		padding:100px;
	}
	.result-box p {
		font-size:20px;
	}
</style>
</head>
<body>
	<%@ include file="../includes/header.jsp"%>

	<div class="container">

		<div class="row">
			<div class="col-lg-12">
				<div class="contact__form__title">
					<h2>아이디 찾기</h2>
				</div>
			</div>
		</div>
		<div class="result-box">
			<c:choose>
				<c:when test="${not empty userId}">
					<p>회원님의 정보로 가입된 아이디가 n개 있습니다.<p>
		        	<p>${userId}</p>  	
				</c:when>
		        <c:otherwise>
		        	<p>조회결과가 없습니다.</p>
		       	</c:otherwise>
			</c:choose>
		</div>
	</div>
	
	<%@ include file="../includes/footer.jsp" %>

</body>
</html>