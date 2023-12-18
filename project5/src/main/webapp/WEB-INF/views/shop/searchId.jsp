<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<%@ include file="../includes/src.jsp" %>
 
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
		<form method="post" action="/shop/searchId" id="frm" name="frm">
			<div>
				<input type="radio" name="searchType" id="radioEmail" value="email" onclick="showEmailInput()" checked>이메일로 찾기
				<input type="radio" name="searchType" id="radioPhone" value="phone" onclick="showPhoneInput()">휴대전화로 찾기  
			</div>
			<div class="col-lg-8 col-md-6">
				<div class="checkout__input">
					<label for="userName">이름</label>
					<input type="text" id="userName" name="userName">
				</div>
			</div>
			<div class="col-lg-8 col-md-6" id="emailInput">
				<div class="checkout__input">
					<label for="email">이메일</label>
					<input type="text" id="email" name="email">
				</div>
			</div>
			<div class="col-lg-8 col-md-6" id="phoneInput" style="display: none;">
				<div class="checkout__input" >
					<label for="phone" id="phone">휴대폰</label>
					<input type="text" id="phone" name="phone">
				</div>
			</div>
            <div class="col-lg-8 col-md-6">
            	<div class="checkout__input">
            		<input type="submit" id="searchBtn" onclick="return searchCk()" value="확인">
            	</div>
           	</div>
	    </form>
	</div>
	
	<%@ include file="../includes/footer.jsp" %>
	
<script type="text/javascript">

	function showEmailInput() {
		document.getElementById("emailInput").style.display = "block";
	    document.getElementById("phoneInput").style.display = "none";
	}
	
	function showPhoneInput() {
		document.getElementById("emailInput").style.display = "none";
	    document.getElementById("phoneInput").style.display = "block";
	} 
    	
</script>

</body>
</html>