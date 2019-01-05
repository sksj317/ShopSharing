<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>공유점포(Shop Sharing)</title>

<!-- Bootstrap core CSS -->

<link rel="stylesheet" type="text/css" href="./resources/css/main.css">

<!-- Custom styles for this template -->
<link href="https://fonts.googleapis.com/css?family=Jua&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" type="text/css"	href="./resources/vendor/bootstrap/css/bootstrap-grid.css">
<link rel="stylesheet" type="text/css"	href="./resources/vendor/bootstrap/css/bootstrap-grid.min.css">
<link rel="stylesheet" type="text/css"	href="./resources/vendor/bootstrap/css/bootstrap-reboot.css">
<link rel="stylesheet" type="text/css"	href="./resources/vendor/bootstrap/css/bootstrap-reboot.min.css">
<link rel="stylesheet" type="text/css"	href="./resources/vendor/bootstrap/css/bootstrap.css.map">
<link rel="stylesheet" type="text/css"	href="./resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"	href="./resources/vendor/bootstrap/css/bootstrap.min.css.map">
<link rel="stylesheet" type="text/css"	href="./resources/css/bootstrap.css">


<style>
.dropbtn {
	background-color: #343a40;
	color: white;
	padding: 16px;
	font-size: 16px;
	color: #9A9DA0;
	border: none;
}

.dropdown {
	position: relative;
	display: inline-block;
	bottom:8px;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #646464;
	color: #CCCECF;
}
</style>

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a href="main.com"><img src="./resources/image/logo.png"
				class="navbar-brand" style="width: 200px" /></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"	data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active">
						<a class="nav-link"	href="main.com">
							Home 
							<span class="sr-only">(current)</span>
						</a>
					</li>
					<c:choose>
						<c:when test="${sessionScope.memberId == null}">
							<li class="nav-item">
								<a class="nav-link" href="memberJoin.com">회원가입</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="login.com">로그인</a>
							</li>
							<li>
						</c:when>
						<c:otherwise>
							<li class="nav-item">
								<%if (session.getAttribute("admin") == null) {%> 
								<a class="nav-link"	href="myPage.com">마이페이지</a> 
								<%} else {%> 
								<a class="nav-link"	href="adminMain.com">관리자페이지</a> 
								<%} %>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="logout.com">로그아웃</a>
							</li>
						</c:otherwise>
					</c:choose>
					
					<li class="nav-item">
						<div class="dropdown">
							<button class="dropbtn">점포 공유</button>
							<div class="dropdown-content">
								<a href="timeSharingList.com">시간제 공유</a> 
								<a href="shopInShopList.com">샵 인 샵</a> 
								<a href="menuTestList.com">메뉴테스트</a>
							</div>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link"	href="consignmentSaleList.com">위탁 상품</a>
					</li>
					<c:if test="${sessionScope.memberId != null}">
					<li class="nav-item">
						<div class="dropdown">
							<button class="dropbtn">공유 신청</button>
							<div class="dropdown-content">
								<a href="shareJoin.com">점포 등록</a> 
								<a href="goodsJoin.com">상품 등록</a>
							</div>
						</div>
					</li>
					</c:if>
					<li class="nav-item">
						<a class="nav-link"	href="serviceCenter.com">고객센터</a>
					</li>

				</ul>
			</div>
		</div>
	</nav>


	<!-- Bootstrap core JavaScript -->
	<script	src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.bundle.js" />"></script>
	<script	src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.bundle.js.map" />"></script>
	<script	src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
	<script	src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.bundle.min.js.map" />"></script>
	<script	src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.js" />"></script>
	<script	src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
	<script	src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.js.map" />"></script>
	<script	src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.min.js.map" />"></script>

</body>

</html>