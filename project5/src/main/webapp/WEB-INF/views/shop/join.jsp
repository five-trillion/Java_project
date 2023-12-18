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
	<style>
		#termsContent1 {
			max-height : 100px;
			overflow-y : auto;
			border : 1px solid #ccc;
			padding : 5px; 
		}
		#termsContent2 {
			max-height : 100px;
			overflow-y : auto;
			border : 1px solid #ccc;
			padding : 5px; 
		}
		#termsContent3 {
			max-height : 100px;
			overflow-y : auto;
			border : 1px solid #ccc;
			padding : 5px; 
		}
		.checkout__input__checkbox {
			margin : 5px 0;
		}
	</style>

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
			<form action="join" method="post" name="frm" class="joinForm" id="frm">
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
						<div class="checkout__input">
	                        <p>비밀번호<span>*</span></p>
	                        <input type="password" name="userPw" placeholder="영문과 숫자, 특수문자를 조합하여 6~16자로 입력해주세요." required>
	                    </div>
	                    <div class="checkout__input">
	                        <p>비밀번호 확인<span>*</span></p>
	                        <input type="password" name="userPwCk" placeholder="비밀번호를 다시 한번 입력해주세요." required>
	                    </div>
	                     <div class="checkout__input">
	                        <p>이름<span>*</span></p>
	                        <input type="text" name="userName" required>
	                    </div>
                      	<div class="checkout__input calling">
	                        <p>휴대전화<span>*</span></p>
	                        <div class="phoneBox">
		                       	<input type="text" id="phone1" name="phone1" maxlength="3" value="010" required> - 
							   	<input type="text" id="phone2" name="phone2" maxlength="4" required> - 
							   	<input type="text" id="phone3" name="phone3" maxlength="4" required> 
							   	<input type="hidden" name="phone" id="phone">
	                        </div>
	                    </div>
	                    <div class="checkout__input calling">
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
	                    <div class="row">
	                        <div class="col-lg-6">
	                            <div class="checkout__input">
	                                <p>이메일<span>*</span></p>
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
		                                 <input list="email2List" id="email2" name="email2" required placeholder="직접입력">
		                                <input type="hidden" name="email" id="email">
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="checkout__input">
	                        <p>주소<span>*</span></p> 
	                        <div class="inputBlock">
		                      	<input type="text" id="zip" name="zip" placeholder="우편번호">
		                      	<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
								<input type="text" id="address1" name="address1" placeholder="주소"><br>
								<input type="text" id="address2" name="address2" placeholder="상세주소">
								<!-- <input type="text" id="extraAddress" placeholder="참고항목"> -->
								<input type="hidden" name="address" id="address">
                    		</div>
	                    </div>  
	                  	<div class="checkout__input">
	                        <p>닉네임</p>
	                        <input type="text" id="nick" name="nick" placeholder="사용하실 닉네임을 8글자 이내로 입력해주세요.">
	                    </div>
	                	<div class="checkout__input">
	                        <p>생년월일</p>
	                        <input type="text" id="inputBirth" name="inputBirth" placeholder="생년월일 8자리를 입력해주세요. ex)19951128">
	                        <input type="hidden" id="birth" name="birth">
	                    </div>
	                  	<div class="checkout__input__checkbox">
	                  		<label for="checkboxAll">
	                            <span style="color:black; font-weight:bold;">이용약관, 개인정보 수집 및 이용에 모두 동의합니다.</span>
	                            <input type="checkbox" id="checkboxAll" name="checkboxAll" onchange="checkAll()">
	                            <span class="checkmark"></span>
	                        </label>
	                  	</div>
	                  	<div class="checkout__input__checkbox">
					        <label for="checkbox1" id="labelCheckbox1">
           						<span style="color:black;">[필수] 이용약관 동의</span>
					            <input type="checkbox" id="checkbox1" name="checkbox1">
					            <span class="checkmark"></span>
					            <span style="color:black; text-decoration:underline; cursor: pointer; text-align:right;" onclick="toggleTerms('termsContent1', 'checkbox1')">약관보기</span>
					        </label>
					    </div>
	                  	<div id="termsContent1" style="display: none;">
							제1조(목적)<br>
							이 약관은 이삼오구 회사(전자상거래 사업자)가 운영하는 픈픈 사이버 몰(이하 “몰”이라 한다)에서 제공하는 
							인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리.의무 및 책임사항을 규정함을 목적으로 합니다.<br>
							※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」<br>
							제2조(정의)<br>
							① “몰”이란 이삼오구 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 
							이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br>
							② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br>
							③ ‘회원’이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br>
							④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.<br>
							제3조 (약관 등의 명시와 설명 및 개정)<br>
							① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 
							전화번호.모사전송번호.전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보보호책임자등을 이용자가 쉽게 알 수 있도록 
							픈픈 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br>
							② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회.배송책임.환불조건 등과 같은 중요한 내용을 
							이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br>
							③ “몰”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 
							「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 
							「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br>
							④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 
							다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 
							이 경우 “몰“은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.<br>
							⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 
							개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 
							제3항에 의한 개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br>
							⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률,
							공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.<br>
							<br>부 칙(시행일) 이 약관은 2021년 3월 23일부터 시행합니다.
						</div>
	                  	<div class="checkout__input__checkbox">
	                  		<label for="checkbox2" id="labelCheckbox2">
	                            <span style="color:black;">[필수] 개인정보 수집 및 이용 동의</span>
	                            <input type="checkbox" id="checkbox2" name="checkbox2">
	                            <span class="checkmark"></span>
	                            <span style="color:black; text-decoration:underline; cursor: pointer; text-align:right;" onclick="toggleTerms('termsContent2', 'checkbox2')">약관보기</span>
	                        </label>
	                  	</div>
	                  	<div id="termsContent2" style="display: none;">
							1. 개인정보 수집목적 및 이용목적<br>
							가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산<br>
							&nbsp;콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스<br>
							나. 회원 관리<br>
							&nbsp;회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리 , 고지사항 전달<br>
							2. 수집하는 개인정보 항목 : 이름 , 로그인ID , 비밀번호 , 이메일 , 14세미만 가입자의 경우 법정대리인의 정보<br>
							3. 개인정보의 보유기간 및 이용기간<br>
							원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.<br>
							가. 회사 내부 방침에 의한 정보 보유 사유<br>
							o 부정거래 방지 및 쇼핑몰 운영방침에 따른 보관 : 5년<br>
							나. 관련 법령에 의한 정보보유 사유<br>
							o 계약 또는 청약철회 등에 관한 기록<br>
							-보존이유 : 전자상거래등에서의소비자보호에관한법률<br>
							-보존기간 : 5년<br>
							o 대금 결제 및 재화 등의 공급에 관한 기록<br>
							-보존이유: 전자상거래등에서의소비자보호에관한법률<br>
							-보존기간 : 5년<br>
							o 소비자 불만 또는 분쟁처리에 관한 기록<br>
							-보존이유 : 전자상거래등에서의소비자보호에관한법률<br>
							-보존기간 : 3년<br>
							o 로그 기록<br>
							-보존이유: 통신비밀보호법<br>
							-보존기간 : 3개월<br>
							※ 동의를 거부할 수 있으나 거부시 회원 가입이 불가능합니다.<br>
						</div>
	                  	<div class="checkout__input__checkbox">
	                  		<label for="checkbox3" id="labelCheckbox3">
	                          	<span style="color:black;">[선택] 마케팅 활용 동의 및 광고 수신 동의</span>
	                            <input type="checkbox" id="checkbox3" name="checkbox3" onchange="eventYn()">
	                            <span class="checkmark"></span>
	                            <span style="color:black; text-decoration:underline; cursor: pointer; text-align:right;" onclick="toggleTerms('termsContent3', 'checkbox3')">약관보기</span>
	                        </label>
	                  	</div>
	                  	<div id="termsContent3" style="display: none;">
							할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 정보를 SMS나 이메일로 받아보실 수 있습니다.<br>
							단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.<br>
							선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 회원가입 후 회원정보수정 페이지에서 언제든지 수신여부를 변경하실 수 있습니다.
						</div>
	                  	<input type="hidden" id="eventYn" name="eventYn" value="1">
	                  	<div class="checkout__input">
	                  		<input type="submit" value ="회원가입" onclick="return joinCheck()" class="join_btn">
	                  	</div>  
	                </div>
	            </div>
            </form>
        </div>
	</div>
        
  	<%@ include file="../includes/footer.jsp" %>
    
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript">
    	
    	function joinCheck() {	//유효성 검사 함수
        //아이디
    		var userId = document.frm.userId.value;
    		var userIdReg = /^[a-zA-Z0-9]{6,16}$/;
    		if(userId.length == 0) {
    			alert("아이디를 입력해주세요.");
    			frm.userId.focus();
    			return false;
    		}
    		if(!userIdReg.test(userId)){
    			alert("아이디는 영문과 숫자를 포함하여 6~16자로 입력해주세요.");
    			frm.userId.focus();
    			return false;
    		}
    		if ($('.id_input_re').css('display') !== 'none') {
    	        alert("이미 존재하는 아이디입니다. 다른 아이디를 입력해주세요.");
    	        return false;
    	    }
    		
    		//비밀번호
    		var userPw = document.frm.userPw.value;
    		var userPwCk = document.frm.userPwCk.value;
    		var userPwReg = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-]).{6,16}$/;
    		if(userPw.length == 0) {
    			alert("비밀번호를 입력해주세요.");
    			frm.userPw.focus();
    			return false;
    		}
    		if(userPwCk.length == 0) {
    			alert("비밀번호를 다시 입력해주세요.");
    			frm.userPwCk.focus();
    			return false;
    		}
    		if(document.frm.userPw.value != document.frm.userPwCk.value) {
    			alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
    			frm.userPwCk.select();
    			return false;
    		}
    		if(!userPwReg.test(userPw)) {
    			alert("영문, 숫자, 특수문자를 조합하여 6자 이상 16자 이하의 비밀번호를 입력해주세요.");
    			frm.userPw.focus();
    			return false;
    		}
    		
    		//이름
    		if(document.frm.userName.value.length == 0) {
    			alert("이름을 입력해주세요.")
    			frm.userName.focus();
    			return false;
    		}
    		//휴대전화
    		var phone1 = document.getElementById('phone1').value;
    		var phone2 = document.getElementById('phone2').value;
    		var phone3 = document.getElementById('phone3').value;
    		var phone = phone1 + "-" + phone2 + "-"+ phone3;
    		document.getElementById('phone').value = phone;
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
    		if (!/^\d+$/.test(phone1) || !/^\d+$/.test(phone2) || !/^\d+$/.test(phone3)) {
    	        alert("휴대전화 번호를 정확히 입력해주세요.");
    	        return false;
    	    }
    		
    		//집전화
    		var tel1 = document.getElementById('tel1').value;
    		var tel2 = document.getElementById('tel2').value;
    		var tel3 = document.getElementById('tel3').value;
    		var tel = tel1 + "-" + tel2 + "-" + tel3;
    		document.getElementById('tel').value = tel;
    		if (tel1.length > 0 && tel2.length > 0 &&tel3.length > 0) {
    	        // 숫자만 입력되었는지 검증
    	        if (!/^\d+$/.test(tel1) || !/^\d+$/.test(tel2) || !/^\d+$/.test(tel3)) {
    	            alert("집전화 번호를 정확히 입력해주세요.");
    	            document.frm.tel1.focus();
    	            return false;
    	        }
    	    }
    		//이메일
    		var email1 = document.getElementById('email1').value;
    		var email2 = document.getElementById('email2').value;
    		var email = email1 + "@" + email2
    		document.getElementById('email').value = email; 
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
    		var address1 = document.getElementById('address1').value;
    		var address2 = document.getElementById('address2').value;
    		var address = address1 + "  " + address2;
    		document.getElementById('address').value = address;
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
    		
    		// 닉네임
    	    if (document.frm.nick.value.length > 8) {
    	        alert("닉네임은 8글자 이하로 입력해주세요.");
    	        frm.nick.focus();
    	        return false;
    	    }
    		
    		//생년월일
    		var inputBirth = document.getElementById("inputBirth").value;
    		var birth = formatBirth(inputBirth);
    		if(inputBirth != "") {
    			if(inputBirth.length != 8 || isNaN(inputBirth)) {
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
    		var eventYn = document.getElementById('eventYn');

    		if(!checkbox1.checked) {
    			alert("이용약관을 읽고 동의해주세요.")
    			return false;
    		}
    		if(!checkbox2.checked) {
    			alert("개인정보 수집 및 이용을 읽고 동의해주세요.")
    			return false;
    		}
    		eventYn.value = checkbox3.checked? "0" : "1"; 
    		return true; 
    	}
    	
    	//생년월일 함수
    	function formatBirth(inputBirth) {
    		var year = inputBirth.substring(0,4);
    		var month = inputBirth.substring(4,6);
    		var day = inputBirth.substring(6,8);
    		return year + "/" + month + "/" + day;
    	}
    	
    	//약관 함수
    	function checkAll() {
    		var checkboxAll = document.getElementById('checkboxAll');
    		var checkboxes = document.querySelectorAll('input[name^="checkbox"]');
    		for(var i=0; i<checkboxes.length; i++) {
    			checkboxes[i].checked = checkboxAll.checked;
    		}
    	}
    	
    	function eventYn() {
    		var checkbox3 = document.getElementById('checkbox3');
    		var eventYn = document.getElementById('eventYn');
    		eventYn.value = checkbox3.checked ? "0" : "1";
    	}
    	
    	function toggleTerms(contentId, checkboxId) {
            var checkbox = document.getElementById(checkboxId);
            var termsContent = document.getElementById(contentId);
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
			var checkboxes = document.querySelectorAll('input[name^="checkbox"]');
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