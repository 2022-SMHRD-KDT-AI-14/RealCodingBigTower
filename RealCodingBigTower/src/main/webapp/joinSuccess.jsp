<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
@font-face {
        font-family: nanum;
        src: url(assets/fonts/NanumGothic.otf);
    }
</style>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html;">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/css/Style.css?ver=1">
</head>
<%
/* String email = (String) request.getAttribute("email");
String nick = (String) request.getAttribute("nick"); */
Member joinMember =  (Member)request.getAttribute("joinMember");
%>
<body>
<html>

<head>
<div class="main">
	<div class="form-regi">
		<div class="button-wrap">
			<div id="btn"></div>
			<div class="Logo">
				<img src="images/LogoL.png" alt="Logo">
			</div>
		</div>

		<form id="login" action="" class="input-group">
			<div class="input-group-nanum" align="center">
				가입이 완료되었습니다.<br><%=joinMember.getNick() %>님 환영합니다!
			</div>
			
						<!-- 회원가입 폼 2-->
			<form action="KeyCon?email=<%=joinMember.getEmail() %>" id="register" class="input-group">

					<br><br>
					<br><br>
					<br><br><br><br><br><br><br>
				<br>
				<button class="submit" type="button" onclick="location.href='login.jsp' ">로그인하기</button>
			</form>

</div>
<footer class="footer" align="center">
	<div id="serviceNameArea">
		</a>
	</div>
	<ul>
		<li>Meta &nbsp; 소개 &nbsp; 블로그 &nbsp; 채용 &nbsp; 정보 &nbsp; 도움말
			&nbsp; API &nbsp; 개인정보처리방침 &nbsp; 약관 &nbsp; 인기 &nbsp; 계정 &nbsp; 해시태그
			&nbsp; 위치 &nbsp; Cafe Fit You Lite &nbsp; 연락처 업로드 & 사용자</li>
		<li>댄스 &nbsp; 식음료 &nbsp; 집 및 정원 &nbsp; 음악 시각 &nbsp; 예술</li>
		<li>한국어 ▽ 2022 Cafe Fit You from Mata</li>
	</ul>
</div>

<script>
</script>
