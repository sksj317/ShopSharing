<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function shareReqPermission(reqNum) {
		alert("수락하시겠습니까?")
		document.getElementById("permissionResult").value = 1;
		document.getElementById("shareReqNum").value = reqNum;
		document.frm.submit();
	}
	function shareReqDeny(reqNum) {
		alert("거절하시겠습니까?")
		document.getElementById("permissionResult").value = 0;
		document.getElementById("shareReqNum").value = reqNum;
		document.frm.submit();
	}
	
	function consignmentPermission(reqNum) {
		alert("수락하시겠습니까?")
		document.getElementById("goodsPermissionResult").value = 1;
		document.getElementById("consignmentNum").value = reqNum;
		document.frm1.submit();
	}
	function consignmentDeny(reqNum) {
		alert("거절하시겠습니까?")
		document.getElementById("goodsPermissionResult").value = 0;
		document.getElementById("consignmentNum").value = reqNum;
		document.frm1.submit();
	}
</script>


			<p>요청받은 점포목록</p>
			<form action="myShareResponseList.com" method="POST" name="frm">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th width="10%">번호</th>
							<th width="15%">신청자</th>
							<th width="20%">신청대상</th>
							<th width="15%">작성일</th>							
							<th width="15%">수락여부</th>
							<th width="20%">
								계약
								<input type="hidden" name="permissionResult" id="permissionResult" value="" />
								<input type="hidden" name="shareReqNum" id="shareReqNum" value="" />							
							</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="myShareReqList" items="${myShareReqList}" varStatus="status">
							<tr>
								<td><c:out value="${status.count}" /></td>
								<td><c:out value="${myShareReqList.memberId2}" /></td>
								<td><c:out value="${myShareReqList.shopName}" /></td>
								<td><fmt:formatDate	value="${myShareReqList.shareReqApplyDay}" pattern="yyyy-MM-dd" /></td>								
								<td>
									<c:choose>
										<c:when test="${myShareReqList.shareReqPermission =='0'}">
											<p>거절됨</p>
										</c:when>
										<c:when test="${myShareReqList.shareReqPermission =='1'}">
											<p>수락됨</p>
										</c:when>
										<c:otherwise>										
											<p>대기중</p>
										</c:otherwise>										
									</c:choose>
								</td>
								<td>
									<button type="button" class="btn" onclick="shareReqPermission(${myShareReqList.shareReqNum})">수락</button>
									<button type="button" class="btn" onclick="shareReqDeny(${myShareReqList.shareReqNum})">거절</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
				<p>신청받은 상품목록</p>
				<form action="myConsignResponseList.com" method="POST" name="frm1">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th width="10%">번호</th>
							<th width="15%">신청자</th>
							<th width="20%">신청대상</th>
							<th width="15%">작성일</th>							
							<th width="15%">수락여부</th>
							<th width="20%">
								계약
								<input type="hidden" name="goodsPermissionResult" id="goodsPermissionResult" value="" />
								<input type="hidden" name="consignmentNum" id="consignmentNum" value="" />							
							</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="myConsignmentList" items="${myConsignmentList}"	varStatus="status">
							<tr>
								<td><c:out value="${status.count}" /></td>
								<td><c:out value="${myConsignmentList.memberId2}" /></td>
								<td><c:out value="${myConsignmentList.goodsName}" /></td>
								<td><fmt:formatDate	value="${myConsignmentList.consignmentApplyDay}" pattern="yyyy-MM-dd" /></td>								
								<td>
									<c:choose>
										<c:when test="${myConsignmentList.consignmentPermission =='0'}">
											<p>거절됨</p>
										</c:when>
										<c:when test="${myConsignmentList.consignmentPermission =='1'}">
											<p>수락됨</p>
										</c:when>
										<c:otherwise>										
											<p>대기중</p>
										</c:otherwise>										
									</c:choose>
								</td>
								<td>
									<button type="button" class="btn" onclick="consignmentPermission(${myConsignmentList.consignmentNum})">수락</button>
									<button type="button" class="btn" onclick="consignmentDeny(${myConsignmentList.consignmentNum})">거절</button>
								</td>
							<tr>
						</c:forEach>
					</tbody>
				</table>
				</form>
			</form>
</html>