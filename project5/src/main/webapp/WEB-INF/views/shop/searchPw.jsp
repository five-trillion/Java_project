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
					<h2>비밀번호 찾기</h2>
				</div>
			</div>
		</div>
		<form method="post" action="login" id="frm" name="frm">
			<div class="col-lg-8 col-md-6">
				<div class="checkout__input">
					<label for="userId">아이디</label>
					<input type="text" id="userId" name="userId">
				</div>
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
			<div class="col-lg-8 col-md-6">
            	<div class="checkout__input">
            		<input type="submit" id="searchBtn" onclick="searchBtn()" value="확인">
            	</div>
           	</div>
	        
	   </form>
	</div>
	
	<%@ include file="../includes/footer.jsp" %>
	
<script type="text/javascript">
   
    
</script>

</body>
</html>