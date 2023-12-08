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
        	<div class="shoping__cart__table">
        		<h4>주문상품</h4>
        		<table>
        			<thead>
                        <tr>
                        	<th>선택</th>
                            <th colspan="2" class="shoping__product">상품정보</th>
                            <th>수량</th>
                            <th>주문금액</th>
                            <th><!-- 삭제 버튼 --></th>
                        </tr>
                    </thead>
	                <tbody>
	                	<c:forEach items="${order}" var="order">
	                    <tr>
	                    	<td class="shoping__cart__item__close" style="width:80px; text-align: center;">
	                            <span><input type="checkbox"></span>
	                        </td>
	                    	<td class="shoping__cart__total">
	                            <img src="${contextPath}/resources/upload/product/thumbnails/${order.prodMainImg}" alt="" style="width:100px;">
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
	                        </td>
	                        <td class="shoping__cart__item__close">
	                            <a class="delete_btn" data-cartno="${order.cartNo}"><span class="icon_close"></span></a>
	                        </td>
	                    </tr>
	                    </c:forEach>
	                </tbody>
	            </table>
        	</div>
            <div class="checkout__form">
                <h4>배송 정보</h4>
                ${user }
                <form action="#">
                    <div class="row">
                        <div class="col-lg-12 col-md-6">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>이름<span>*</span></p>
                                        <input type="text" value="${user.userName}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                            	<div class="col-lg-12">
		                            <div class="checkout__input">
		                            	<p>주소<span>*</span></p>
			                                <label for="diff-acc">
			                                    Ship to a different address?
			                                    <input type="checkbox" id="diff-acc">
			                                    <span class="checkmark"></span>
			                                </label>
				                      	<input type="text" id="zip" name="zip" value="${user.zip}" placeholder="우편번호">
				                      	<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
										<input type="text" id="address1" name="address1" value="address1" placeholder="주소"><br>
										<input type="text" id="address2" name="address2" value="address2" placeholder="상세주소">
										<!-- <input type="text" id="extraAddress" placeholder="참고항목"> -->
										<input type="hidden" name="address" id="address" value="${user.address}">
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
								   	<input type="hidden" name="tel" id="tel" value="${user.tel}">
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
									   	<input type="hidden" name="phone" id="phone" value="${user.phone}">
									</div>
                                </div>
                            </div>
                            <div class="row">
                           		<div class="col-lg-12">
                           			<div class="checkout__input">
                           				<p>이메일<span>*</span></p>
                           				<input type="text" id="email1" name="email1" value="email1" required> @
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
		                                 <input type="hidden" name="email" id="email" value="${user.email}">
                           			</div>
                           		</div>
                            </div>
                            
                            <div class="checkout__input">
                                <p>배송메세지</p>
                                <input type="text">
                            </div>
                            <button type="submit" class="site-btn">PLACE ORDER</button>
                        </div>
                        
                    </div>
                </form>
            </div>
        </div>
    </section>
    
	<%@include file="../includes/footer.jsp" %>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	$(".checkout__input > p").css({"width" : "150px"});
	
	//휴대폰 
    var phone = document.getElementById('phone').value;
	var phoneArr = phone.split("-");
	document.getElementById('phone2').value = phoneArr[1];
	document.getElementById('phone3').value = phoneArr[2];
	//집전화
	var tel = document.getElementById('tel').value;
	var telArr = tel.split("-");
	document.getElementById('tel1').value = telArr[0];
	document.getElementById('tel2').value = telArr[1];
	document.getElementById('tel3').value = telArr[2];
	//이메일
	var email = document.getElementById('email').value;
	var emailArr = email.split("@");
	document.getElementById('email1').value = emailArr[0];
	document.getElementById('email2').value = emailArr[1];
	//주소
	var address = document.getElementById('address').value;
	var addressArr = address.split("  ");
	document.getElementById('address1').value = addressArr[0];
	document.getElementById('address2').value = addressArr[1];
	</script>
</body>
</html>