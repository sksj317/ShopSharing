<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>등록</title>

<!-- Bootstrap -->
<link href="./resources/css/bootstrap.css" rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" href="./resources/css/font-awesome.min.css" media="screen" title="no title">
<!-- Custom style -->
<link rel="stylesheet" href="./resources/css/join.css" media="screen" title="no title">

</head>

<body>

	<div class="col-md-12">

		<div class="page-header">
			<h1>
				점포신청 <small></small>
			</h1>
		</div>

		<form class="form-horizontal">

			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputEmail">이메일</label>
				<div class="col-sm-6">
					<input class="form-control" id="inputEmail" type="email" placeholder="이메일">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
				<div class="col-sm-6">
					<input class="form-control" id="inputPassword" type="password" placeholder="비밀번호">
					<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
				<div class="col-sm-6">
					<input class="form-control" id="inputPasswordCheck" type="password" placeholder="비밀번호 확인">
					<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputName">이름</label>
				<div class="col-sm-6">
					<input class="form-control" id="inputName" type="text" placeholder="이름">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
				<div class="col-sm-6">
					<div class="input-group">
						<input type="tel" class="form-control" id="inputNumber" placeholder="- 없이 입력해 주세요" /> <span class="input-group-btn">
							<button class="btn btn-success">
								인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i>
							</button>
						</span>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputNumberCheck">인증번호 확인</label>
				<div class="col-sm-6">
					<div class="input-group">
						<input class="form-control" id="inputNumberCheck" type="text" placeholder="인증번호"> <span class="input-group-btn">
							<button class="btn btn-success" type="button">
								인증번호 확인<i class="fa fa-edit spaceLeft"></i>
							</button>
						</span>
					</div>
					<p class="help-block">전송된 인증번호를 입력해주세요.</p>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
				<div class="col-sm-6" data-toggle="buttons">
					<label class="btn btn-warning active"> 
					<input id="agree" type="checkbox" autocomplete="off" checked> 
					<span class="fa fa-check"></span>
					</label> <a href="#">이용약관</a> 에 동의 합니다.
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-12 text-center">
					<button class="btn btn-primary" type="submit">신청<i class="fa fa-check spaceLeft"></i>
					</button>
					<button class="btn btn-danger" type="submit">뒤로가기<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</div>
		
		</form>
		<hr>
	</div>

	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
