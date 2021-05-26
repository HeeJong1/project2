<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>회원탈퇴</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="../resources/css/page_css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">	
	<link rel="stylesheet" type="text/css" href="../resources/css/member_css/util.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/member_css/main.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/member_css/button.css">

<script type="text/javascript" src="<c:url value='../resources/js/page_js/jquery-3.6.0.js'/>"></script>
<!-- 파비콘 -->
    <link rel="icon" type="image/png" sizes="16x16" href="../resources/img/MS.png">

</head>

<body>
	<div class="limiter">
		<div class="container-login100" style="background-image: url('../resources/img/hero/gita.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					회원탈퇴
				</span>
				<!-- <form class="login100-form validate-form p-b-33 p-t-5" > -->

			 <form class="login100-form validate-form p-b-33 p-t-5" action="<c:url value='/member/MemberDelete'/>" method="post" > 
					<div class="wrap-input100 validate-input" data-validate = "Your ID">
						<input class="input100" type="text" id="muId" name="muId" value="${member.muId}" readonly="readonly">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Enter the password">
						<input class="input100" type="password" id="muPw" name="muPw" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					<c:if test="${msg == false}">
						<div id="fail" style="color:red; text-align:center;">&nbsp;비밀번호가 일치하지 않습니다!<br>아이디와 비밀번호를 확인해주세요!</div>
						
					</c:if>
					<div class="container-login100-form-btn">
						<button class="snip1537" type="submit">탈퇴</button>
						<!-- <button class="snip1537" onclick="location.href='<c:url value='/member/MemberInsert'/>'">회원가입</button> -->
					</div>
				</form>
					
			</div>
		</div>
	</div>
	<!--===============================================================================================-->

<script type="text/javascript" src="<c:url value='../resources/js/page_js/main.js'/>"></script>
	<!--===============================================================================================-->
	
</body>
</html>