<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 게시물 상세페이지</title>
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
	textarea {
		border:1px #888888 solid;
		background-color:white;
		padding: 10px;
	    font-size: 12px;
	    width: 80%;
	    resize: none;
	    box-sizing: border-box;
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
				<form method="get" id="frm" name="frm" action="/board/loungeModify" enctype="multipart/form-data">
					<div class="n_board line typeList gBorder">
						<table>
							<caption>게시판 목록</caption>
							<thead>
								<tr>
									<td class="boardread_top">
										<input type="hidden" id="boardNo" name="boardNo" value="${freeDetail.boardNo}">
										<div class="board_title">
											<c:out value="${freeDetail.boardTitle}"></c:out>
										</div>
										<div> </div>
										<div class="board_writer_date">
											작성자 <b><c:out value="${freeDetail.userNick}"/></b>&nbsp;&nbsp;&nbsp;
											작성일 <b><fmt:formatDate pattern="yyyy-MM-dd" value="${freeDetail.boardReg}"/></b>
										</div>
									</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="chk fs13">내용</div>
										<div class="subject left fs13">
											<img src="${contextPath}/resources/upload/lounge/${freeDetail.boardImg}" alt="게시글 이미지">
											<c:out value="${freeDetail.boardContent}"></c:out>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<input type="hidden" name="boardTitle" value="${freeDetail.boardTitle}">
						<input type="hidden" name="boardContent" value="${freeDetail.boardContent}">
						
						<div class="boardbtn">
							<button type="button" id="lounge" name="lounge" onclick="location.href='/board/lounge'">목록</button>
							<button type="button" id="modifybtn" name="modifybtn" onclick="submitForm()">수정</button>
						</div>
					</div>
				</form>
				
				<!-- 댓글 -->
				
				<form method="post" id="replyfrm" name="replyfrm" action="/reply/boRepWrite">
					<div class="n_board line typeList gBorder">
						<table>
							<thead>
								<tr>
									<td>
										<div> 리플  2<%-- <c:out value={replycnt}/> --%> </div>
									</td>
								<tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<input type="hidden" name="boardNo" value="${freeDetail.boardNo}">
										<input type="hidden" name="userNo" value="${freeDetail.userNo}">
										<textarea id="boRepContent" name="boRepContent" rows="4"></textarea>
										<div class="boardbtn">
											<button type="submit">등록</button>
										</div>
									</td>
								</tr>
								<tr>
									<c:forEach var="reply" items="${reply}">
										<td>
											<div>
												작성자 <b><c:out value="${reply.userNick}"/></b>&nbsp;&nbsp;&nbsp;
												작성일 <b><fmt:formatDate pattern="yyyy-MM-dd" value="${reply.boRepReg}"/></b><br>
												<c:out value="${reply.boRepContent}"/>
												
											</div>
										</td>
									</c:forEach>	
								</tr>
							</tbody>
						</table>
						<%-- <input type="hidden" name="boardTitle" value="${freeDetail.boardTitle}">
						<input type="hidden" name="boardContent" value="${freeDetail.boardContent}"> --%>
						
						<div class="boardbtn">
							<!-- <button type="button" id="lounge" name="lounge" onclick="location.href='/board/lounge'">목록</button>
							<button type="button" id="modifybtn" name="modifybtn" onclick="submitForm()">수정</button> -->
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