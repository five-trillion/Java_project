<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 글쓰기</title>
<%@ include file="../includes/src.jsp"%>
	<style>
		.boardbtn button {
			width : 100px;
			height: 50px;
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
						<font color="#555555">자유게시판</font>
					</div>
					<p class="imgArea displaynone"></p>
				</div>
				<div class="boardSort">
					<span
						class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
				</div>
				<form method="post" id="frm" name="frm" action="/board/loungeWrite" enctype="multipart/form-data">  
					<div class="n_board line typeList gBorder">
						<table border="1" summary="">
							<caption>게시판 목록</caption>
							<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
								<tr>
									<td>
										<input type="hidden" id="userNo" name="userNo" value="${user.userNo}">
										<div class="chk fs12">제목</div>
										<div class="subject left fs12">
											<input type="text" id="boardTitle" name="boardTitle" required>
										</div>
									</td>
								</tr>
							</thead>
							<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
								<tr>
									<td>
										<div class="chk fs13">내용</div>
										<div class="subject left fs13">
											<textarea style="background-color:white;" rows="10" cols="50" id="boardContent" name="boardContent" required></textarea>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="chk fs13">첨부</div>
										<div class="subject left fs13">
											<input type="file" id="uploadFile" name="uploadFile" multiple>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="boardbtn" style="text-align:center; margin:20px auto;">
							<button type="button" id="lounge" name="lounge" onclick="location.href='/board/lounge'">목록</button>
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
		if(document.frm.boardTitle.value == "") {
			alert("게시물의 제목을 입력해주세요.");
			frm.boardTitle.focus();
			return false;
		}
		if(document.frm.boardContent.value == "") {
			alert("게시물의 내용을 입력해주세요.");
			frm.boardContent.focus();
			return false;
		}
	}
	
	$("input[type='file']").on("change",function(e) {
		let formData =new FormData();
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
			url : '/board/loungeWrite'
			processData : false,
			contentType : false,
			data : formData,
			type : 'POST',
			dataType : 'jason'
		});
	});
	
	//여기서부터
	
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