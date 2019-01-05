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


<link href="./resources/css/bootstrap.css" rel="stylesheet">


</head>
<%@ include file="../include/mainTop.jsp" %>
<script type="text/javascript">
	function check(){
		var pw = document.getElementById('newPw1').value
    	var pattern1 = /[0-9]/;
        var pattern2 = /[a-zA-Z]/;
        var pattern3 = /[~!@\#$%<>^&*]/;
		if(!form.oldPw1.value){
			alert("현재 비밀번호를 입력 해주세요");
			return false;
		}
		if(form.oldPw1.value != form.oldPw2.value){
			alert("현재 비밀번호가 다릅니다. ");
            return false;
        }
		if(!form.newPw1.value){
			alert("새 비밀번호를 입력 해주세요");
			return false;
		}
		if(!form.newPw2.value){
			alert("새 비밀번호 확인을 입력 해주세요");
			return false;
		}
		if(form.newPw1.value != form.newPw2.value ){
            alert("새 비밀번호와 확인을 동일하게 입력하세요.");
            return false;
        }
		if(!pattern1.test(pw)||!pattern2.test(pw)||!pattern3.test(pw)||newPw1.length<8||newPw1.length>50){
            alert("비밀번호는 영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
            return false;
        }   
		document.form.action = "${path}/ShopSharing/pwUpdate1.com"
		document.form.submit();	
		
	}
</script>			
<body>

	<div class="col-md-12">

		<div class="page-header">
			<h1>
				<small>비밀번호변경</small>
			</h1>
		</div>
		
		<br/>
		<br/>
		
		<form name="form" method="post">
			<div class="form-group">
				<label class="col-sm-3 control-label" for=""></label>
				<input class="form-control" name="memberId" value= "${member.memberId }" type="hidden" readonly="readOnly"/>
			</div>
			
			<div class="form-group">
				
				<div class="col-sm-6">
					<input class="form-control" id="oldPw1" type="password" placeholder="현재 비밀번호" />
					<input type="hidden"  value="${member.memberPw}" id="oldPw2"/>
					<p class="help-block"></p>
				</div>
			
			</div>
			
			<div class="form-group">
				
				<div class="col-sm-6">
					<input class="form-control" name="memberPw" id="newPw1" type="password" placeholder="새 비밀번호" />
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="form-group">
			
				<div class="col-sm-6">
					<input class="form-control" id="newPw2" type="password" placeholder="새 비밀번호 확인" />
					<p class="help-block"></p>
				</div>
			</div>	
			<div class="form-group">
				<div class="col-sm-12 text-center">
					<button class="btn btn-primary" onclick="check()">비밀번호 변경<i class="fa fa-check spaceLeft"></i>
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
