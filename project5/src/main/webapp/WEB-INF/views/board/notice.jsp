<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 게시판</title>
<%@ include file="../includes/src.jsp"%>
	<style>
		.pageInfo_area {
			text-align:center;
		}
		.pageInfo {
			list-style:none;
			display:inline-block;
			margin:50px auto 25px auto;
		}
		.pageInfo li {
			float:left;
			font-size: 18px;
		    margin-left: 15px;
		    padding: 7px;
		}
		
		a:link {color:black; text-decoration: none;}
		a:visited {color:black; text-decoration: none;}
		a:hover {color:black; text-decoration: underline;}
		.active a{
			font-weight: bold;
			text-decoration:underline;
		}
		
		.search_area{
			display: inline-block;
		  	float:right;
		}
		.search_area input{
			height: 30px;
		  	width: 250px;
		}
		.search_area button{
		   	width: 75px;
		  	height: 30px;
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
							<c:forEach items="${noticeList}" var="board" varStatus="status">
								<tr style="background-color: #FFFFFF; color: #555555;"
									class="xans-record-">
									<td>
										<div class="chk fs13">
		                                    ${pageMaker.total - (pageMaker.cri.pageNum - 1) * pageMaker.cri.amount - status.index}
		                                </div>
										<div class="subject left fs13">
											<a href='/board/noticeRead?boardNo=<c:out value="${board.boardNo}"/>&pageNum=${pageNum}&amount=${amount}'>
											<c:out value="${board.boardTitle}"/></a>
										</div>
										<div class="writer fs13">
											<c:out value="${board.userNick}"/>
										</div>
										<div class=" fs13 writer_date">
											<fmt:formatDate pattern="yyyy-MM-dd" value="${board.boardReg}"/>
										</div>
										<div class=" fs13 hit">
											<c:out value="${board.boardCnt}"/>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="pageInfo_wrap" >
        				<div class="pageInfo_area">
        					<ul id="pageInfo" class="pageInfo">
        						 <!-- 이전페이지 버튼 -->
				                <c:if test="${pageMaker.prev}">
				                    <li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}"> < </a></li>
				                </c:if>
				                
				                <!--  각 페이지 번호 버튼 -->
		 						<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
				                    <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? 'active': '' }"><a href="${num}">${num}</a></li>
				                </c:forEach>

				                <!-- 다음페이지 버튼 -->
				                <c:if test="${pageMaker.next}">
				                    <li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1}">></a></li>
				                </c:if>    
				            </ul> 
				            <div class="board_search_wrap">
						        <div class="search_area">
						            <input type="text" name="keyword" value="${pageMaker.cri.keyword }">
						            <button>검색</button>
						        </div>
				    		</div>    
				    	</div>
				    </div>
				    
				    <form id="moveForm" method="get">
				    	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
       					<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
       					<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
				    </form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../includes/footer.jsp"%>
	
<script type="text/javascript">
	
	let moveForm = $("#moveForm");
   
	$(".pageInfo a").on("click", function(e){
		e.preventDefault();
        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
        moveForm.attr("action", "/board/notice");
        moveForm.submit();
    });
	
	 $(".search_area button").on("click", function(e){
	        e.preventDefault();
	        let val = $("input[name='keyword']").val();
	        moveForm.find("input[name='keyword']").val(val);
	        moveForm.find("input[name='pageNum']").val(1);
	        moveForm.submit();
	 });
	
</script>
</body>

</html>