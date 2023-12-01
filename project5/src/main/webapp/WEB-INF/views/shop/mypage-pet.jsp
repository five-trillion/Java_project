<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반려견 정보</title>
 	
<style type="text/css">
	.addpet {
		text-align:center;
		margin:20px;
	}
	.addpet img {
		width:60px;
		height:60px;
		display:inline-block;
	}
</style>
<%@ include file="../includes/src.jsp" %>

</head>

<body>
   
	<%@ include file="../includes/header.jsp" %>
	
		 <div class="container">
         	<h2 style="text-align:center; font-weight:bold;">반려견 정보</h2><br>
         	<p style="text-align:center;">반려견의 정보를 입력해주세요. 이벤트와 사은품 증정에 이용됩니다.</p>
         	<div class="addpet">
          		<a href=#><img id="showFormBtn" src="${contextPath}/resources/shop/img/plusmark.jpg"></a>
          		<div id="infoForm" class="hidden">
          			<div>
	                	<p>이름</p>
	                    <input type="text" name="petName" placeholder="반려견의 이름을 입력해주세요.">
	                </div>
	                <div>
                        <p>견종</p>
                        <input type="text" name="petKind" placeholder="반려견의 견종을 입력해주세요.">
                    </div>
                    <div>
                        <p>나이</p>
                        <input type="text" name="petAge" placeholder="반려견의 나이를 입력해주세요.">
                    </div>
				    <button id="submitBtn">확인</button>
          		</div>
          		<div id="displayInfo"></div>
          	</div>
         </div>      	
               	
             	<form action="mypage-pet" method="post" name="frm" id="frm">
                	<div class="col-lg-8 col-md-6">
	                   <div class="checkout__input">
	                        <p>이름</p>
	                        <input type="text" name="petName" placeholder="반려견의 이름을 입력해주세요.">
	                	</div>
	                    <div class="checkout__input">
	                        <p>견종</p>
	                        <input type="text" name="petKind" placeholder="반려견의 견종을 입력해주세요.">
	                    </div>
	                    <div class="checkout__input">
	                        <p>나이</p>
	                        <input type="text" name="petAge" placeholder="반려견의 나이를 입력해주세요.">
	                    </div>
	                    <input type="hidden" name="userId" value="${user.userNo}">
	                  <div class="checkout__input">
	                  		<input type="submit" value ="제출" >
	                  	</div>  
	                </div>
               	</form>
           	
       	
       
  	<%@ include file="../includes/footer.jsp" %>
  	
</body>
</html>

