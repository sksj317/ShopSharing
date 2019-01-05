<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="row">
		<div class="col-lg-12">
			<jsp:include page="../include/mainTop.jsp" flush="false" />
		</div>
	</div>

	<div class="row">
		<div class="col-lg-2"><jsp:include
				page="../admin/adminInclude/adminSide.jsp" flush="false" /></div>
		<div class="col-lg-10">
			<div class="container">
			<table class="table table-striped table-bordered table-hover">
				<tr>
					<th width="20%">아이디</th>
					<th width="20%">이름</th>
					<th width="20%">가입일</th>
					<th width="20%">회원 등급</th>
				</tr>
				<tr>
					<c:forEach var="row" items="${list}">
						<tr>
							<td>${row.memberId}</td>
							<td>${row.memberName}</td>
							<td><fmt:formatDate value="${row.memberReg}" pattern="yyyy-MM-dd"/></td>
							<td>${row.memberGrade}</td>
					</c:forEach>
			</table>
			</div>
		</div>
	</div>
</body>
<%@ include file="../include/mainBottom.jsp"%>
</html>