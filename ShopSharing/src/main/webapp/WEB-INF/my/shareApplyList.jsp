<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>대여신청 목록</title>

    <!-- Bootstrap core CSS -->
    
	<link rel="stylesheet" type="text/css" href="./resources/css/list.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap-grid.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap-grid.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap-reboot.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap-reboot.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap.css.map" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap.min.css.map" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" rel="stylesheet">
  	<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

  </head>
<%@ include file="../include/mainTop.jsp" %>


  <div id="container">
    <div align="right">
      <!-- Login 검증 -->
      <!-- jstl의 if문은 else가 없어서 따로 검증해야함. -->
      <c:if test="">
        <%-- <%@include file="loginOk.jsp" %> --%>
      </c:if>
      <c:if test="">
        <%-- <%@include file="login.jsp" %> --%>
      </c:if>
    </div>
   
    <div id="list">
      <b>전체 신청자수 :</b>
    </div>
     
    <div>
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="10%">번호</th>
            <th width="50%">제목</th>
            <th width="10%">작성자</th>
            <th width="20%">작성일</th>
            <th width="10%">조회</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="article" items="" varStatus="status">
            <tr>
              <td></td>
              <td id="title">
                <c:if test="">
                  &nbsp;&nbsp;
                </c:if>
                <a href="#?articleNumber=&pageNum="></a>
                <c:if test="">
                  <span class="hit">hit!</span>
                </c:if>
              </td>
              <td></td>
              <td></td>
              <td></td>
            <tr>
          </c:forEach>
        </tbody>
      </table>
      
      <!-- Paging 처리 -->
      <div id="paging">
        
      </div>
    </div>
  </div>
</body>
<%@ include file="../include/mainBottom.jsp" %>
</html>
