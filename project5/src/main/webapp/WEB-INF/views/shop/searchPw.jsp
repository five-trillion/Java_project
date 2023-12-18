<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<%@ include file="../includes/src.jsp" %>
 
</head>
<body>
	<%@ include file="../includes/header.jsp"%>

	<div class="container">

		<div class="row">
			<div class="col-lg-12">
				<div class="contact__form__title">
					<h2>비밀번호 찾기</h2>
				</div>
			</div>
		</div>
		<form method="post" action="login" id="frm" class="loginForm"
			name="frm" onsubmit="return saveIdCk()">
			<div class="col-lg-8 col-md-6">
				<div class="col-lg-8 col-md-6">
					<div class="checkout__input">
						<input type="text" name="userId" placeholder="아이디">
					</div>
				</div>
				<div class="col-lg-8 col-md-6">
					<div class="checkout__input">
						<input type="password" name="userPw" placeholder="비밀번호">
					</div>
				</div>
				<div class="checkout__input__checkbox">

	                <input type="checkbox" id="saveId" name="saveId" onclick="saveId()"> 아이디 저장
	                 <span class="checkmark"></span>
                </div>
                 <c:if test="${result==0}">
               		<div class ="login_warn"> 아이디 혹은 비밀번호를 다시 입력해주세요.</div>

                </c:if>
	            <div class="col-lg-8 col-md-6">
	            	<div class="checkout__input">
	            		<input type="submit" id="loginBtn" value="로그인">
	            	</div>
	           	</div>
	        </div>
	        <div class="checkout__input"><a href="/shop/join">회원가입</a></div> 	
	        <div class="checkout__input"><a href="#">아이디/비밀번호 찾기</a></div> 
	        
	    </form>
	</div>
	
	<%@ include file="../includes/footer.jsp" %>
	
<script type="text/javascript">
   /*  $(document).ready(function() {
        // 페이지 로딩 시 저장된 아이디 확인
        var savedId = getCookie("savedId");
        if (savedId !== "") {
            $("#userId").val(savedId);
            $("#saveId").prop("checked", true);
        }

        // 로그인 버튼 클릭 시
        $("#loginBtn").click(function() {
            // 아이디 저장 체크 여부 확인
            if ($("#saveId").is(":checked")) {
                // 체크되어 있으면 쿠키에 아이디 저장
                var userId = $("#userId").val();
                setCookie("savedId", userId, 30);
            } else {
                // 체크되어 있지 않으면 쿠키 삭제
                setCookie("savedId", "", -1);
            }
        });
    });

    // 쿠키 설정 함수
    function setCookie(name, value, days) {
        var expires = "";
        if (days) {
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = "; expires=" + date.toUTCString();
        }
        document.cookie = name + "=" + (value || "") + expires + "; path=/";
    }

    // 쿠키 가져오기 함수
    function getCookie(name) {
        var nameEQ = name + "=";
        var cookies = document.cookie.split(';');
        for (var i = 0; i < cookies.length; i++) {
            var cookie = cookies[i];
            while (cookie.charAt(0) === ' ') {
                cookie = cookie.substring(1, cookie.length);
            }
            if (cookie.indexOf(nameEQ) === 0) {
                return cookie.substring(nameEQ.length, cookie.length);
            }
        }
        return "";
    } */
    
    
    $(function() {
    	var cookie_userId = getLogin();
    	console.log("stored userId from cookie : " + cookie_userId);
    	if(cookie_userId != "") {
    		$("#userId").val(cookie_userId);
    		$("#saveId").prop("checked",true);
    		console.log("Setting userId from cookie");
    	}
    	$("#saveId").on("click",function() {
    		var _this = this;
    		var isRemember;
    		if($(_this).is(":checked")) {
    			isRemember = confirm ("아이디를 저장하시겠습니까?");
    			if(!isRemember){
    				$(_this).prop("checked",false);
    				console.log("User chose to remember")
    			}
    		}
    	});
    	$("#loginBtn").on("click",function() {
    		if($("#saveId").is(":checked")) {
    			saveLogin($("#userId").val());
    			console.log("Saving userId");
    		} else {
    			saveLogin("");
    			console.log("Clearing userId")
    		}
    	});	
    });
    
    function saveLogin(userId) {
    	if(userId != "") {
    		setSave("userId",userId,7);
    	} else {
    		setSave("userId",userId,-1);
    	}
    };
    
    function setSave(name,value,expiredays) {
    	var date = new Date();
    	date.setDate(date.getDate()+expiredays);
    	document.cookie = name+"="+escape(value)+";path=/;expires="+date.toGMTString()+";"
    }
    
    function getLogin() {
    	var ck = document.cookie+";";
    	var index = ck.indexOf("userId",0);
    	var val = "";
    	
    	if(index != -1) {
    		ck = ck.substring(index,ck.length);
    		begin = ck.indexOf("=",0)+1;
    		end = ck.indexOf(";",begin);
    		val = unescape(ck.substring(begin,end));
    	}
    	return val;
    } 
    
</script>

</body>
</html>