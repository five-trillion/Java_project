<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<%@ include file="../includes/src.jsp"%>
<style>
.login_warn {
	margin-top: 10px;
	text-align: center;
	color: red;
}

.checkout__input input {
	width: 100%;
}
</style>
<script type="text/javascript">
	$(function() {

		fnInit();

	});

	function saveIdCk() {
		saveid();
	}

	function fnInit() {
		var cookieid = getCookie("saveid");
		console.log(cookieid);
		if (cookieid != "") {
			$("input:checkbox[id='saveId']").prop("checked", true);
			$('#logId').val(cookieid);
		}
	}

	function setCookie(name, value, expiredays) {
		var todayDate = new Date();
		todayDate.setTime(todayDate.getTime() + 0);
		if (todayDate > expiredays) {
			document.cookie = name + "=" + escape(value) + "; path=/; expires="
					+ expiredays + ";";
		} else if (todayDate < expiredays) {
			todayDate.setDate(todayDate.getDate() + expiredays);
			document.cookie = name + "=" + escape(value) + "; path=/; expires="
					+ todayDate.toGMTString() + ";";
		}
		console.log(document.cookie);
	}

	function getCookie(Name) {
		var search = Name + "=";
		console.log("search : " + search);

		if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면 
			offset = document.cookie.indexOf(search);
			console.log("offset : " + offset);
			if (offset != -1) { // 쿠키가 존재하면 
				offset += search.length;
				// set index of beginning of value
				end = document.cookie.indexOf(";", offset);
				console.log("end : " + end);
				// 쿠키 값의 마지막 위치 인덱스 번호 설정 
				if (end == -1)
					end = document.cookie.length;
				console.log("end위치  : " + end);

				return unescape(document.cookie.substring(offset, end));
			}
		}
		return "";
	}
	function saveid() {
		var expdate = new Date();
		if ($("#saveId").is(":checked")) {
			expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30);
			setCookie("saveid", $("#userId").val(), expdate);
		} else {
			expdate.setTime(expdate.getTime() - 1000 * 3600 * 24 * 30);
			setCookie("saveid", $("#userId").val(), expdate);

		}
	}
</script>
</head>
<body>
	<%@ include file="../includes/header.jsp"%>

	<div class="container">

		<div class="row">
			<div class="col-lg-12">
				<div class="contact__form__title">
					<h2>로그인</h2>
				</div>
			</div>
		</div>
		<form method="post" action="login" id="frm" class="loginForm"
			name="frm" onsubmit="return saveIdCk()">
			<div class="col-lg-8 col-md-6">
				<div class="col-lg-8 col-md-6">
					<div class="checkout__input">
						<input type="text" name="userId" id="userId" placeholder="아이디">
					</div>
				</div>
				<div class="col-lg-8 col-md-6">
					<div class="checkout__input">
						<input type="password" name="userPw" placeholder="비밀번호">
					</div>
				</div>
				<div class="checkout__input__checkbox">

					<label for="saveId"> <span>아이디 저장</span> <input
						type="checkbox" id="saveId" name="saveId" onclick="saveid()">
						<span class="checkmark"></span>
					</label>
				</div>
				<c:if test="${result==0}">
					<div class="login_warn">아이디 혹은 비밀번호를 다시 입력해주세요.</div>
				</c:if>
				<div class="col-lg-8 col-md-6">
					<div class="checkout__input">
						<input type="submit" value="로그인" style="padding: 0;">
					</div>
				</div>
			</div>
			<div class="checkout__input">
				<a href="/shop/join">회원가입</a>
			</div>
			<div class="checkout__input">
				<a href="#">아이디/비밀번호 찾기</a>
			</div>

	</div>

	<%@ include file="../includes/footer.jsp"%>

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


		$(function() {
			var cookie_userId = getLogin();
			console.log("stored userId from cookie : " + cookie_userId);
			if (cookie_userId != "") {
				$("#userId").val(cookie_userId);
				$("#saveId").prop("checked", true);
				console.log("Setting userId from cookie");
			}
			$("#saveId").on("click", function() {
				var _this = this;
				var isRemember;
				if ($(_this).is(":checked")) {
					isRemember = confirm("아이디를 저장하시겠습니까?");
					if (!isRemember) {
						$(_this).prop("checked", false);
						console.log("User chose to remember")
					}
				}
			});
			$("#loginBtn").on("click", function() {
				if ($("#saveId").is(":checked")) {
					saveLogin($("#userId").val());
					console.log("Saving userId");
				} else {
					saveLogin("");
					console.log("Clearing userId")
				}
			});
		});

		function saveLogin(userId) {
			if (userId != "") {
				setSave("userId", userId, 7);
			} else {
				setSave("userId", userId, -1);
			}
		};

		function setSave(name, value, expiredays) {
			var date = new Date();
			date.setDate(date.getDate() + expiredays);
			document.cookie = name + "=" + escape(value) + ";path=/;expires="
					+ date.toGMTString() + ";"
		}

		function getLogin() {
			var ck = document.cookie + ";";
			var index = ck.indexOf("userId", 0);
			var val = "";

			if (index != -1) {
				ck = ck.substring(index, ck.length);
				begin = ck.indexOf("=", 0) + 1;
				end = ck.indexOf(";", begin);
				val = unescape(ck.substring(begin, end));
			}
			return val;
		}
	</script>
	<%@ include file="../includes/footer.jsp"%>
	<script>
		$("#userId").val(getCookie("saveid"));
	</script>

</body>
</html>