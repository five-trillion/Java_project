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
	    width: 100%;
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
						<font color="#555555">리뷰게시판</font>
					</div>
				</div>
				<form method="get" id="frm" name="frm" action="/board/loungeModify" enctype="multipart/form-data">
					<div class="n_board line typeList gBorder">
						<table>
							<caption>게시판 목록</caption>
							<thead>
								<tr>
									<td class="boardread_top">
										<input type="hidden" id="reviNo" name="reviNo" value="${reviewDetail.reviNo}">
										<div class="board_title">
											<c:out value="${reviewDetail.reviTitle}"></c:out>
										</div>
										<div> </div>
										<div class="board_writer_date">
											작성자 <b><c:out value="${freeDetail.userNick}"/></b>&nbsp;&nbsp;&nbsp;
											작성일 <b><fmt:formatDate pattern="yyyy-MM-dd" value="${reviewDetail.reviReg}"/></b>
										</div>
									</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="subject left fs13">
											<c:if test = "${reviewDetail.userImg ne null}">
												<img src="${contextPath}/resources/upload/lounge/${reviewDetail.userImg}">
											</c:if>
											<br><br>
											<c:out value="${reviewDetail.reviContent}"></c:out>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<input type="hidden" name="boardTitle" value="${reviewDetail.reviTitle}">
						<input type="hidden" name="boardContent" value="${reviewDetail.reviContent}">
						<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
						<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
						<div class="boardbtn">
							<button type="button" id="lounge" name="lounge" onclick="location.href='/board/review?pageNum=${cri.pageNum}&amount=${cri.amount}'">목록</button>
							<c:if test="${user.userNo ne reviewDetail.userNo}"> 
								<button type="button" id="modifybtn" name="modifybtn" onclick="submitForm()" disabled>수정</button>
							</c:if>		
							<c:if test="${user.userNo eq reviewDetail.userNo}"> 
								<button type="button" id="modifybtn" name="modifybtn" onclick="submitForm()">수정</button>
							</c:if>
						</div>
					</div>
				</form>
				
				<!-- 댓글 -->
				
				<form method="post" id="replyfrm" name="replyfrm" action="/reply/reviRepWrite">
					<div class="n_board line typeList gBorder">
						<table>
							<thead>
								<tr>
									<td>
										<div> 리플 <%-- <c:out value={boRepCnt}/> --%> </div>
									</td>
								<tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<input type="hidden" name="reviNo" value="${reviewDetail.reviNo}">
										<input type="hidden" name="userNo" value="${user.userNo}">
										<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
										<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
										<textarea id="reviRepContent" name="reviRepContent" rows="5"></textarea>
										<div class="boardbtn">
											<button type="button" id="registerBtn" name="registerBtn" onclick="checkLoginAndRedirect()">등록</button>
										</div>
									</td>
								</tr>
								<tr>
									<c:forEach var="reply" items="${reply}">
										<td>
											<div style="width:900px;">
												<c:if test="${reviewDetail.userNo eq reply.userNo}">
													작성자 <b><c:out value="${reply.userNick}"/></b>&nbsp;&nbsp;&nbsp;
													작성일 <b><fmt:formatDate pattern="yyyy-MM-dd" value="${reply.reviRepReg}"/></b><br>
													<!-- 게시글 작성자의 댓글 구분 -->
													<p style="color:#FF0033;"><c:out value="${reply.reviRepContent}"/></p>
												</c:if>
												<c:if test="${reviewDetail.userNo ne reply.userNo}">
													작성자 <b><c:out value="${reply.userNick}"/></b>&nbsp;&nbsp;&nbsp;
													작성일 <b><fmt:formatDate pattern="yyyy-MM-dd" value="${reply.reviRepReg}"/></b><br>
													<p><c:out value="${reply.reviRepContent}"/></p>
												</c:if>
											</div>
											<div>
												<c:if test="${user.userNo eq reply.userNo}">
													<button type="button" class="btn btn-primary" data-toggle="modal" 
													data-target="#replyModal" data-replyid="${reply.reviRepNo}" 
													data-replycontent="${reply.reviRepContent}">수정</button> 
												</c:if>
											</div>
										</td>
									</c:forEach>	
								</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- modal -->
	<div class="modal fade" id="replyModal" tabindex="-1" role="dialog" aria-labelledby="replyModalLabel" aria-hidden="true">
	    <div class="modal-dialog modal-lg" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h5 class="modal-title" id="replyModalLabel">수정 / 삭제</h5>
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	            </div>
	            <div class="modal-body">
	                <form id="replyForm">
	                    <input type="hidden" id="replyId" name="replyId">
	                    <div class="form-group">
	                        <label for="replyContent">댓글 내용</label>
	                        <textarea class="form-control" id="replyContent" name="replyContent" rows="3"></textarea>
	                    	<input type="hidden" name="boardNo" value="${reviewDetail.reviNo}">
	                    </div>
	                    <button type="button" class="btn btn-primary" onclick="modifyReply()">수정</button>
	                    <button type="button" class="btn btn-danger" onclick="deleteReply()">삭제</button>
	                </form>
	            </div>
	        </div>
	    </div>
	</div>
	
	<%@ include file="../includes/footer.jsp"%>
<script>
	function submitForm() {
		document.getElementById('frm').submit();
	}
	
	function checkLoginAndRedirect() {
        // 여기서 로그인 여부를 확인
        let user = '<c:out value="${user}"/>';
        
        if (user === '') {
            // 로그인이 필요한 경우
            alert("로그인이 필요합니다.");
            location.href = '/shop/login';
        } else {
            // 로그인이 되어 있는 경우
        	document.getElementById('replyfrm').submit();
        }
    }
	
	$('#replyModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget); // 클릭된 버튼
        var replyId = button.data('replyid'); // 댓글 ID
        var replyContent = button.data('replycontent'); // 댓글 내용

        // 모달 내용 설정
        $('#replyId').val(replyId);
        $('#replyContent').val(replyContent);
    });

    // 댓글 수정 함수
    function modifyReply() {
        var replyId = $('#replyId').val();
        var replyContent = $('#replyContent').val();
        var reviNo = $('#reviNo').val();
        var pageNum = $('input[name=pageNum]').val();
        var amount = $('input[name=amount]').val();
		$.ajax({
            type: 'POST',
            url: '/reply/reviRepModify', // 수정 처리를 수행할 컨트롤러의 URL
            data: {
                reviRepNo: replyId,
                reviRepContent: replyContent,
                reviNo: reviNo,
                pageNum: pageNum,
                amount: amount
            },
            success: function (data) {
              	console.log("댓글 수정 성공!!")
              	location.reload();
            },
            error: function (error) {
            	console.error('댓글 삭제 실패:', error);
            }
        });

			$('#replyModal').modal('hide');
        // 모달 닫기
    }

    // 댓글 삭제 함수
    function deleteReply() {
        var replyId = $('#replyId').val();
        var reviNo = $('#reviNo').val();
        var pageNum = $('input[name=pageNum]').val();
        var amount = $('input[name=amount]').val();
       
		 $.ajax({
            type: 'POST',
            url: '/reply/reviRepDelete', // 삭제 처리를 수행할 컨트롤러의 URL
            data: {
            	reviRepNo: replyId,
            	reviNo: reviNo,
                pageNum: pageNum,
                amount: amount
            },
            dataType : "text",
            success: function (data) {
            	console.log("댓글 삭제 성공!!")
            	location.reload();
            },
            error: function (error) {
            	console.error('댓글 삭제 실패:', error);
            }
        });
        $('#replyModal').modal('hide');

        
    }
	
</script>
</body>

</html>