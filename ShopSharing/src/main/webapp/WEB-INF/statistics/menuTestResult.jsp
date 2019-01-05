<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>메뉴테스트 결과보기</title>

    <!-- Bootstrap core CSS -->
    
	<link rel="stylesheet" type="text/css" href="./resources/css/list.css" rel="stylesheet">
    
    <!-- chart library -->
  	<script src="<c:url value="./resources/vendor/bootstrap/js/Chart.bundle.js" />"></script>
  	<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
  	<script src="//www.google-analytics.com/analytics.js"></script>
	
	<style type="text/css">/* Chart.js */
	@-webkit-keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}
	@keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}.chartjs-render-monitor{-webkit-animation:chartjs-render-animation 0.001s;animation:chartjs-render-animation 0.001s;}
	</style>
	
	<style>
		canvas {
			-moz-user-select: none;
			-webkit-user-select: none;
			-ms-user-select: none;
		}
		
		#container { text-align: center; }
	</style>
	
	<%@ include file="../include/mainTop.jsp" %>
  
</head>

  <body>
  <div id="container">
  	<div style="width: 75%;"><div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
		<canvas id="canvas" width="700" height="200" class="chartjs-render-monitor" style="display: block; width: 700px; height: 200px;"></canvas>
	</div>
  
  	<!-- Page Content -->
    
  
    
    <h1>${CustomerSurveys[0].memberId}님의 메뉴 테스트 결과입니다</h1><br/>
   	<h2>설문 조회일 : <fmt:formatDate value="${MenuTestResultCommand.customDate}" pattern="yyyy-MM-dd"/></h2><br/>
   	<div id="survey">
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="20%">식사 만족도 평균</th>
            <th width="20%">음식 양 만족도 평균</th>
            <th width="20%">가격대비 만족도 평균</th>
            <th width="20%">맛 만족도 평균</th>
            <th width="20%">재방문 의사점수 평균</th>
          </tr>
        </thead>
        <tbody>
            <tr>
            	<td>${MenuTestResultCommand.satiStarAver}</td>
            	<td>${MenuTestResultCommand.quanStarAver}</td>
            	<td>${MenuTestResultCommand.priceStarAver}</td>
            	<td>${MenuTestResultCommand.tasteStarAver}</td>
            	<td>${MenuTestResultCommand.visitStarAver}</td>
            <tr>
        </tbody>
      </table>
      
         <input type="hidden" id="satiStarAver" value="${MenuTestResultCommand.satiStarAver}"/>
     	 <input type="hidden" id="quanStarAver" value="${MenuTestResultCommand.quanStarAver}"/>
         <input type="hidden" id="priceStarAver" value="${MenuTestResultCommand.priceStarAver}"/>
         <input type="hidden" id="tasteStarAver" value="${MenuTestResultCommand.tasteStarAver}"/>
         <input type="hidden" id="visitStarAver" value="${MenuTestResultCommand.visitStarAver}"/>
    	  
      <c:forEach var="comment" items="${CustomerSurveys}" varStatus="status">
		고객의견 ${status.index+1}번 : ${comment.customComment}<br />
	  </c:forEach>
     </div>
  </div>
</body>

<script type="text/javascript">
 
	$(function graph(){
		
		//제이쿼리보다 이게 빠름
	 	var satiStarAver = document.getElementById("satiStarAver").value
	    var quanStarAver = document.getElementById("quanStarAver").value
	    var priceStarAver = document.getElementById("priceStarAver").value
	    var tasteStarAver = document.getElementById("tasteStarAver").value
	    var visitStarAver = document.getElementById("visitStarAver").value
        
	    var color = Chart.helpers.color;
		var barChartData = {
			labels: ['', '식사의 만족도', '식사의 양', '음식의 가격', '음식의 맛', '재방문 의사', ''],
			datasets: [{
				label: '고객점수 평균',
				backgroundColor: 'rgba(0, 84, 255, 0.8)',
				borderColor: 'rgba(0, 84, 255, 1)',
				borderWidth: 1,
				data: [
					0,
					satiStarAver,
					quanStarAver,
					priceStarAver,
					tasteStarAver,
					visitStarAver,
					0
					]
			}]

		};

		$(function() {
			var ctx = document.getElementById('canvas').getContext('2d');
			window.myBar = new Chart(ctx, {
				type: 'bar',
				data: barChartData,
				options: {
					responsive: true,
					legend: {
						position: 'top',
					},
					title: {
						display: true,
						text: '메뉴테스트 결과',
						fontSize: 45
					}
				}
			});

		});
	 	/* var progress = document.getElementById('animationProgress');
		
		var config = {
			type: 'line',
			data: {
				labels: ['','식사의 만족도', '식사의 양', '음식의 가격', '음식의 맛', '재방문 의사',''],
				datasets: [{
					label: '고객응답 점수',
					fill: false,
					borderColor: 'rgba(255, 0, 127, 0.8)',
					backgroundColor: 'rgba(0, 84, 255, 1)',
					data: [
						0,
						satiStarAver,
						quanStarAver,
						priceStarAver,
						tasteStarAver,
						visitStarAver,
						0
					]
				}]
			},
			options: {
				title: {
					display: true,
					text: '메뉴테스트 결과'
				},
				animation: {
					duration: 2000,
					onProgress: function(animation) {
						progress.value = animation.currentStep / animation.numSteps;
					},
					onComplete: function() {
						window.setTimeout(function() {
							progress.value = 0;
						}, 2000);
					}
				}
			}
		};

		$(function() {
			var ctx = document.getElementById('canvas').getContext('2d');
			window.myLine = new Chart(ctx, config);
		}); */
	});

</script>
	  
	</body>
	
	<%@ include file="../include/mainBottom.jsp" %>
		
</html>
