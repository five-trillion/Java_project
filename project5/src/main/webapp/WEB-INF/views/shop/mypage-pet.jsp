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
         		<div id="form-container" class="form-container">
          			<button onclick="addForm()" class="btnSubmitFix sizeS" style="font-size:15px; border-radius:45px">추가</button>
          		</div>
          	          
          	</div>
         </div>      	
               	
             <%-- 	<form action="mypage-pet" method="post" name="frm" id="frm">
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
               	</form> --%>
           	
       	
       
  	<%@ include file="../includes/footer.jsp" %>
  	
<script>
	let formIndex = 0;
	function addForm() {
        formIndex++;

        const formContainer = document.getElementById('form-container');

        const formDiv = document.createElement('div');
        formDiv.innerHTML = `<br>
        	<form id="form-${formIndex}" action="mypage-pet" method="post" onsubmit="submitForm(${formIndex});">
                <label for="name-${formIndex}">이름:</label>
                <input type="text" id="name-${formIndex}" required>
                <label for="type-${formIndex}">종류:</label>
                <input type="text" id="type-${formIndex}" required>
                <label for="age-${formIndex}">나이:</label>
                <input type="text" id="age-${formIndex}" required>
                <button type="submit">확인</button>
            </form>
        `;

        formContainer.appendChild(formDiv);
    }
	
	function submitForm(index) {
        const name = document.getElementById(`name-${index}`).value;
        const type = document.getElementById(`type-${index}`).value;
        const age = document.getElementById(`age-${index}`).value;

        // 여기에서 서버로 데이터를 전송하거나, 로컬 스토리지에 저장하거나 원하는 작업을 수행할 수 있습니다.
        console.log(`이름: ${name}, 종류: ${type}, 나이: ${age}`);

        // 이후에 폼을 삭제하거나 원하는 동작을 수행할 수 있습니다.
        const formContainer = document.getElementById('form-container');
        const formToRemove = document.getElementById(`form-${index}`);
        formContainer.removeChild(formToRemove);
    }
</script>
 	
</body>
</html>

