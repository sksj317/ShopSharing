<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--     <meta name="description" content="">
    <meta name="author" content=""> -->

    <title>공유점포(Shop Sharing)</title>

    <!-- Bootstrap core CSS -->
    
	<link rel="stylesheet" href="resources/css/main.css">
    
    <!-- Custom styles for this template -->
    <link rel="stylesheet"  href="resources/vendor/bootstrap/css/bootstrap-grid.css" >
	<link rel="stylesheet"  href="resources/vendor/bootstrap/css/bootstrap-grid.min.css">
	<link rel="stylesheet"  href="resources/vendor/bootstrap/css/bootstrap-reboot.css">
	<link rel="stylesheet"  href="resources/vendor/bootstrap/css/bootstrap-reboot.min.css">
	<link rel="stylesheet"  href="resources/vendor/bootstrap/css/bootstrap.css.map">
	<link rel="stylesheet"  href="resources/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet"  href="resources/vendor/bootstrap/css/bootstrap.min.css.map">
	<link rel="stylesheet"  href="resources/css/bootstrap.css">
  	
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

    <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style= "background-image: url('resources/image/main_day.jpeg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>시간제 공유/샵인샵</h3>
              <p>점포간 비는 공간이나 시간을 효율적으로 활용하도록 도와드립니다.</p>
            </div>
          </div>
          
          
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('resources/image/main_night.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>메뉴테스트</h3>
              <p>창업전 당신의 메뉴에 대한 손님들의 반응을 알려드립니다.</p>
            </div>
          </div>
          
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style= "background-image: url('resources/image/main_lobby.jpg')">
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
    </header>

    <!-- Page Content -->
    <section class="py-5">
      <div class="container">
        <h1>당신의 비즈니스를 위한 확실한 솔루션!</h1>
        <p>고임대료와 고인건비에 시달리는 당신에게 상호간 Win-Win할 수 있는 기회의 장을 제공합니다.</p>
      </div>
    </section>

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; ShopSharing 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="<c:url value="resources/vendor/bootstrap/js/bootstrap.bundle.js" />"></script>
    <script src="<c:url value="resources/vendor/bootstrap/js/bootstrap.bundle.js.map" />"></script>
    <script src="<c:url value="resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="resources/vendor/bootstrap/js/bootstrap.bundle.min.js.map" />"></script>
    <script src="<c:url value="resources/vendor/bootstrap/js/bootstrap.js" />"></script>
    <script src="<c:url value="resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="resources/vendor/bootstrap/js/bootstrap.js.map" />"></script>
    <script src="<c:url value="resources/vendor/bootstrap/js/bootstrap.min.js.map" />"></script>
    
  </body>

</html>