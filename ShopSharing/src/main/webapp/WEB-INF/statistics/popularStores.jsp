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

    <title>인기점포 TOP5</title>

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
  
  
  	<div style="width: 75%;" align="center">
  	<div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
  	<div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
  	<div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div>
  	<div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
  	<div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
		<canvas id="canvas" width="700" height="200" class="chartjs-render-monitor" style="display: block; width: 700px; height: 200px;"></canvas>
	</div> 
  
  	<!-- Page Content -->
    <body>
  <div id="container">
    
    <h2>인기점포 TOP5</h2><br/>
   	<div >
      <div id="top5">
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="20%">점포 인기순위</th>
            <th width="20%">점포 이름</th>
            <th width="20%">점포 유형</th>
            <th width="20%">점포 월 임대료</th>
            <th width="20%">점포 조회수</th>
          </tr>
        </thead>
        <tbody>
        	<c:forEach var="shop" items="${Shop}" varStatus="status">
            <tr>
            	<td>${status.index+1}위</td>
            	<td><a href ="selectShopInChart.com?shopNum=${shop.shopNum}&shopLentType=${shop.shopLentType}">${shop.shopName}</a></td> 
            	<td>${shop.shopType}</td>
            	<td>${shop.shopMonth}원</td>
            	<td>${shop.shopReadCount}회</td>
            <tr>
            </c:forEach>
        </tbody>
      </table>
      </div>
         <input type="hidden" id="shopName0" value="${Shop.get(0).shopName}"/>
     	 <input type="hidden" id="shopReadCount0" value="${Shop.get(0).shopReadCount}"/>
         
         <input type="hidden" id="shopName1" value="${Shop.get(1).shopName}"/>
     	 <input type="hidden" id="shopReadCount1" value="${Shop.get(1).shopReadCount}"/>
         
         <input type="hidden" id="shopName2" value="${Shop.get(2).shopName}"/>
     	 <input type="hidden" id="shopReadCount2" value="${Shop.get(2).shopReadCount}"/>
         
         <input type="hidden" id="shopName3" value="${Shop.get(3).shopName}"/>
     	 <input type="hidden" id="shopReadCount3" value="${Shop.get(3).shopReadCount}"/>
         
         <input type="hidden" id="shopName4" value="${Shop.get(4).shopName}"/>
     	 <input type="hidden" id="shopReadCount4" value="${Shop.get(4).shopReadCount}"/>
      </div>
  </div>
</body>

<script type="text/javascript">
 
	$(function graph(){
		
		//제이쿼리보다 이렇게 써주는게 성능이 더 좋음
	 	var shopReadCount0 = document.getElementById("shopReadCount0").value
	    var shopReadCount1 = document.getElementById("shopReadCount1").value
	    var shopReadCount2 = document.getElementById("shopReadCount2").value
	    var shopReadCount3 = document.getElementById("shopReadCount3").value
	    var shopReadCount4 = document.getElementById("shopReadCount4").value
        
	    var shopName0 = document.getElementById("shopName0").value
	    var shopName1 = document.getElementById("shopName1").value
	    var shopName2 = document.getElementById("shopName2").value
	    var shopName3 = document.getElementById("shopName3").value
	    var shopName4 = document.getElementById("shopName4").value
	    
	    var color = Chart.helpers.color;
		var barChartData = {
			labels: ['',shopName0, shopName1, shopName2, shopName3, shopName4,''],
			datasets: [{
				label: '점포 조회수',
				backgroundColor: 'rgba(29, 219, 22, 0.7)',
				borderColor: 'rgba(29, 219, 22, 1)',
				borderWidth: 1,
				data: [
					0,
					shopReadCount0,
					shopReadCount1,
					shopReadCount2,
					shopReadCount3,
					shopReadCount4,
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
						text: '인기점포 TOP5',
						fontSize: 45
					}
				}
			});

		});
	});

</script>
	   
</body>
	
	<%@ include file="../include/mainBottom.jsp" %>
		
</html>
