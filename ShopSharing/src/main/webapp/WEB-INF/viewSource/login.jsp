<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
	<title>로그인</title>
	
	<link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="./resources/css/login.css" />
	
	</head>
<body>

	<section class="container">
			<section class="login-form">
				<form method="post" action="" role="login">
					<img src="./resources/image/logo.png" class="img-responsive" alt="" />
					<input type="email" name="email" placeholder="Email" required class="form-control input-lg" />
					<input type="password" name="password" placeholder="Password" required class="form-control input-lg" />
					<button type="submit" name="go" class="btn btn-lg btn-primary btn-block">로그인</button>
					<div>
						<a href="#">회원가입</a> or <a href="#">비밀번호 변경</a>
					</div>
				</form>
				<div class="form-links">
					<a href="#">www.website.com</a>
				</div>
			</section>
	</section>
	
	<script src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
</body>
</html>