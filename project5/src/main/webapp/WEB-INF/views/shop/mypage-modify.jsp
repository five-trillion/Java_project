<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
 	<%@ include file="../includes/src.jsp" %>
 	<style>
 	.inputBlock input {
 		margin : 0;
 	}
 	.grid {
 		display: grid;
 		grid-template: 
 	}
 	</style>
</head>

<body>
   
	<%@ include file="../includes/header.jsp" %>
	
		<div class="container">
			<%@include file="../includes/mp_header.jsp" %>
            <div class="checkout__form">
                <div class="mp_title fs15">회원정보</div>
                <div class="checkout__input"><P style="float:right;"><span>*</span> 필수입력사항</P></div>
                <form action="mypage-modify" method="post" name="frm" id="frm">
                	<div class="col-lg-10 col-md-6">
	                   <div class="checkout__input">
	                        <p>아이디<span>*</span></p>
	                        <input type="text" name="userId" class="id_input" value="${user.userId}" readonly>
	    	           </div>
	                   <div class="checkout__input">
	                        <p>비밀번호<span>*</span></p>
	                        <input type="password" name="userPw" value="${user.userPw}" placeholder="영문과 숫자, 특수문자를 조합하여 6~16자로 입력해주세요." required>
	                   </div>
	                    <div class="checkout__input">
	                        <p>비밀번호 확인<span>*</span></p>
	                        <input type="password" name="userPwCk" value="${user.userPw}" placeholder="비밀번호를 다시 한번 입력해주세요." required>
	                    </div>
	                     <div class="checkout__input">
	                        <p>이름<span>*</span></p>
	                        <input type="text" name="userName" value="${user.userName}" required>
	                    </div>
                      	<div class="checkout__input flex">
	                        <p>휴대전화<span>*</span></p>
	                        <div class="inputBlock" style="display: inline-block; margin-bottom: 10px;">
		                       	<input type="text" id="phone1" name="phone1" maxlength="3" value="010" required> - 
							   	<input type="text" id="phone2" name="phone2" maxlength="4" value="phone2"required> - 
							   	<input type="text" id="phone3" name="phone3" maxlength="4" value="phone3" required> 
							   	<input type="hidden" name="phone" id="phone" value="${user.phone}">
	                        </div>
	                    </div>
	                    <div class="checkout__input">
	                        <p>집전화</p>
	                        <div class="inputBlock" style="display: inline-block; margin-bottom: 10px;">
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
		                       	<input list="tel1List" id="tel1" name="tel1" value="tel1"> - 
							   	<input type="text" id="tel2" name="tel2" value="tel2" maxlength="4"> - 
							   	<input type="text" id="tel3" name="tel3" value="tel3" maxlength="4"> 
							   	<input type="hidden" name="tel" id="tel" value="${user.tel}">
						   	</div>
	                    </div>
	                    <div class="row">
	                        <div class="col-lg-12">
	                            <div class="checkout__input">
	                                <p>이메일<span>*</span></p>
	                                <div class="inputBlock" style="display: inline-block; margin-bottom: 10px;">
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
		                                 <input list="email2List" id="email2" name="email2" value="eamil2" required>
		                                <input type="hidden" name="email" id="email" value="${user.email}">
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="checkout__input">
	                        <p>주소<span>*</span></p> 
	                      	<input type="text" id="zip" name="zip" value="${user.zip}" placeholder="우편번호">
	                      	<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" id="address1" name="address1" value="address1" placeholder="주소"><br>
							<input type="text" id="address2" name="address2" value="address2" placeholder="상세주소">
							<!-- <input type="text" id="extraAddress" placeholder="참고항목"> -->
							<input type="hidden" name="address" id="address" value="${user.address}">
	                    </div>  
	                  	<div class="checkout__input">
	                        <p>닉네임</p>
	                        <input type="text" id="nick" name="nick" value="${user.nick}" placeholder="사용하실 닉네임을 8글자 이내로 입력해주세요.">
	                    </div>
	                	<div class="checkout__input">
	                		<button type="button" id="deletebtn" name="deletebtn" onclick="showDeleteModal()">삭제</button>
	                  		<input type="submit" value ="수정하기" onclick="return modifyCheck()" class="join_btn">
	                  	</div>  
	                </div>
                </form>
            </div>
        </div>
        
        <!-- 회원탈퇴 modal -->
		<div id="deleteModal" class="modal" tabindex="-1" role="dialog">
		    <div class="modal-dialog" role="document">
		        <div class="modal-content">
		            <div class="modal-header">
		                <h5 class="modal-title">회원탈퇴</h5>
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                    <span aria-hidden="true">&times;</span>
		                </button>
		            </div>
		            <div class="modal-body">
		                <p>회원탈퇴하시면 현재 보유 중인 포인트가 전부 소멸됩니다. 정말로 탈퇴하시겠습니까? </p>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
		                <button type="button" class="btn btn-primary" onclick="confirmDelete()">확인</button>
		            </div>
		        </div>
		    </div>
		</div>
        
  	<%@ include file="../includes/footer.jsp" %>
    
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript">
    
    	$(".modify").addClass("on");
    
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
	
		//유효성 검사
    	function modifyCheck() {	
    		//비밀번호
    		if(document.frm.userPw.value.length == 0) {
    			alert("비밀번호를 입력해주세요.")
    			frm.userPw.focus();
    			return false;
    		}
    		if(document.frm.userPwCk.value.length == 0) {
    			alert("비밀번호를 다시 입력해주세요.")
    			frm.userPwCk.focus();
    			return false;
    		}
    		if(document.frm.userPw.value != document.frm.userPwCk.value) {
    			alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.")
    			frm.userPwCk.select();
    			return false;
    		}
    		//이름
    		if(document.frm.userName.value.length == 0) {
    			alert("이름을 입력해주세요.")
    			frm.userName.focus();
    			return false;
    		}
    		//휴대전화
    		if(document.frm.phone1.value.length != 3) {
    			alert("휴대폰 번호를 확인해주세요.")
    			frm.phone1.focus();
    			return false;
    		}
    		if(document.frm.phone2.value.length != 4) {
    			alert("휴대폰 번호를 확인해주세요.")
    			frm.phone2.focus();
    			return false;
    		}
    		if(document.frm.phone3.value.length != 4) {
    			alert("휴대폰 번호를 확인해주세요.")
    			frm.phone3.focus();
    			return false;
    		} 
    		//이메일
    		if(document.frm.email1.value.length == 0) {
    			alert("이메일을 입력해주세요.")
    			frm.email1.focus();
    			return false;
    		}
    		if(document.frm.email2.value == "") {
    			alert("이메일을 확인해주세요.")
    			frm.email2.focus();
    			return false;
    		}
    		//주소
    		if(document.frm.zip.value == "") {
    			alert("우편번호를 입력해주세요.");
    			frm.zip.focus();
    			return false;
    		}
    		
    		if(document.frm.address1.value == "") {
    			alert("주소를 입력해주세요.");
    			frm.address1.focus();
    			return false;
    		}
    		if(document.frm.address2.value == "") {
    			alert("상세주소를 입력해주세요.");
    			frm.address2.focus();
    			return false;
    		}
    	
    	}
 	
    	function execDaumPostcode() {
    		new daum.Postcode({
    	    	oncomplete: function(data) {
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

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('zip').value = data.zonecode;
	                document.getElementById("address1").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("address2").focus();
	            }
	        }).open();
	    }
    	
    	// 회원 탈퇴 모달
    	function showDeleteModal() {
        	$("#deleteModal").modal("show");
        }
    	
    	function confirmDelete() {
             // 삭제 확인 버튼을 눌렀을 때의 처리
             document.frm.action = "/shop/mypage-delete";
             document.frm.submit();
         }
    	 
		function closeModal() {
             // 모달창 닫기
             $("#deleteModal").remove();
         }
	  
    </script>

</body>
</html>