<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>


<p>신청중인 점포목록</p>
<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th width="10%">번호</th>
			<th width="20%">제공자</th>
			<th width="30%">신청대상</th>
			<th width="20%">작성일</th>
			<th width="10%">수락여부</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="mySendShareReqList" items="${mySendShareReqList}"
			varStatus="status">
			<tr>
				<td><c:out value="${status.count}" /></td>
				<td><c:out value="${mySendShareReqList.memberId}" /></td>
				<td><c:out value="${mySendShareReqList.shopName}" /></td>
				<td><fmt:formatDate	value="${mySendShareReqList.shareReqApplyDay}" pattern="yyyy-MM-dd" /></td>
				<td>
					<c:choose>
						<c:when test="${mySendShareReqList.shareReqPermission =='0'}">
							<p>거절됨</p>
						</c:when>
						<c:when test="${mySendShareReqList.shareReqPermission =='1'}">
							<p>수락됨</p>
						</c:when>
						<c:otherwise>										
							<p>대기중</p>
						</c:otherwise>										
					</c:choose>
				</td>
			<tr>
		</c:forEach>
	</tbody>
</table>

<p>신청중인 상품목록</p>
<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th width="10%">번호</th>
			<th width="20%">제공자</th>
			<th width="30%">신청대상</th>
			<th width="20%">작성일</th>
			<th width="10%">수락여부</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="mySendConsignmentList"
			items="${mySendConsignmentList}" varStatus="status">
			<tr>
				<td><c:out value="${status.count}" /></td>
				<td><c:out value="${mySendConsignmentList.memberId2}" /></td>
				<td><c:out value="${mySendConsignmentList.goodsName}" /></td>
				<td><fmt:formatDate	value="${mySendConsignmentList.consignmentApplyDay}" pattern="yyyy-MM-dd" /></td>
				<td>
					<c:choose>
						<c:when test="${mySendConsignmentList.consignmentPermission =='0'}">
							<p>거절됨</p>
						</c:when>
						<c:when test="${mySendConsignmentList.consignmentPermission =='1'}">
							<p>수락됨</p>
						</c:when>
						<c:otherwise>										
							<p>대기중</p>
						</c:otherwise>										
					</c:choose>
				</td>
			<tr>
		</c:forEach>
	</tbody>
</table>

</html>