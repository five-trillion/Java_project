<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반려견 정보</title>

<style>
.addpet {
	text-align: center;
	margin: 20px;
}

.addpet img {
	width: 60px;
	height: 60px;
	display: inline-block;
}

.pet {
	margin: 30px auto;
}

.petForm {
	width: 100%;
	display: flex;
	align-items: center;
}

.pet input[type=text] {
	font-weight: bold;
	color: black;
}

.petForm .checkout__input {
	display: flex;
	width: 30%;
	align-items: center;
	margin-bottom: 10px;
}

.petForm .checkout__input:last-child {
	width: 10%;
}

.petForm .checkout__input input {
	width: 80%;
	margin: 0;
}

.petForm .checkout__input p {
	padding: 0;
	margin: 0 10px 0 0;
}

.checkout__input input[type=submit] {
	width: 50%;
	margin: 0 auto;
	padding: 0;

}
.petSubmit input[type=submit] {
	margin: 0 auto;
	display: none;
}
.petSubmit input[type=submit].view {
	display: inline-block;
}

.petSubmit .petForm .checkout__input {
	width: 33.333333%;
}
.petSubmit .petForm .checkout__input:last-child {
	width: 33.333333%;
}
</style>
<%@ include file="../includes/src.jsp"%>

</head>

<body>

	<%@ include file="../includes/header.jsp"%>

	<div class="container">
		<h2 style="text-align: center; font-weight: bold;">반려견 정보</h2>
		<br>
		<p style="text-align: center;">반려견의 정보를 입력해주세요. 이벤트와 사은품 증정에
			이용됩니다.</p>
		<c:forEach var="pet" items="${petList}">
			<div id="frm" class="pet">
				<div class="col-lg-12 petForm">
					<div class="checkout__input">
						<p>이름</p>
						<input type="text" name="petName" value="${pet.petName}"
							placeholder="반려견의 이름을 입력해주세요." readonly>
					</div>
					<div class="checkout__input">
						<p>견종</p>
						<input type="text" name="petKind" value="${pet.petKind}"
							placeholder="반려견의 견종을 입력해주세요." readonly>
					</div>
					<div class="checkout__input">
						<p>나이</p>
						<input type="text" name="petAge" value="${pet.petAge}"
							placeholder="반려견의 나이를 입력해주세요." readonly>
					</div>
					<input type="hidden" name="petNo" value="${pet.petNo}">
					<div class="checkout__input">
						<input type="submit" value="삭제">
					</div>
				</div>
			</div>
		</c:forEach>
		<div class="addpet">
			<div id="form-container" class="form-container">
				<button onclick="addForm()" class="btnSubmitFix sizeS"
					style="font-size: 15px; border-radius: 45px">추가</button>
			</div>

		</div>

		<form class="petSubmit" method="post">
			<div class="petSubmitForm">
			
			</div>
			<input type="hidden" name="formIndex" id="formIndex" value="0">
			<div class="checkout__input" style="text-align: center;">
				<input type="submit" value="제출">
			</div>
		</form>
	</div>

	<%@ include file="../includes/footer.jsp"%>

	<script>
	let formIndex = 0;
	function addForm() {
		
        const formContainer = document.querySelector('.petSubmitForm');
        const formDiv = document.createElement("div");
					formDiv.innerHTML = `<br>
						<div class="col-lg-12 petForm">
							<div class="checkout__input">
								<p>이름</p>
								<input type="text" name="petName`+formIndex+`" placeholder="반려견의 이름을 입력해주세요.">
							</div>
							<div class="checkout__input">
								<p>견종</p>
								<input type="text" name="petKind`+formIndex+`"placeholder="반려견의 견종을 입력해주세요.">
							</div>
							<div class="checkout__input">
								<p>나이</p>
								<input type="text" name="petAge`+formIndex+`" placeholder="반려견의 나이를 입력해주세요.">
							</div>
						</div>
        `;
  
        formContainer.appendChild(formDiv);
        $("#formIndex").val(formIndex);
	}
	function submitForm(index) {
	    const name = document.getElementById(`name-${index}`).value;
	    const kind = document.getElementById(`kind-${index}`).value;
	    const age = document.getElementById(`age-${index}`).value;

	    // 서버로 데이터 전송
	    const formData = new FormData();
	    formData.append('petName', name);
	    formData.append('petKind', type);
	    formData.append('petAge', age);
	    
        // 이후에 폼을 삭제하거나 원하는 동작을 수행할 수 있습니다.
        const formContainer = document.getElementById('form-container');
        const formToRemove = document.getElementById(`form-${index}`);
        formContainer.removeChild(formToRemove);
    }
	
	$(".btnSubmitFix").on("click",() => {
		$(".petSubmit input[type=submit]").css({"display": "inline-block", "margin-top": "30px"});
	})
</script>

</body>
</html>

