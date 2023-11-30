<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
 	<!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${contextPath}/resources/shop/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/shop/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/shop/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/shop/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/shop/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/shop/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/shop/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/shop/css/style.css" type="text/css">
    <style>
    	.login_warn {
    		margin : 10px 0;
    		text-align : center;
    		color : red;
    	}
    </style>
</head>
<body>
	<%@ include file="../includes/header.jsp" %>
	
	<div class="container">
	    <div class="row">
	        <div class="col-lg-12">
	            <div class="contact__form__title">
	                <h2>로그인</h2>
	            </div>
	        </div>
	    </div>
	    <form method="post" action="login" id="frm" name="frm">
	    	<div class="col-lg-8 col-md-6">
            	<div class="checkout__input">
                	<input type="text" name="userId" placeholder="아이디">
                </div>
                <div class="checkout__input">
                	<input type="password" name="userPw" placeholder="비밀번호">
				</div>
                <input type="checkbox" id="saveId"> 아이디 저장
                <c:if test = "${result == 0}">
                	<div class="login_warn"> 아이디 혹은 비밀번호를 잘못 입력하셨습니다.</div>
                </c:if>
	            <div class="col-lg-8 col-md-6">
	            	<div class="checkout__input">
	            		<input type="submit" value="로그인">
	            	</div>
	           	</div>
	        </div>
	        <div class="checkout__input"><a href="/shop/join">회원가입</a></div> 	
	        <div class="checkout__input"><a href="#">아이디/비밀번호 찾기</a></div> 
	        
	    </form>
	</div>
	
	<%@ include file="../includes/footer.jsp" %>
</body>
</html>