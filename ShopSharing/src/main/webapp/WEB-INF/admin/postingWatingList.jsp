<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>승인 대기리스트</title>

<script type="text/javascript">
	function PostPermission() {
		alert("승인하시겠습니까?")
		document.getElementById("postResult").value = 1;
		document.frm.submit();
	}
	function PostDeny() {
		alert("거절하시겠습니까?")
		document.getElementById("postResult").value = 0;
		document.frm.submit();
	}
</script>
</head>
<body>
	<!-- top -->
	<div class="row">
		<div class="col-lg-12">
			<jsp:include page="../include/mainTop.jsp" flush="false" />
		</div>
	</div>
	<!-- top -->
	
	<!-- content -->
	<div class="row">
		<div class="col-lg-2"><jsp:include page="adminInclude/adminSide.jsp" flush="false" /></div>
		<div class="col-lg-10">
			<div class="container">

				<div id="list">
					<b>승인 대기 목록</b>
				</div>
				<div>
					<form action="adminPost.com" method="POST" name="frm">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th width="10%">번호</th>
									<th width="40%">제목</th>
									<th width="10%">작성자</th>
									<th width="20%">작성일</th>
									<th width="20%">
										<button type="button" class="btn" onclick="PostPermission()">승인</button>
										<button type="button" class="btn" onclick="PostDeny()">거절</button>
										<input type="hidden" name="postResult" id="postResult" value="" />
									</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="postList" items="${postList}" varStatus="status">
									<c:if test="${postList.postNum != null}">
										<tr>
											<td><c:out value="${status.count}" /></td>
											<td><c:out value="${postList.postName}" /></td>
											<td><c:out value="${postList.memberId}" /></td>
											<td><fmt:formatDate value="${postList.postReg}" pattern="yyyy-MM-dd"/></td>
											<td>
												<input type="checkbox" name="listIndex"	value="${status.index}" /> 
												<input type="hidden" name="postPmNum" value="${postList.postNum}" /> 
												<input type="hidden" name="postType" value="${postList.postDistinct}" />
											</td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>
					</form>
				</div>

			</div>
		</div>
	</div>
	<!-- content -->
	
	<div class="row">
		<div class="col-lg-12">
			<jsp:include page="../include/mainBottom.jsp" flush="false" />
		</div>
	</div>
</body>


<!-- Bootstrap core JavaScript -->

</html>
