<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>공유점포(Shop Sharing)</title>
	<link href="https://fonts.googleapis.com/css?family=Jua&amp;subset=korean" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap-grid.css" >
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap-grid.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap-reboot.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap-reboot.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap.css.map">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendor/bootstrap/css/bootstrap.min.css.map">
	<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.css">

	
  	<style>

  	
		.dropbtn {
		    background-color: #343a40;
		    color: white;
		    padding: 16px;
		    font-size: 16px;
		    border: none;
		}
		
		.dropdown {
		    position: relative;
		    display: inline-block;
		}
		
		.dropdown-content {
		    display: none;
		    position: absolute;
		    background-color: #f1f1f1;
		    min-width: 160px;
		    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		    z-index: 1;
		}
		
		.dropdown-content a {
		    color: black;
		    padding: 12px 16px;
		    text-decoration: none;
		    display: block;
		}
		
		.dropdown-content a:hover {background-color: #ddd;}
		
		.dropdown:hover .dropdown-content {display: block;}
		
		.dropdown:hover .dropbtn {background-color: #3e8e41;}
		
	body {font-family: "Jua";}
		
	</style>
  </head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
 
  <%@ include file="../include/mainTop.jsp" %>
  <body>
  
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="2000">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <div class="carousel-item active" style= "background-image: url('./resources/image/main_day.jpeg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>시간제 공유/샵인샵</h3>
              <p>점포간 비는 공간이나 시간을 효율적으로 활용하도록 도와드립니다.</p>
            </div>
          </div>

          <div class="carousel-item" style="background-image: url('./resources/image/main_night.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>메뉴테스트</h3>
              <p>창업전 당신의 메뉴에 대한 손님들의 반응을 알려드립니다.</p>
            </div>
          </div>
          
          <div class="carousel-item" style= "background-image: url('./resources/image/main_lobby.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>위탁판매</h3>
              <p>공간이 필요한 상품제공자와 임대자를 구하는 점포제공자를 연결해드립니다.</p>
            </div>
          </div>
        </div>
        
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    <section class="py-5">
      <div class="container">
        <h1>당신의 비즈니스를 위한 확실한 솔루션!</h1>
        <p>고임대료와 고인건비에 시달리는 당신에게 상호간 Win-Win할 수 있는 기회의 장을 제공합니다.</p>
      </div>
    </section>
  </body>
	<%@ include file="../include/mainBottom.jsp" %>
</html>