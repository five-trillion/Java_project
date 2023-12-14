<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 글수정하기</title>
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
				<form method="post" id="frm" name="frm" action="/board/qnaModify"> <!-- enctype="multipart/form-data" -->
					<div class="n_board line typeList gBorder">
						<table border="1" summary="">
							<caption>게시판 목록</caption>
							<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
								<tr>
									<td>
										<div class="chk fs12">제목</div>
										<div class="subject left fs12">
											<input type="text" id="boardTitle" name="boardTitle" value="${qnaDetail.boardTitle}">
											<input type="hidden" id="boardNo" name="boardNo" value="${qnaDetail.boardNo}">
										</div>
									</td>
								</tr>
							</thead>
							<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
								<tr>
									<td>
										<div class="chk fs13">내용</div>
										<div class="subject left fs13">
											<textarea style="background-color:white;" rows="10" cols="50" id="boardContent" id="boardContent" name="boardContent">${qnaDetail.boardContent}</textarea>
										</div>
									</td>
								</tr>
								<!-- <tr>
									<td>
										<div class="chk fs13">첨부</div>
										<div class="subject left fs13">
											<input type="file">
										</div>
									</td>
								</tr> -->
							</tbody>
						</table>
						<div class="boardbtn" style="text-align:center; margin:20px auto;">
							<button type="button" id="qna" name="qna" onclick="location.href='/board/qna'">목록</button>
							<input type="reset" value="취소">
							<button type="button" id="deletebtn" name="deletebtn" onclick="showDeleteModal()">삭제</button>
							<input type="submit" value="수정" onclick="return freeCheck()">
						</div>
					</div>
				</form>
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
				<div
					class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 ">
					<fieldset class="boardSearch" style="float:right;">
						<legend>게시물 검색</legend>
						<p>
							<input id="search" name="search" fw-filter="" fw-label=""
								fw-msg="" class="inputTypeText" placeholder="" value=""
								type="text"> <a href="#none" class="btnSubmitFix sizeS"
								onclick="BOARD.form_submit('boardSearchForm');">찾기</a>
						</p>
					</fieldset>
				</div>
			</form>
			<!-- 관리자 전용 메뉴 -->

			<!-- // 관리자 전용 메뉴 -->
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
        // 모달창을 띄우는 코드 추가
        // 여기에 모달창 HTML 및 스타일을 추가하세요
        let modalHtml = '<div id="deleteModal" class="modal">';
        modalHtml += '<div class="modal-content">';
        modalHtml += '<span class="close" onclick="closeModal()">&times;</span>';
        modalHtml += '<p>정말로 삭제하시겠습니까?</p>';
        modalHtml += '<button onclick="confirmDelete()">확인</button>';
        modalHtml += '</div>';
        modalHtml += '</div>';
        
        // body에 모달창 추가
        $("body").append(modalHtml);
        $("#deleteModal").modal("show");
    }
	 function confirmDelete() {
         // 삭제 확인 버튼을 눌렀을 때의 처리
         document.frm.action = "/board/qnaDelete";
         document.frm.submit();
     }

     function closeModal() {
         // 모달창 닫기
         $("#deleteModal").remove();
     }
	
	</script>
</body>

</html>