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
<style>
	.n_board table tr .boardread_top {
		display:block;
	}
	.board_title {
		font-size:30px;
		text-align:center;
	}
	.board_writer_date {
		font-size:15px;
		text-align:right;
	}
	.boardbtn {
		text-align: center;
   		padding: 30px;
	}
	.boardbtn button {
		width: 75px;
	    height: 50px;
	    display: inline-block;
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
						<font color="#555555">QnA</font>
					</div>
				</div>
				<form method="get" id="frm" name="frm" action="/board/qnaModify" enctype="multipart/form-data">
					<div class="n_board line typeList gBorder">
						<table>
							<caption>게시판 목록</caption>
							<thead>
								<tr>
									<td class="boardread_top">
										<input type="hidden" id="boardNo" name="boardNo" value="${qnaDetail.boardNo}">
										<div class="board_title">
											<c:out value="${qnaDetail.boardTitle}"></c:out>
										</div>
										<div> </div>
										<div class="board_writer_date">
											작성자 <b><c:out value="${qnaDetail.userNick}"/></b>&nbsp;&nbsp;&nbsp;
											작성일 <b><fmt:formatDate pattern="yyyy-MM-dd" value="${qnaDetail.boardReg}"/></b>
										</div>
									</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="subject left fs13">
											<c:if test = "${qnaDetail.boardImg ne null}">
												<img src="${contextPath}/resources/upload/notice/${qnaDetail.boardImg}">
											</c:if> 
											<br><br>
											<c:out value="${qnaDetail.boardContent}"></c:out>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<input type="hidden" name="boardTitle" value="${qnaDetail.boardTitle}">
						<input type="hidden" name="boardContent" value="${qnaDetail.boardContent}">
						<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
						<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
						<div class="boardbtn">
							<button type="button" id="qna" name="qna" onclick="location.href='/board/qna?pageNum=${cri.pageNum}&amount=${cri.amount}'">목록</button>
							<c:if test="${user.userNo ne qnaDetail.userNo}"> 
								<button type="button" id="modifybtn" name="modifybtn" onclick="submitForm()" disabled>수정</button>
							</c:if>		
							<c:if test="${user.userNo eq qnaDetail.userNo}"> 
								<button type="button" id="modifybtn" name="modifybtn" onclick="submitForm()">수정</button>
							</c:if>
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