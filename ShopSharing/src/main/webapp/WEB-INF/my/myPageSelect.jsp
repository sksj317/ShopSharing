<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<style>
html, body {
	width: 100%;
	height: 100%;
	
}
div {
	border: 0px solid #000000;
	-moz-box-sizing: border-box; /* Firefox  */
	-webkit-box-sizing: border-box; /* Safari */
	box-sizing: border-box; /* CSS3 Standard */
	}
div#box {
	
	background-size: 100%;
	width: 100%;
	height: 100%;
}

.a{
	text-align:center;
	margin-left: auto;
	margin-right: auto;
	display: block;
	vertical-align:middle;
	display: flex;
  	align-items: center;
  	justify-content: center;
}

</style>
<title>마이페이지 선택</title>
</head>
<%@ include file="../include/mainTop.jsp" %>
 <body>
	<div id="box" style="background-image: url('./resources/image/mypage3.jpg')">	
		<div class="text-center a" style="height: 100%; width: 100%">
			<div class="form-group" >
				<a href="privacyModify.com"><button class="btn btn-primary btn-lg" type="button">개인정보 변경<i class="fa fa-check spaceLeft"></i></button></a>
				<a href="changePw.com"><button class="btn btn-primary btn-lg" type="button">비밀번호 변경<i class="fa fa-times spaceLeft"></i></button></a>
				<a href="myTradeList.com"><button class="btn btn-primary btn-lg" type="button">내 거래<i class="fa fa-check spaceLeft"></i></button></a>
				<a href="survey.com"><button class="btn btn-primary btn-lg" type="button">설문<i class="fa fa-check spaceLeft"></i></button></a>
				<a href="statistics.com"><button class="btn btn-primary btn-lg" type="button">통계<i class="fa fa-check spaceLeft"></i></button></a>
				<a href="deleteMember.com"><button class="btn btn-primary btn-lg" type="button">회원 탈퇴<i class="fa fa-check spaceLeft"></i></button></a>
			</div>
		</div>
	</div>
 </body>
<%@ include file="../include/mainBottom.jsp" %>	
</html>
