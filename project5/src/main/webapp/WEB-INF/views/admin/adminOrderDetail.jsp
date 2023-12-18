<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<%@ include file="./includes/headAdmin.jsp"%>
<body>
			<h5 class="modal-title">주문 상세 정보</h5>

			<!-- Bordered Table -->
              <table >
                <tbody>
	                 <c:forEach var="adminOrderDetail" items="${adminOrderDetail}"> 
	                  <tr>
						<th>주문 번호</th>
						<td colspan="2">${adminOrderDetail}</td>
						<th>주문 일자</th>
						<td colspan="2">${adminOrderDetail}</td>
					</tr>	
				<%-- 	<tr>	
						<th>순번</th>
						<th>상품 코드</th>
						<th> 상 품 명 </th>
						<th>판매 가격</th>
						<th>주문 수량</th>
						<th>합 계</th>
					</tr>
					<tr>
					<c:forEach var="orderDetail" items="${adminOrderDetail.orderDetailList}">
						<td>${orderDetail.orderListNo}</td>
						<td>${orderDetail.prodNo}</td>
						<td>${orderDetail.prodName}</td>
						<td>${orderDetail.salePrice}</td>
						<td>${orderDetail.orderCnt}</td>
						<td>${orderDetail.prodSum}</td>
						</c:forEach>
					</tr>	   
					
				 --%>
				 </c:forEach>
                </tbody>
              </table>
              <!-- End Bordered Table -->
	
	
</body>
</html>	