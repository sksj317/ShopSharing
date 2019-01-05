<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>


<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>문의/불만사항</title>

<head>

</head>

<body>
	<div class="row">
		<div class="col-lg-12">
			<jsp:include page="../include/mainTop.jsp" flush="false" />
		</div>
	</div>
	
	<div class="row">
		<div class="col-lg-2"><jsp:include page="adminInclude/adminSide.jsp" flush="false" /></div>
		<div class="col-lg-10">
	<div class="container">
		<div id="list">
			<b>답변 대기 목록 (대기 중: )</b>
		</div>
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th width="10%">번호</th>
					<th width="10%">
						<div class="btn-group">							
							<button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
							문의유형</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">유형1</a></li>
								<li><a href="#">유형2</a></li>
							</ul>
						</div>
					</th>
					<th width="50%">제목</th>
					<th width="10%">작성자</th>
					<th width="20%">작성일</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="sQnaList" items="${sQnaList}" varStatus="status">
					<tr>
						<td><c:out value="${status.count}" /></td>
						<td><c:out value="${sQnaList.sQnaNum}" /></td>
						<td><c:out value="${sQnaList.sQnaSub}" /></td>
						<td><c:out value="${sQnaList.memberId}" /></td>
						<td><fmt:formatDate value="${sQnaList.sQnaReg}" pattern="yyyy-MM-dd"/></td>
					</tr>	
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
	</div>
	
	<div class="row">
		<div class="col-lg-12">
			<jsp:include page="../include/mainBottom.jsp" flush="false" />
		</div>
	</div>
</body>


</html>