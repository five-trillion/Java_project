<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 게시물 상세페이지</title>
<%@ include file="../includes/src.jsp"%>
<style>
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
						<font color="#555555">NOTICE</font>
					</div>
					<p class="imgArea displaynone"></p>
				</div>
				<div class="boardSort">
					<span
						class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
				</div>
				<div class="n_board line typeList gBorder">
					<table border="1">
						<caption>게시판 목록</caption>
						<tr>
							<td>
								<input type="hidden" id="boardNo" name="boardNo" value="${noticeDetail.boardNo}">
								<div class="chk fs12">제목</div>
								<div class="subject left fs12">
									<c:out value="${noticeDetail.boardTitle}"></c:out>
								</div>
							</td>
							<td>
								<div class="chk fs12">작성자</div>
								<div class="subject left fs12">
									<c:out value="${noticeDetail.userNick}"></c:out> 
								</div>
							</td>
							<td>
								<div class="chk fs12">작성일</div>
								<div class="subject left fs12">
									<fmt:formatDate pattern="yyyy-MM-dd" value="${noticeDetail.boardReg}"/>
								</div>
							</td>
							<td>
								<div class="chk fs12">수정일</div>
								<div class="subject left fs12">
									<fmt:formatDate pattern="yyyy-MM-dd" value="${noticeDetail.boardUpdate}"/>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="chk fs13">내용</div>
								<div class="subject left fs13">
									<c:out value="${noticeDetail.boardContent}"></c:out>
								</div>
							</td>
						</tr>
					</table>
		
					<div class="boardbtn">
						<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
						<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
						<button type="button" id="notice" name="notice" onclick="location.href='/board/notice?pageNum=${cri.pageNum}&amount=${cri.amount}'">목록</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../includes/footer.jsp"%>
	
</body>

</html>