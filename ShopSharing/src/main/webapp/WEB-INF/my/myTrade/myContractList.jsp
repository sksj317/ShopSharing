<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

	
        	<p>점포공유 계약목록</p>
			<table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="10%">번호</th>
            <th width="15%">신청자</th>
            <th width="20%">점포명</th>
            <th width="15%">제공자</th>
            <th width="15%">계약체결날짜</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="myShareConList" items="${myShareConList}" varStatus="status">
            <tr>
              <td><c:out value="${status.count}"/></td>
              <td><c:out value="${myShareConList.memberId2}"/></td>
              <td><c:out value="${myShareConList.shopName}"/></td>
              <td><c:out value="${myShareConList.memberId}"/></td>
              <td><fmt:formatDate value="${myShareConList.shareConConclusion}" pattern="yyyy-MM-dd"/></td>
            <tr>
          </c:forEach>
        </tbody>
      </table>
      
      <p>위탁판매 계약목록</p>
			<table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="10%">번호</th>
            <th width="15%">신청자</th>
            <th width="20%">상품명</th>
            <th width="15%">제공자</th>
            <th width="15%">계약체결날짜</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="myConsignConList" items="${myConsignConList}" varStatus="status">
            <tr>
              <td><c:out value="${status.count}"/></td>
              <td><c:out value="${myConsignConList.memberId2}"/></td>
              <td><c:out value="${myConsignConList.shopName}"/></td>
              <td><c:out value="${myConsignConList.memberId}"/></td>
              <td><fmt:formatDate value="${myConsignConList.consignConConclusion}" pattern="yyyy-MM-dd"/></td>
            <tr>
          </c:forEach>
        </tbody>
      </table>

</html>