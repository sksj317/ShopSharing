<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>


<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--     <meta name="description" content="">
    <meta name="author" content=""> -->

<title>입금확인</title>

<!-- Bootstrap core CSS -->

<link rel="stylesheet" href="resources/css/main.css">

<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="resources/vendor/bootstrap/css/bootstrap-grid.css">
<link rel="stylesheet"
	href="resources/vendor/bootstrap/css/bootstrap-grid.min.css">
<link rel="stylesheet"
	href="resources/vendor/bootstrap/css/bootstrap-reboot.css">
<link rel="stylesheet"
	href="resources/vendor/bootstrap/css/bootstrap-reboot.min.css">
<link rel="stylesheet"
	href="resources/vendor/bootstrap/css/bootstrap.css.map">
<link rel="stylesheet"
	href="resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/vendor/bootstrap/css/bootstrap.min.css.map">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet"
	href="resources/vendor/bootstrap/css/bootstrap.css">
<head>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="#">공유점포(Shop Sharing)</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
				<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
				<li class="nav-item"><a class="nav-link" href="#">시간제공유</a></li>
				<li class="nav-item"><a class="nav-link" href="#">샵인샵</a></li>
				<li class="nav-item"><a class="nav-link" href="#">메뉴테스트</a></li>
				<li class="nav-item"><a class="nav-link" href="#">위탁점포</a></li>
				<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
			</ul>
		</div>
	</div>
</nav>
</head>

<body>
	<div class="container" style="margin-top: 60px;">
		<h5>입금 목록</h5>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>번호</th>
					<th>은행</th>
					<th>계좌번호</th>
					<th>입금액</th>
					<th>예금주</th>
					<th>계약자</th>
					<th><button type="button" class="btn btn-default">삭제</button></th>
					<th><button type="button" class="btn btn-default">쪽지</button></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="article" items="" varStatus="status">
					<tr>
						<td>1</td>
						<td>신한</td>
						<td>123123</td>
						<td>100</td>
						<td>으아아</td>
						<td>으에에</td>
						<td><input type="checkbox" value=""></td>
						<td><input type="checkbox" value=""></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


</body>
<!-- Footer -->
<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; ShopSharing
			2018</p>
	</div>
	<!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script
	src="<c:url value="resources/vendor/bootstrap/js/bootstrap.bundle.js" />"></script>
<script
	src="<c:url value="resources/vendor/bootstrap/js/bootstrap.bundle.js.map" />"></script>
<script
	src="<c:url value="resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
<script
	src="<c:url value="resources/vendor/bootstrap/js/bootstrap.bundle.min.js.map" />"></script>
<script
	src="<c:url value="resources/vendor/bootstrap/js/bootstrap.js" />"></script>
<script
	src="<c:url value="resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
<script
	src="<c:url value="resources/vendor/bootstrap/js/bootstrap.js.map" />"></script>
<script
	src="<c:url value="resources/vendor/bootstrap/js/bootstrap.min.js.map" />"></script>


</html>