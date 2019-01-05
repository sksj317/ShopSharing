<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>우수공유자 추천</title>
<!-- Bootstrap core CSS -->


</head>
<body>
	<div class="row">
		<div class="col-lg-12"><jsp:include	page="../include/mainTop.jsp" flush="false" /></div>
	</div>
	<div class="row">
		<div class="col-lg-12">
	<div class="container">

		<div id="member">
			<b>우수공유자 상세정보</b>
		</div>
		
		<div>
			<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th width="20%">아이디</th>
							<th width="20%">가입일</th>
							<th width="20%">핸드폰</th>
							<th width="20%">회원등급</th>
							<th width="20%">회원점수 평균</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${Member.memberId}</td>
							<td><fmt:formatDate value="${Member.memberReg}" pattern="yyyy-MM-dd"/></td>
							<td>${Member.memberPh}</td>
							<td>${Member.memberGrade}</td>
							<td>${Member.memberPointAver}</td>
						</tr>
					</tbody>
			</table>
		</div>
	</div>
	</div>
	</div>
	<div class="row">
		<div class="col-lg-12"><%@ include file="../include/mainBottom.jsp" %></div>
	</div>
</body>



</html>
