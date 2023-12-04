<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 게시판</title>
<%@ include file="../includes/src.jsp"%>

</head>

<body>

	<%@ include file="../includes/header.jsp" %>
	
	<div id="contents">
		<div class="page_wrap" style="margin: 0 auto 200px auto;">
			<div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
				<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
					<div class="path">
						<span>현재 위치</span>
						<ol>
							<li><a href="/">홈</a></li>
							<li><a href="/board/index.html">게시판</a></li>
							<li title="현재 위치"><strong>NOTICE</strong></li>
						</ol>
					</div>
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
									<div class="displaynone fs12 vote">추천</div>
									<div class="displaynone fs12 point">평점</div>
								</td>
							</tr>
						</thead>
						<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
							<tr style="background-color: #FFFFFF; color: #555555;"
								class="xans-record-">
								<td>
									<div class="chk fs13">공지</div>
									<div class="displaynone cate fs13"></div>
									<div class="subject left fs13">
										<strong> <a href="/article/notice/1/2380/"
											style="color: #555555;">픈픈 개인정보처리방침 사전 변경 안내</a> <span
											class="txtEm"></span></strong>
									</div>
									<div class="writer fs13">관리자</div>
									<div class=" fs13 writer_date">
										<span class="txtNum">2023-03-16</span>
									</div>
									<div class=" fs13 hit">
										<span class="txtNum">90</span>
									</div>
									<div class="displaynone fs13 vote">
										<span class="txtNum">0</span>
									</div>
									<div class="displaynone fs13 point">
										<img
											src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif"
											alt="0점">
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="xans-element- xans-board xans-board-buttonlist-1002 xans-board-buttonlist xans-board-1002 displaynone ">
					<span class="gRight"> <a
						href="/board/free/write.html?board_no=1"
						class="btnSubmitFix sizeS displaynone">글쓰기</a>
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
				<div
					class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 ">
					<fieldset class="boardSearch" style="float:right;">
						<legend>게시물 검색</legend>
						<p>
							</select> <input id="search" name="search" fw-filter="" fw-label=""
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
</body>

</html>