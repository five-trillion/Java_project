<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<%@ include file="../includes/src.jsp"%>

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
				<div class="n_board line typeList gBorder">
					<table border="1" summary="">
						<caption>게시판 목록</caption>
						<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
							<tr style="">
								<td>
									<div class="chk fs12">번호</div>
									<div class="displaynone cate fs12">카테고리</div>
									<div class="subject left fs12">제목</div>
									<div class="writer fs12">작성자</div>
									<div class=" fs12 writer_date">작성일</div>
									<div class=" fs12 hit">조회수</div>
								</td>
							</tr>
						</thead>
						<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
							<c:forEach items="${freeList}" var="board" varStatus="loop">
								<tr style="background-color: #FFFFFF; color: #555555;"
									class="xans-record-">
									<td>
										<div class="chk fs13">
											<c:out value="${board.boardNo}"/>
										</div>
										<div class="subject left fs13">
											<a href='/board/loungeRead?boardNo=<c:out value="${board.boardNo}"/>'>
											<c:out value="${board.boardTitle}"/></a>
										</div>
										<div class="writer fs13">
											<c:out value="${board.userNick}"/>
										</div>
										<div class=" fs13 writer_date">
											<fmt:formatDate pattern="yyyy-MM-dd" value="${board.boardUpdate}"/>
										</div>
										<div class=" fs13 hit">
											<c:out value="${board.boardCnt}"/>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="xans-element- xans-board xans-board-buttonlist-1002 xans-board-buttonlist xans-board-1002 displaynone ">
					<span class="gRight"> <a href="/board/free/write.html?board_no=1" class="btnSubmitFix sizeS displaynone">글쓰기</a>
					</span>
				</div>
			</div>

			<div
				class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 ec-base-paginate">
				<a href="?board_no=1&amp;page=1" class="prev"><img
					src="//img.echosting.cafe24.com/skin/base/common/btn_page_prev.gif"
					alt="이전 페이지"></a>
				<ol>
					<li class="xans-record-"><a href="?board_no=1&amp;page=1"
						class="this">1</a></li>
				</ol>
				<a href="?board_no=1&amp;page=1" class="next"><img
					src="//img.echosting.cafe24.com/skin/base/common/btn_page_next.gif"
					alt="다음 페이지"></a>
			</div>

			<form id="boardSearchForm" name="" action="/board/free/list.html"
				method="get" target="_top" enctype="multipart/form-data">
				<input id="board_no" name="board_no" value="1" type="hidden">
				<input id="page" name="page" value="1" type="hidden"> <input
					id="board_sort" name="board_sort" value="" type="hidden">
				<div class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 ">
					<button type="button" id="writeForm" name="writeForm" onclick="location.href='/board/loungeWrite'" class="btnSubmitFix sizeS">글쓰기</button> 
					<fieldset class="boardSearch" style="float:right;">
						<legend>게시물 검색</legend>
							<input id="search" name="search" fw-filter="" fw-label=""
								fw-msg="" class="inputTypeText" placeholder="" value=""
								type="text"> <a href="#none" class="btnSubmitFix sizeS"
								onclick="BOARD.form_submit('boardSearchForm');">찾기</a>
					</fieldset>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="../includes/footer.jsp"%>
<script type="text/javascript">
	$(document).ready(function(){
		let result = '<c:out value="${result}"/>';
		writeCheck(result);
		function writeCheck(result) {
			if(result === '') {
				return;
			}
			if(result === "write success") {
				alert("등록이 완료되었습니다.");
			}
			if(result === "modify success") {
				alert("수정이 완료되었습니다.");
			}
			if(result === "delete success") {
				alert("삭제가 완료되었습니다.")
			}
		}
	});
</script>
</body>

</html>