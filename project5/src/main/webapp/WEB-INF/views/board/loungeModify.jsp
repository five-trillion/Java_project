<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 글수정하기</title>
<%@ include file="../includes/src.jsp"%>
	<style>
		.boardbtn button {
			width : 100px;
			height: 50px;
		}
		.boardbtn input {
			width : 100px;
			height: 50px;
			border :none;
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
				</div>
				<form method="post" id="frm" name="frm" action="/board/loungeModify" enctype="multipart/form-data">
					<div class="n_board line typeList gBorder">
						<table>
							<caption>게시판 목록</caption>
							<tr>
								<td>
									<div class="chk fs12">제목</div>
									<div class="subject left fs12">
										<input type="text" id="boardTitle" name="boardTitle" value="${freeDetail.boardTitle}">
										<input type="hidden" id="boardNo" name="boardNo" value="${freeDetail.boardNo}">
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="chk fs13">내용</div>
									<div class="subject left fs13">
										<textarea style="background-color:white;" rows="10" cols="50" id="boardContent" name="boardContent">${freeDetail.boardContent}</textarea>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="chk fs13">첨부</div>
									<div class="subject left fs13">
										 <c:if test="${not empty boardImg}">
							                <img src="/resources/upload/lounge/${boardImg}" alt="첨부이미지" style="max-width: 150px; max-height: 150px;">
							                <input type="file" id="updateFile" name="updateFile">
										</c:if>
									</div>
								</td>
							</tr>
						</table>
						<div class="boardbtn" style="text-align:center; margin:20px auto;">
							<button type="button" id="lounge" name="lounge" onclick="location.href='/board/lounge'">목록</button>
							<input type="reset" value="취소">
							<button type="button" id="deletebtn" name="deletebtn" onclick="showDeleteModal()">삭제</button>
							<input type="submit" value="수정" onclick="return freeCheck()">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- modal -->
	<div id="deleteModal" class="modal" tabindex="-1" role="dialog">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h5 class="modal-title">삭제 확인</h5>
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	            </div>
	            <div class="modal-body">
	                <p>정말로 삭제하시겠습니까?</p>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
	                <button type="button" class="btn btn-primary" onclick="confirmDelete()">확인</button>
	            </div>
	        </div>
	    </div>
	</div>
	<%@ include file="../includes/footer.jsp"%>
<script type="text/javascript">
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
	
	function showDeleteModal() {
    	$("#deleteModal").modal("show");
    }
	 function confirmDelete() {
         // 삭제 확인 버튼을 눌렀을 때의 처리
         document.frm.action = "/board/loungeDelete";
         document.frm.submit();
     }

     function closeModal() {
         // 모달창 닫기
         $("#deleteModal").remove();
     }
     
	</script>
</body>

</html>