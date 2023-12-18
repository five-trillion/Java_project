<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<%@ include file="../includes/src.jsp"%>
</head>

<body>

	<%@ include file="../includes/header.jsp"%>

	<div class="container">
		<div class="checkout__form">
			<h2 style="text-align: center; font-weight: bold;">회원가입</h2>
			<div class="checkout__input">
				<P style="float: right;">
					<span>*</span> 필수입력사항
				</P>
			</div>
			<form action="join" method="post" name="frm" class="joinForm"
				id="frm">
				<div class="col-lg-8 col-md-6 joinBox">
					<div class="checkout__input relative">
						<p>
							아이디<span>*</span>
						</p>
						<input type="text" name="userId" class="id_input"
							placeholder="영문과 숫자를 조합하여 6~16자로 입력해주세요." required>
						<div class="idMsg">
							<span
							class="id_input_re_1" style="color: green; display: none;">사용
							가능한 아이디입니다.</span> <span class="id_input_re_2"
							style="color: red; display: none;">이미 존재하는 아이디입니다.</span>
						</div>
					</div>
					<div class="checkout__input">
						<p>
							비밀번호<span>*</span>
						</p>
						<input type="password" name="userPw"
							placeholder="영문과 숫자, 특수문자를 조합하여 6~16자로 입력해주세요." required>
					</div>
					<div class="checkout__input">
						<p>
							비밀번호 확인<span>*</span>
						</p>
						<input type="password" name="userPwCk"
							placeholder="비밀번호를 다시 한번 입력해주세요." required>
					</div>
					<div class="checkout__input">
						<p>
							이름<span>*</span>
						</p>
						<input type="text" name="userName" required>
					</div>
					<div class="checkout__input">
						<p>
							휴대전화<span>*</span>
						</p>
						<div class="phoneBox">
							<input type="text" id="phone1" name="phone1" maxlength="3"
								value="010" required> - <input type="text" id="phone2"
								name="phone2" maxlength="4" required> - <input
								type="text" id="phone3" name="phone3" maxlength="4" required>
							<input type="hidden" name="phone" id="phone">
						</div>
					</div>
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
						<div class="phoneBox">
							<input list="tel1List" id="tel1" name="tel1"> - <input
								type="text" id="tel2" name="tel2" maxlength="4"> - <input
								type="text" id="tel3" name="tel3" maxlength="4"> <input
								type="hidden" name="tel" id="tel">
						</div>
					</div>
					<div class="checkout__input">
						<p>
							이메일<span>*</span>
						</p>
						<div class="phoneBox">
							<input type="text" id="email1" name="email1" required> @
							<datalist id="email2List">
								<option value="gmail.com">gmail.com</option>
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="empas.com">empas.com</option>
							</datalist>
							<input list="email2List" id="email2" name="email2" required
								placeholder="직접입력"> <input type="hidden" name="email"
								id="email">
						</div>
					</div>
					<div class="checkout__input highText">
						<p class="highText">
							주소<span>*</span>
						</p>
						<div class="inputBlock">
							<input type="text" id="zip" name="zip" placeholder="우편번호">
							<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" id="address1" name="address1" placeholder="주소"><br>
							<input type="text" id="address2" name="address2"
								placeholder="상세주소">
							<!-- <input type="text" id="extraAddress" placeholder="참고항목"> -->
							<input type="hidden" name="address" id="address">
						</div>
					</div>
					<div class="checkout__input">
						<p>닉네임</p>
						<input type="text" id="nick" name="nick"
							placeholder="사용하실 닉네임을 8글자 이내로 입력해주세요.">
					</div>
					<div class="checkout__input">
						<p>생년월일</p>
						<input type="text" id="inputBirth" name="inputBirth"
							placeholder="생년월일 8자리를 입력해주세요. ex)19951128"> <input
							type="hidden" id="birth" name="birth">
					</div>
					<div class="checkout__input__checkbox">
						<label for="checkboxAll"> <a href="#"
							style="color: black; font-weight: bold;">이용약관, 개인정보 수집 및 이용에
								모두 동의합니다.</a> <input type="checkbox" id="checkboxAll"
							name="checkboxAll" onchange="checkAll()"> <span
							class="checkmark"></span>
						</label>
					</div>
					<div class="checkout__input__checkbox">
						<label for="checkbox1"> <a href="#" style="color: black;">[필수]
								이용약관 동의</a> <input type="checkbox" id="checkbox1" name="checkbox1">
							<span class="checkmark"></span>
						</label>
					</div>
					<div class="checkout__input__checkbox">
						<label for="checkbox2"> <a href="#" style="color: black;">[필수]
								개인정보 수집 및 이용 동의</a> <input type="checkbox" id="checkbox2"
							name="checkbox2"> <span class="checkmark"></span>
						</label>
					</div>
					<div class="checkout__input__checkbox">
						<label for="checkbox3"> <a href="#" style="color: black;">[선택]
								마케팅 활용 동의 및 광고 수신 동의</a> <input type="checkbox" id="checkbox3"
							name="checkbox3" onchange="eventYn()"> <span
							class="checkmark"></span>
						</label>
					</div>
					<input type="hidden" id="eventYn" name="eventYn" value="1">
					<div class="checkout__input">
						<input type="submit" value="회원가입" onclick="return joinCheck()"
							class="join_btn">
					</div>
				</div>
			</form>
		</div>
	</div>

	<%@ include file="../includes/footer.jsp"%>

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">
		function joinCheck() { //유효성 검사
			//아이디
			if (document.frm.userId.value.length == 0) {
				alert("아이디를 입력해주세요.")
				frm.userId.focus();
				return false;
			}
			//비밀번호
			if (document.frm.userPw.value.length == 0) {
				alert("비밀번호를 입력해주세요.")
				frm.userPw.focus();
				return false;
			}
			if (document.frm.userPwCk.value.length == 0) {
				alert("비밀번호를 다시 입력해주세요.")
				frm.userPwCk.focus();
				return false;
			}
			if (document.frm.userPw.value != document.frm.userPwCk.value) {
				alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.")
				frm.userPwCk.select();
				return false;
			}
			//이름
			if (document.frm.userName.value.length == 0) {
				alert("이름을 입력해주세요.")
				frm.userName.focus();
				return false;
			}
			//휴대전화
			var phone1 = document.getElementById('phone1').value;
			var phone2 = document.getElementById('phone2').value;
			var phone3 = document.getElementById('phone3').value;
			var phone = phone1 + "-" + phone2 + "-" + phone3;
			document.getElementById('phone').value = phone;
			if (document.frm.phone1.value.length != 3) {
				alert("휴대폰 번호를 확인해주세요.")
				frm.phone1.focus();
				return false;
			}
			if (document.frm.phone2.value.length != 4) {
				alert("휴대폰 번호를 확인해주세요.")
				frm.phone2.focus();
				return false;
			}
			if (document.frm.phone3.value.length != 4) {
				alert("휴대폰 번호를 확인해주세요.")
				frm.phone3.focus();
				return false;
			}
			//집전화
			var tel1 = document.getElementById('tel1').value;
			var tel2 = document.getElementById('tel2').value;
			var tel3 = document.getElementById('tel3').value;
			var tel = tel1 + "-" + tel2 + "-" + tel3;
			document.getElementById('tel').value = tel;
			//이메일
			var email1 = document.getElementById('email1').value;
			var email2 = document.getElementById('email2').value;
			var email = email1 + "@" + email2
			document.getElementById('email').value = email;
			if (document.frm.email1.value.length == 0) {
				alert("이메일을 입력해주세요.")
				frm.email1.focus();
				return false;
			}
			if (document.frm.email2.value == "") {
				alert("이메일을 확인해주세요.")
				frm.email2.focus();
				return false;
			}
			//주소
			if (document.frm.zip.value == "") {
				alert("우편번호를 입력해주세요.");
				frm.zip.focus();
				return false;
			}
			var address1 = document.getElementById('address1').value;
			var address2 = document.getElementById('address2').value;
			var address = address1 + "  " + address2;
			document.getElementById('address').value = address;
			if (document.frm.address1.value == "") {
				alert("주소를 입력해주세요.");
				frm.address1.focus();
				return false;
			}
			if (document.frm.address2.value == "") {
				alert("상세주소를 입력해주세요.");
				frm.address2.focus();
				return false;
			}

			//생년월일
			var inputBirth = document.getElementById("inputBirth").value;
			var birth = formatBirth(inputBirth);
			if (inputBirth != "") {
				if (inputBirth.length != 8 || isNaN(inputBirth)) {
					alert("생년월일을 형식에 맞게 입력해주세요.")
					document.frm.inputBirth.focus();
					return false;
				}
			}
			document.getElementById("birth").value = birth;

			//약관
			var checkboxAll = document.getElementById('checkboxAll');
			var checkbox1 = document.getElementById('checkbox1');
			var checkbox2 = document.getElementById('checkbox2');
			var checkbox3 = document.getElementById('checkbox3');

			if (!checkbox1.checked) {
				alert("이용약관을 읽고 동의해주세요.")
				return false;
			}
			if (!checkbox2.checked) {
				alert("개인정보 수집 및 이용을 읽고 동의해주세요.")
				return false;
			}
			eventYn.value = checkbox3.checked ? "0" : "1";
			return true;
		}
		//생년월일 함수
		function formatBirth(inputBirth) {
			var year = inputBirth.substring(0, 4);
			var month = inputBirth.substring(4, 6);
			var day = inputBirth.substring(6, 8);
			return year + "/" + month + "/" + day;
		}

		//약관 함수
		function checkAll() {
			var checkboxAll = document.getElementById('checkboxAll');
			var checkboxes = document
					.querySelectorAll('input[name^="checkbox"]');
			for (var i = 0; i < checkboxes.length; i++) {
				checkboxes[i].checked = checkboxAll.checked;
			}
		}

		function eventYn() {
			var checkbox3 = document.getElementById('checkbox3');
			var eventYn = document.getElementById('eventYn');
			eventYn.value = checkbox3.checked ? "0" : "1";
		}

		$('.id_input').on(
				"propertychange change keyup paste input",
				function() {
					var userId = $('.id_input').val();
					var data = {
						userId : userId
					}
					$.ajax({
						type : "post",
						url : "/shop/userIdCk",
						data : data,
						success : function(result) {
							//console.log("성공 여부" + result);
							if (result != 'fail') {
								$('.id_input_re_1').css("display",
										"inline-block");
								$('.id_input_re_2').css("display", "none");
							} else {
								$('.id_input_re_2').css("display",
										"inline-block");
								$('.id_input_re_1').css("display", "none");
							}
						}
					});
				});

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