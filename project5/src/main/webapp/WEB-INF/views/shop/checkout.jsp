<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>주문</title>
	<%@include file="../includes/src.jsp" %>
</head>
<body>
	<%@include file="../includes/header.jsp" %>
    
	<section class="checkout spad" style="padding-top: 50px;">
        <div class="container" style="padding-left: 50px; padding-right: 50px;">
        	
        	<form role="form" method="post" autocomplete="off" action="/complete">
	        	<div class="shoping__cart__table">
	        		<h4>주문상품</h4>
	        		<table>
	        			<thead>
	                        <tr>
	                            <th colspan="2" class="shoping__product">상품정보</th>
	                            <th>수량</th>
	                            <th>주문금액</th>
	                        </tr>
	                    </thead>
		                <tbody>
		                	<c:forEach items="${order}" var="order">
		                    <tr>
		                    	<td class="shoping__cart__total">
		                            <img src="${contextPath}/resources/upload/product/main/${order.prodMainImg}" alt="" style="width:100px;">
		                        </td>
		                        <td class="shoping__cart__item" style="padding-left: 20px; width: 420px;">
		                            <h5>${order.prodName}</h5> <br>
		                            <input type="hidden" value="${order.cartNo}">
		                            <h6>가격: <fmt:formatNumber pattern="###,###,###.##" value="${order.salePrice}" /></h6>
		                        </td>
		                        <td class="shoping__cart__quantity" style="width:110px;">
		                            <div class="quantity">
		                            	<h6>X${order.orderCnt}</h6>
		                            </div>
		                        </td>
		                        <td class="shoping__cart__total">
		                            <fmt:formatNumber pattern="###,###,###.##" value="${order.totalPrice}" />
		                            <input type="hidden" id="prodSum" name="prodSum" value="${order.totalPrice}">
		                        </td>
		                    </tr>
		                    <c:set var="orderSum" value="${orderSum + order.salePrice * order.orderCnt}"/>
		                    </c:forEach>
		                </tbody>
		            </table>
		            <p class="message  fs14" style="margin: 10px 0 0 10px;">
			            상품구매금액 <strong><fmt:formatNumber pattern="###,###,###.##" value="${orderSum}"/>원</strong> + 배송비 3,000원 
			            = 합계 : <strong><fmt:formatNumber pattern="###,###,###.##" value="${orderSum+3000}"/>원</strong>
		            </p>
	        	</div>
	        	<div class="checkout__form">
                	<h4>배송 정보</h4>
                
                	<input type="hidden" id="orderSum" name="orderSum" value="${orderSum}">
                    <div class="row">
                        <div class="col-lg-12 col-md-6">
                            <div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input__checkbox">     
			                            <input type="radio" name="diff-acc" id="origin" value="false" checked="checked">현재 회원정보
			                            <input type="radio" name="diff-acc" id="new-acc" value="true">새로운 배송지
		                            </div>
                                    <div class="checkout__input">
                                        <p>이름<span>*</span></p>
                                        <input type="text" id="recipient" name="recipient" value="${user.userName}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                            	<div class="col-lg-12">
		                            <div class="checkout__input">
		                            	<p>주소<span>*</span></p>
		                            		<input type="text" id="orderzip" name="orderzip" value="${user.zip}" placeholder="우편번호">
					                      	<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" style="width: 15%; text-align: center; padding-left: 0;"><br>
											<p></p><input type="text" id="address1" name="address1" value="address1" placeholder="주소"><br>
											<p></p><input type="text" id="address2" name="address2" value="address2" placeholder="상세주소">
											<!-- <input type="text" id="extraAddress" placeholder="참고항목"> -->
											<input type="hidden" name="orderAddr" id="orderAddr" value="${user.address}">
									</div>
								</div>
                            </div>
                            <div class="row">
		                        <div class="col-lg-12">
		                            <div class="checkout__input">
			                        <p>집전화</p>
			                       	<datalist id="tel1List"> 
			                       		<option value="02">02</option>
			                       		<option value="031">031</option>
			                       		<option value="032">032</option>
			                       		<option value="033">033</option>
			                       		<option value="041">041</option>
			                       		<option value="042">042</option>
			                       		<option value="043">043</option>
			                       		<option value="044">044</option>
			                       		<option value="051">051</option>
			                       		<option value="052">052</option>
			                       		<option value="053">053</option>
			                       		<option value="054">054</option>
			                       		<option value="055">055</option>
			                       		<option value="061">061</option>
			                       		<option value="062">062</option>
			                       		<option value="063">063</option>
			                     		<option value="064">064</option>
			                       	</datalist> 
			                       	<input list="tel1List" id="tel1" name="tel1" value="tel1" style="font-size: 12px;"> -
								   	<input type="text" id="tel2" name="tel2" value="tel2" maxlength="4"> - 
								   	<input type="text" id="tel3" name="tel3" value="tel3" maxlength="4"> 
								   	<input type="hidden" name="recipientTel" id="recipientTel" value="${user.tel}">
			                    	</div>
			                    </div>
			                </div>
                            <div class="row">
                                <div class="col-lg-12">
                                	<div class="checkout__input">
	                                    <p>휴대전화<span>*</span></p>
				                       	<input type="text" id="phone1" name="phone1" maxlength="3" value="010" required> - 
									   	<input type="text" id="phone2" name="phone2" maxlength="4" value="phone2"required> - 
									   	<input type="text" id="phone3" name="phone3" maxlength="4" value="phone3" required> 
									   	<input type="hidden" name="recPhone" id="recPhone" value="${user.phone}">
									</div>
                                </div>
                            </div>
                            <div class="row">
                           		<div class="col-lg-12">
                           			<div class="checkout__input">
                           				<p>이메일</p>
                           				<input type="text" id="email1" name="email1" value="email1"> @
                           				<datalist id="email2List">
		                                	<option value="gmail.com">gmail.com</option>
		                                	<option value="naver.com">naver.com</option>
		                                	<option value="daum.net">daum.net</option>
		                                	<option value="hanmail.net">hanmail.net</option>
		                                	<option value="yahoo.co.kr">yahoo.co.kr</option>
		                                	<option value="hotmail.com">hotmail.com</option>
		                                	<option value="empas.com">empas.com</option>
		                                 </datalist>
		                                 <input list="email2List" id="email2" name="email2" value="email2" style="font-size: 12px;" required>
		                                 <input type="hidden" name="recEmail" id="recEmail" value="${user.email}">
                           			</div>
                           		</div>
                            </div>
                            
                            <div class="checkout__input">
                                <p>배송메세지</p>
                                <input type="text" id="deliMsg" name="deliMsg" style="width: 565px;" placeholder="100자 이내로 입력">
                            </div>
                        </div>
                    </div>
                    <div style="text-align:center;">
                    	<button type="submit" class="site-btn" style="padding: 13px 60px;">결제하기</button>
                    </div>
       		 	</div>
            </form>
        </div>
    </section>
    
	<%@include file="../includes/footer.jsp" %>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	$(".checkout__input > p").css({"width" : "150px"});
	
	//휴대폰 
    var phone = document.getElementById('recPhone').value;
	var phoneArr = phone.split("-");
	document.getElementById('phone2').value = phoneArr[1];
	document.getElementById('phone3').value = phoneArr[2];
	//집전화
	var tel = document.getElementById('recipientTel').value;
	var telArr = tel.split("-");
	document.getElementById('tel1').value = telArr[0];
	document.getElementById('tel2').value = telArr[1];
	document.getElementById('tel3').value = telArr[2];
	//이메일
	var email = document.getElementById('recEmail').value;
	var emailArr = email.split("@");
	document.getElementById('email1').value = emailArr[0];
	document.getElementById('email2').value = emailArr[1];
	//주소
	var address = document.getElementById('orderAddr').value;
	var addressArr = address.split("  ");
	document.getElementById('address1').value = addressArr[0];
	document.getElementById('address2').value = addressArr[1];
	
	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				//var extraAddr = '';  //참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				/* // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if(data.userSelectedType === 'R'){
				    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
				    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				        extraAddr += data.bname;
				    }
				    // 건물명이 있고, 공동주택일 경우 추가한다.
				    if(data.buildingName !== '' && data.apartment === 'Y'){
				        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				    }
				    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				    if(extraAddr !== ''){
				        extraAddr = ' (' + extraAddr + ')';
				    }
				    // 조합된 참고항목을 해당 필드에 넣는다.
				    document.getElementById("extraAddress").value = extraAddr;
				
				} else {
				    document.getElementById("extraAddress").value = '';
				} */

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('zip').value = data.zonecode;
				document.getElementById("address1").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById("address2").focus();
			}
		}).open();
	}
	</script>
</body>
</html>