<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review</title>
<%@ include file="../includes/src.jsp"%>
	<style>
	.boardbtn button {
		width : 100px;
		height: 50px;
	}
	
	#myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
	}
	#myform fieldset legend{
	    text-align: right;
	}
	#myform input[type=radio]{
	    display: none;
	}
	#myform label{
	    font-size: 3em;
	    color: transparent;
	    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#myform label:hover{
	    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#myform label:hover ~ label{
	    text-shadow: 0 0 0 #f0f0f0;
	}
	#myform input[type=radio]:checked ~ label{
	    text-shadow: 0 0 0 #f0f0f0;
	}
	#myform input[type=radio]:last-of-type:checked ~ label{
	    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#reviewContents {
    width: 100%;
    height: 150px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 1.5px #D3D3D3;
    border-radius: 5px;
    font-size: 16px;
    resize: none;
	}
	</style>
</head>

<body>

	<%@ include file="../includes/header.jsp" %>
	
	<div id="contents">
		<div class="page_wrap" style="margin: 0 auto 200px auto;">
			<div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
				<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
					<div class="page_title fs60">
						<font color="#555555">Review</font>
					</div>
				</div>
				<form method="post" id="frm" name="frm" action="/board/reviewWrite" enctype="multipart/form-data">  
					
					<div class="n_board line typeList gBorder">
						<table border="1" summary="">
							<caption>상품 정보</caption>
							<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
								<tr style="">
									<td>
										<div class="writer_date fs12"></div>
										<div class="subject left fs12">상품</div>
									</td>
								</tr>
							</thead>
							<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
								<tr style="background-color: #FFFFFF; color: #555555;"
									class="xans-record-">
									<td>
										<input type="hidden" id="prodNo" name="prodNo" value="${prod.prodNo}">
										<div class="writer_date fs13">
											<img src="${contextPath}/resources/upload/product/main/${prod.prodMainImg}" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="">
										</div>
										<div class="subject left fs13">
                        					<div class="product left top">
                            					<strong class="name fs14">${prod.prodName}</strong>
                        					</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<div class="n_board line typeList gBorder">
						<table>
							<caption>게시판 목록</caption>
							<tr>
								<td>
									<div class="chk fs13">평점</div>
										<fieldset class="mb-3" name="myform" id="myform">
											<span class="text-bold">별점을 선택해주세요</span>
											<label for="rate1" style="margin: 0 15px 0 5px;">★</label>
											<input type="radio" name="rating" value="1" id="rate1">
											<label for="rate2">★</label>
											<input type="radio" name="rating" value="2" id="rate2">
											<label for="rate3">★</label>
											<input type="radio" name="rating" value="3" id="rate3">
											<label for="rate4">★</label>
											<input type="radio" name="rating" value="4" id="rate4">
											<label for="rate5">★</label>
											<input type="radio" name="rating" value="5" id="rate5">
										</fieldset>
								</td>
							</tr>
							<tr>
								<td>
									<input type="hidden" id="userNo" name="userNo" value="${user.userNo}">
									<div class="chk fs13">제목</div>
									<div class="subject left fs13">
										<input type="text" id="reviTitle" name="reviTitle" required>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="chk fs13">내용</div>
									<div class="subject left fs13">
										<textarea style="background-color:white;" rows="10" cols="50" id="boardContent" name="reviContent" required></textarea>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="chk fs13">첨부</div>
									<div class="subject left fs13">
										<input type="file" id="uploadFile" name="uploadFile">
									</div>
								</td>
							</tr>
						</table>
						<div class="boardbtn" style="text-align:center; margin:20px auto;">
							<button type="button" id="review" name="review" onclick="location.href='/board/review'">목록</button>
							<button type="submit" onclick="return freeCheck()">작성</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
<%@ include file="../includes/footer.jsp"%>
	<script>
	function freeCheck() {
		if(document.frm.reviTitle.value == "") {
			alert("게시물의 제목을 입력해주세요.");
			frm.boardTitle.focus();
			return false;
		}
		if(document.frm.reviContent.value == "") {
			alert("게시물의 내용을 입력해주세요.");
			frm.boardContent.focus();
			return false;
		}
	}
	
	$("input[type='file']").on("change",function(e) {
		let formData = new FormData();
		let fileInput = $('input[name="uploadFile"]');
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		if(!fileCheck(fileObj.name,fileObj.size)) {
			return false;		 
		}
		
		for(let i=0; i<fileList.length; i++) {
			formData.append("uploadFile", fileList[i]);
		}
		
		$.ajax({
			url : '/board/reviewWrite'
			processData : false,
			contentType : false,
			data : formData,
			type : 'POST',
			dataType : 'json'
		});
	});
	
	let regExp = new RegExp("(.*?)\.(jpg|png)$");
	let maxSize = 1048576;
	
	function fileCheck(fileName, fileSize) {
		if(fileSize >= maxSize) {
			alert("파일 사이즈를 초과하였습니다.(최대 1MB까지)");
			return false;
		}
		if(!regExp.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.(jpg 또는 png 파일만 업로드 가능)")
			return false;
		}
		return true;
	}
	</script>
</body>

</html>