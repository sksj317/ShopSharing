<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../include/mainTop.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>로그인</title>
<script>
	
		function Login(){
			var memberId = document.getElementById('memberId').value
			var memberPw = document.getElementById('memberPw').value
			if(memberId==""){
				alert("아이디를 입력하세요");
				$("#memberId").focus();
				return;
			}
			if(memberPw==""){
				alert("비밀번호를 입력하세요.");
				$("#memberPw").focus();
				return;
			}
			document.form.action = "${path}/ShopSharing/loginCheck.com"
			document.form.submit();	
		};

</script>
</head>

<style>
.find_info{
color : #8e8e8e;}
</style>
	
	
	
	<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="./resources/css/login.css" /> 
	
	<body>
	<section class="container">
		<section class="login-form">
			<form method="post" name ="form" >
				<a href="main.com"><img src="./resources/image/logo.png" class="img-responsive" alt="" style ="width: 300px"/></a>
				<input type="text" name="memberId" id="memberId" placeholder="아이디"  class="form-control input-lg" style="" />
				<input type="password"  name="memberPw" id="memberPw" placeholder="비밀번호" class="form-control input-lg" />
				<button type="button" id="log_in" class="btn btn-lg btn-primary btn-block" onclick="Login()">로그인</button>
				<c:if test="${msg == 'failure'}">
				<div style="color:red">
				아이디 또는 비밀번호가 일치하지 않습니다.
				</div>
			</c:if>	
			<div class="1" align="center">
				<a href="findId.com" >아이디 찾기  </a> <span class="bar">|</span>
				<a href="findPw.com">비밀번호 찾기  </a> <span class="bar">|</span>
				<a href="memberJoin.com">회원가입</a>
			</div>
			</form>
		</section>
	</section>
	
	</body>
	<%@ include file="../include/mainBottom.jsp" %>
</html>
