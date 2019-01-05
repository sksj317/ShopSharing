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

<title>설문/통계</title>

<!-- Bootstrap core CSS -->

<link rel="stylesheet" type="text/css" href="./resources/css/list.css"
	rel="stylesheet">

	<%@ include file="../include/mainTop.jsp" %>
</head>

<body>


	<!-- Page Content -->
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
				
				<a href="menuTestResult.com"><button class="btn btn-primary btn-lg" type="button">메뉴테스트 결과보기<i class="fa fa-check spaceLeft"></i></button></a>
					
				<a href="sharerRanking.com"><button class="btn btn-primary btn-lg" type="button">우수공유자 TOP5<i class="fa fa-check spaceLeft"></i></button></a>
				
				<a href="popularStores.com"><button class="btn btn-primary btn-lg" type="button">인기점포 TOP5<i class="fa fa-check spaceLeft"></i></button></a>
				
			</div>
		</div>
	</div>

</body>

</body>
	<%@ include file="../include/mainBottom.jsp" %>
</html>
