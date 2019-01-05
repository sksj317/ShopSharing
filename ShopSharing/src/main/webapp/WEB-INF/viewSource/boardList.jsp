<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>게시판 리스트</title>

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

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">공유점포(Shop Sharing)</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">회원가입</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">로그인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">시간제공유</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">샵인샵</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">메뉴테스트</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">위탁점포</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">고객센터</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

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
   
    <div id="list">
      <b>게시판 (전체 글: )</b>
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
      
      <div id="write" style="position: border-bottom-right-radius; right: 0px; bottom: 0px;">
      <a href="#?pageNum=">글쓰기</a>
      </div>
       
      <!-- Paging 처리 -->
      <div id="paging">
        
      </div>
    </div>
  </div>
</body>
    
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; ShopSharing 2018</p>
      </div>
      <!-- /.container -->
    </footer>

     <!-- Bootstrap core JavaScript -->
    <script src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.bundle.js" />"></script>
    <script src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.bundle.js.map" />"></script>
    <script src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.bundle.min.js.map" />"></script>
    <script src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.js" />"></script>
    <script src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.js.map" />"></script>
    <script src="<c:url value="./resources/vendor/bootstrap/js/bootstrap.min.js.map" />"></script>


</html>
