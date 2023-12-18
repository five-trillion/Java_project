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
						<font color="#555555">NOTICE</font>
					</div>
				</div>
				<div class="n_board line typeList gBorder">
					<table>
						<caption>게시판 목록</caption>
						<thead>
							<tr>
								<td class="boardread_top">
									<div class="board_title">
										<c:out value="${noticeDetail.boardTitle}"></c:out>
									</div>
									<div> </div>
									<div class="board_writer_date">
										작성자 <b><c:out value="${noticeDetail.userNick}"/></b>&nbsp;&nbsp;&nbsp;
										작성일 <b><fmt:formatDate pattern="yyyy-MM-dd" value="${noticeDetail.boardReg}"/></b>
									</div>
								</td>
							</tr>
						</thead>	
						<tbody>
							<tr>
								<td>
									<div class="subject left fs13">
										<%-- 관리자 페이지에서 파일첨부 --%> 
										<%--<c:if test = "${noticeDetail.boardImg ne null}">
											<img src="${contextPath}/resources/upload/notice/${noticeDetail.boardImg}">
										</c:if> 
										<br><br>--%>
										<c:out value="${noticeDetail.boardContent}"></c:out>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- paging -->
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