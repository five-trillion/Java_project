<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<%@ include file="./includes/headAdmin.jsp"%>
<body>
<div class="modal fade userInfo" tabindex="-1">
<div class="modal-dialog modal-lg">
	<div class="modal-content">
		<div class="modal-header">
			<h5 class="modal-title">주문 상세 정보</h5>
			<button type="button" class="btn-close"
				data-bs-dismiss="modal" aria-label="Close"></button>
		</div>
		<div class="modal-body">
			<!-- Bordered Table -->
              <table class="table table-bordered">
                <tbody>
	                  <tr>
						<th>주문 번호</th>
						<td colspan="2">${prodList.prodNo}</td>
						<th>주문 일자</th>
						<td colspan="2">${prodList.prodNo}</td>
					</tr>	
					<tr>	
						<th>순번</th>
						<th>상품 코드</th>
						<th> 상 품 명 </th>
						<th>판매 가격</th>
						<th>주문 수량</th>
						<th>합 계</th>
					</tr>
				<c:forEach>	
					
				</c:forEach>
					<tr>
						<th>브랜드</th>
						<td>${prodList.brand}</td>
						<th>카테고리</th>
						<td>${prodList.category}</td>
					</tr>
					<tr>
						<th>공시가</th>
						<td>${prodList.netPrice}</td>
						<th>판매가</th>
						<td>${prodList.salePrice}</td>
					</tr>
					<tr>
						<th>상품 설명</th>
						<td colspan="3">${prodList.prodInfo}</td>
					</tr>
					<tr>
						<th>등록일</th>
						<td><fmt:formatDate value="${prodList.prodReg}"
								type="date"></fmt:formatDate></td>
						<th>수정일</th>
						<td><fmt:formatDate value="${prodList.prodUpdate}"
								type="date"></fmt:formatDate></td>
					</tr>
				
                </tbody>
              </table>
              <!-- End Bordered Table -->
		</div>
</div>
</div>
</div>		
</body>
</html>	