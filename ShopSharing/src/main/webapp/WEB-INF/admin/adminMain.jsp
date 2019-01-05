<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap-grid.css">
<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap-grid.min.css">
</head>
<body>
	<div>
		<div class="row">
			<div class="col-lg-12"><jsp:include	page="../include/mainTop.jsp" flush="false" /></div>
		</div>
		<div class="row">
			<div class="col-lg-2"><jsp:include page="adminInclude/adminSide.jsp" flush="false" /></div>
			<div class="col-lg-10">
				<div id="content-wrapper">

					<div class="container-fluid">

						<ol class="breadcrumb">
							<li class="breadcrumb-item active">확인 사항</li>
						</ol>

						<div class="row">
							<div class="col-xl-3 col-sm-6 mb-3">
								<div class="card text-white bg-primary o-hidden h-100">
									<div class="card-body">
										<div class="mr-5">${postCnt}개의등록 대기글</div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="adminPost.com"> 
										<span class="float-left">등록	대기 목록</span>
									</a>
								</div>
							</div>
							<div class="col-xl-3 col-sm-6 mb-3">
								<div class="card text-white bg-warning o-hidden h-100">
									<div class="card-body">
										<div class="mr-5">${contractCnt}개의새로운 계약</div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="#">
										<span class="float-left">계약 목록</span>
									</a>
								</div>
							</div>
							<div class="col-xl-3 col-sm-6 mb-3">
								<div class="card text-white bg-success o-hidden h-100">
									<div class="card-body">
										<div class="mr-5">${todayMbrCnt}명의오늘의 신규 회원</div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="#">
										<span class="float-left">회원 목록</span>
									</a>
								</div>
							</div>
							<div class="col-xl-3 col-sm-6 mb-3">
								<div class="card text-white bg-danger o-hidden h-100">
									<div class="card-body">
										<div class="card-body-icon"></div>
										<div class="mr-5">${qnaCnt}개의문의</div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="adminComplaint.com"> 
										<span class="float-left">문의	목록</span>
									</a>
								</div>
							</div>
						</div>

						<!-- Area Chart Example-->
						<div class="card mb-3">
							<div class="card-header"></div>
							<div class="card-body">
								<canvas id="myAreaChart" width="100%" height="30"></canvas>
							</div>
						</div>
						<div class="card mb-3">
							<div class="card-header">회원 목록</div>
							<div class="card-body">
								<div class="table-responsive">
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
													<td><fmt:formatDate value="${row.memberReg}" pattern="yyyy-MM-dd" /></td>
													<td>${row.memberGrade}</td>
											</c:forEach>
									</table>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12"><jsp:include	page="../include/mainBottom.jsp" flush="false" /></div>
		</div>

	</div>



	<script
		src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.js" />"></script>
	<script
		src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
</body>
</html>