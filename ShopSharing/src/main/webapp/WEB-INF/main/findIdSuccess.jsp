<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원정보수정</title>
<link href="./resources/css/bootstrap.css" rel="stylesheet">

<%@ include file="../include/mainTop.jsp" %>
</head>
		
	<body>
		<div class="col-md-12">
			<div class="page-header">
			</div>
			<br/>
			<br/>
			<form>
			가입하신 아이디는 ${member.memberId } 입니다.
		<%-- <input class="form-control" name="memberId" value= "${member.memberId}" type="text" readonly="readOnly"/> --%>
				<div class="form-group">
					<div class="col-sm-12 text-center">
						<a class="btn btn-primary" href=findPw.com>비밀번호 찾기</a>
						
						<a class="btn btn-primary" href=login.com>로그인</a>
						
					</div>
				</div>
				
			</form>
			<hr>
		</div>
	</body>
	<%@ include file="../include/mainBottom.jsp" %>
</html>