<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>고객의 소리</title>
<!-- Bootstrap core CSS -->


</head>
<body>
	<div class="row">
		<div class="col-lg-12"><jsp:include	page="../include/mainTop.jsp" flush="false" /></div>
	</div>
	<div class="row">
		<div class="col-lg-12">
	<div class="container">

		<div id="serviceComplaintList">
			<b>사이트 서비스 불만</b>
		</div>
		
		<div>
			<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th width="10%">번호</th>
							<th width="60%">내용</th>
							<th width="10%">작성자</th>
							<th width="20%">작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="surveyCommand" items="${SurveyCommand}" varStatus="status">
							<c:if test="${surveyCommand.serviceComplaint != null}">
								<tr>
									<td>${status.count}</td>
									<td>${surveyCommand.serviceComplaint}</td>
									<td>${surveyCommand.memberId}</td>
									<td><fmt:formatDate value="${surveyCommand.surveyDate}" pattern="yyyy-MM-dd"/></td>
								</tr>
							</c:if>							
						</c:forEach>
					</tbody>
			</table>
		</div>
		
		<div id="commentlist">
			<b>고객의견</b>
		</div>
		
		<div>
			<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th width="10%">번호</th>
							<th width="60%">내용</th>
							<th width="10%">작성자</th>
							<th width="20%">작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="surveyCommand" items="${SurveyCommand}" varStatus="status">
							<c:if test="${surveyCommand.surveyComment != null}">
								<tr>
									<td>${status.count}</td>
									<td>${surveyCommand.surveyComment}</td>
									<td>${surveyCommand.memberId}</td>
									<td><fmt:formatDate value="${surveyCommand.surveyDate}" pattern="yyyy-MM-dd"/></td>
								</tr>
							</c:if>							
						</c:forEach>
					</tbody>
			</table>
		</div>

		<div class="input-group">
			<input type="text" class="form-control" placeholder="Search">
			<div class="input-group-btn">
				<button class="btn btn-default" type="submit">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</div>
		</div>

		<div id="write"
			style="position: border-bottom-right-radius; right: 0px; bottom: 0px;">
		</div>

		<!-- Paging 처리 -->
		<div id="paging"></div>
	</div>
	</div>
	</div>
	<div class="row">
		<div class="col-lg-12"><%@ include file="../include/mainBottom.jsp" %></div>
	</div>
</body>



</html>
