<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 게시물 상세페이지</title>
<%@ include file="../includes/src.jsp"%>

</head>

<body>

	<%@ include file="../includes/header.jsp" %>
	
	<div id="contents">
		<div class="page_wrap" style="margin: 0 auto 200px auto;">
			<div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
				<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
					<div class="page_title fs60">
						<font color="#555555">QnA</font>
					</div>
					<p class="imgArea displaynone"></p>
				</div>
				<div class="boardSort">
					<span
						class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
				</div>
				<form method="get" id="frm" name="frm" action="/board/qnaModify" enctype="multipart/form-data">
					<div class="n_board line typeList gBorder">
						<table border="1" summary="">
							<caption>게시판 목록</caption>
							<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
								<tr>
									<td>
										<input type="hidden" id="boardNo" name="boardNo" value="${qnaDetail.boardNo}">
										<div class="chk fs12">제목</div>
										<div class="subject left fs12">
											<c:out value="${qnaDetail.boardTitle}"></c:out>
										</div>
									</td>
									<td>
										<div class="chk fs12">작성자</div>
										<div class="subject left fs12">
											<c:out value="${qnaDetail.userNick}"></c:out> 
										</div>
									</td>
									<td>
										<div class="chk fs12">작성일</div>
										<div class="subject left fs12">
											<fmt:formatDate pattern="yyyy-MM-dd" value="${qnaDetail.boardReg}"/>
										</div>
									</td>
								</tr>
							</thead>
							<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
								<tr>
									<td>
										<div class="chk fs13">내용</div>
										<div class="subject left fs13">
											<c:out value="${qnaDetail.boardContent}"></c:out>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
			
						<div class="boardbtn">
							<button type="button" id="qna" name="qna" onclick="location.href='/board/qna'">목록</button>
							<button type="button" id="modifybtn" name="modifybtn" onclick="submitForm()">수정</button>
						</div>
					</div>
				</form>
			</div>

			
		</div>
	</div>
	<%@ include file="../includes/footer.jsp"%>
<script>
	function submitForm() {
		document.getElementById('frm').submit();
	}
</script>
</body>

</html>