<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>점포 상세보기</title>

    <!-- Bootstrap core CSS -->
    
	<link href="./resources/css/detail.css" rel="stylesheet">
    
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
<%@ include file="../include/mainTop.jsp" %>
  </head>

  <body>

    <div class="container">

      <div class="row">

        <div class="col-lg-3">
          <h1 class="my-4">점포명</h1>
          <div class="list-group">
            <a href="#" class="list-group-item active">분류 1</a>
            <a href="#" class="list-group-item">분류 2</a>
            <a href="#" class="list-group-item">분류 3</a>
          </div>
        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div class="card mt-4">
            <img class="card-img-top img-fluid" src="./resources/image/hall.jpg" alt="">
            <div class="card-body">
              <h3 class="card-title">점포명</h3>
              <h4>월세 : 60 (희망)</h4>
              <p class="card-text">도심가에 위치하여 접근성이 좋고, 주변상권이 발달하여 유동인구가 많은 지역입니다. 기존 업종인 일식집과 어울리는 이자카야를 추천드립니다</p>
              <span class="text-warning">&#9733; &#9733; &#9733; &#9734; &#9734;</span>
              3.0 stars
            </div>
          </div>
          <!-- /.card -->

          <div class="card card-outline-secondary my-4">
            <div class="card-header">
              	추천 아이템 / 업종 / 통계
            </div>
            <div class="card-body">
              <p>선술집 / 이자카야 / 추천점포순위/ 제공자 순위 </p>
              <small class="text-muted">등록 날짜</small>
              <hr>
              <a href="#" class="btn btn-success">리뷰</a>
            </div>
          </div>
          <!-- /.card -->

        </div>
        <!-- /.col-lg-9 -->

      </div>

    </div>
    <!-- /.container -->

 

  </body>
<%@ include file="../include/mainBottom.jsp" %>
</html>