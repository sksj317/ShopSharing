<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>게시판 상세보기</title>

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
 

    <!-- Page Content -->
    <body>
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
   
   	<div>
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="10%">번호</th>
            <th width="90%">제목</th>
           </tr>
        </thead>
        <tbody>
            <tr>
              <td colspan="2">내용입력</td>
            <tr>
        </tbody>
      </table>
      <div class="form-group">
				<div class="col-sm-12 text-center">
					<button class="btn btn-primary" type="button">수정<i class="fa fa-check spaceLeft"></i>
					</button>
					<button class="btn btn-primary" type="button">삭제<i class="fa fa-times spaceLeft"></i>
					</button>
					<button class="btn btn-primary" type="button">뒤로가기<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</div>
      <!-- Paging 처리 -->
      <div id="paging">
        
      </div>
    </div>
  </div>
</body>
    <!-- Footer -->
 <%@ include file="../include/mainBottom.jsp" %>
  </body>

</html>
