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
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>비밀번호변경</title>

<!-- Bootstrap -->
<link href="./resources/css/bootstrap.css" rel="stylesheet">
</head>
<%@ include file="../include/mainTop.jsp" %>
<script type="text/javascript">
	function check(){
	 	if(!form.newPw1.value){
			alert("비밀번호를 입력 해주세요");
			return false;
		}
		if(form.newPw1.value != form.oldPw2.value){
			alert(" 비밀번호가 다릅니다. ");
            return false;
        } 
		document.form.action = "${path}/ShopSharing/memberDelete.com"
		document.form.submit();	
	}
</script>			
<body>

	<div class="col-md-12">

		<div class="page-header">
			<h1>
				<small>회원 탈퇴</small>
			</h1>
		</div>
		
		<br/>
		<br/>
		
		<form name="form" method="post">
			<div class="form-group">
			
				<input class="form-control" name="memberId" value= "${member.memberId }" type="hidden"/>
			</div>
			<div class="form-group">
				
				<div class="col-sm-6">
					<input class="form-control" id="newPw1" type="password" placeholder="비밀번호" />
					<input type="hidden"  value="${member.memberPw}" id="oldPw2"/>
					<p class="help-block"></p>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12 text-center">
					<button class="btn btn-primary" onclick="check()">회원 탈퇴<i class="fa fa-check spaceLeft"></i>
					</button>
					<a class="btn btn-danger" href=javascript:history.go(-1)>뒤로가기<i class="fa fa-times spaceLeft"></i></a>
				</div>
			</div>
		</form>
		<hr>
	</div>
</body>
<%@ include file="../include/mainBottom.jsp" %>
</html>
