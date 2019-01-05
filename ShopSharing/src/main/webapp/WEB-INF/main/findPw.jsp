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
	<script type="text/javascript">
		function check(){
			if(!form.memberId.value){
				alert("아이디를 입력해주세요.");
				return false;
			}
			if(!form.memberName.value){
				alert("이름을 입력해주세요.");
				return false;
			}
			if(!form.memberPh.value){
				alert("연락처를 입력해주세요");
				return false;
			}
			document.form.action = "${path}/ShopSharing/memberFindPw.com"
			document.form.submit();
		}
	</script>		
	<body>
		<div class="col-md-12">
			<div class="page-header">
				<h1>
					<small>비밀번호 찾기</small>
				</h1>
			</div>
			<br/>
			<br/>
			<form Name="form" method="post" class="form-horizontal">
				<div class="form-group">
						<label class="col-sm-3 control-label" for="">아이디</label>
						<div class="col-sm-6">
						<input class="form-control" id="memberId" name="memberId" type="text"/>
						<p class="help-block"></p>
						</div>
				</div>			
				<div class="form-group">
					<label class="col-sm-3 control-label" for="">회원 이름</label>
					<div class="col-sm-6">
					<input class="form-control" id="memberName" name="memberName" type="text"/>
					<p class="help-block"></p>
					</div>
				</div>			
				<div class="form-group">
					<label class="col-sm-3 control-label" for="">연락처</label>
					<div class="col-sm-6">
						<input class="form-control" id="memberPh" name ="memberPh" type="text"/>
						<p class="help-block"></p>
					</div>
				</div>
				<c:if test="${msg == 'failure'}">
					<div style="color:red">
						입력하신 정보가 존재 또는 일치 하지 않습니다.
					</div>
				</c:if>	
				<div class="form-group">
					<div class="col-sm-12 text-center">
						<button class="btn btn-primary" type ="button" onclick="check()">비밀번호 찾기<i class="fa fa-check spaceLeft"></i>
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
