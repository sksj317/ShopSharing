<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
	height: 50%;
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

<!-- Bootstrap core CSS -->

<link rel="stylesheet" type="text/css" href="./resources/css/list.css"
	rel="stylesheet">


<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/bootstrap/css/bootstrap-grid.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/bootstrap/css/bootstrap-grid.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/bootstrap/css/bootstrap-reboot.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/bootstrap/css/bootstrap-reboot.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/bootstrap/css/bootstrap.css.map"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="./resources/vendor/bootstrap/css/bootstrap.min.css.map"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="./resources/css/bootstrap.css" rel="stylesheet">


</head>
<%@ include file="../include/mainTop.jsp" %>
<body>

<body>
	<div id="box">
		<div align="right">
			<!-- Login 검증 -->
			<!-- jstl의 if문은 else가 없어서 따로 검증해야함. -->
			<c:if test="">
				<%-- <%@include file="loginOk.jsp" %> --%>
			</c:if>
			<c:if test="">
				<%-- <%@include file="login.jsp" %> --%>
			</c:if>
		</div>

		<div class="text-center a" style="height: 100%; width: 100%">
			<div class="form-group">
				<button class="btn btn-primary btn-lg" type="button">
						공유신청자 조회<i class="fa fa-check spaceLeft"></i>
					</button>
					<button class="btn btn-primary btn-lg" type="button">
						계약만료 재고입력(위탁판매)<i class="fa fa-times spaceLeft"></i>
					</button>
					<button class="btn btn-primary btn-lg" type="button">
						계약만료 재고확인(위탁판매)<i class="fa fa-times spaceLeft"></i>
					</button>
			</div>
		</div>
	</div>

</body>

</body>
<%@ include file="../include/mainBottom.jsp" %>
</html>
