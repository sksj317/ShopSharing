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

    <title>우수공유자 TOP5</title>

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
    
    <h2>우수공유자 TOP5 </h2><br/>
   	<div >
      <div id="top5">
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="20%">랭킹</th>
            <th width="20%">아이디</th>
            <th width="20%">회원등급</th>
            <th width="20%">회원유형</th>
            <th width="20%">회원점수 평균</th>
          </tr>
        </thead>
        <tbody>
        	<c:forEach var="member" items="${Member}" varStatus="status">
            <tr>
            	<td>${status.index+1}위</td>
            	<td><a href ="selectMemberInChart.com?memberId=${member.memberId}">${member.memberId}</a></td>
            	<td>${member.memberGrade}</td>
            	<td>${member.memberType}</td>
            	<td>${member.memberPointAver}</td>
            <tr>
            </c:forEach>
        </tbody>
      </table>
      </div>
         <input type="hidden" id="memberId0" value="${Member.get(0).memberId}"/>
     	 <input type="hidden" id="memberPointAver0" value="${Member.get(0).memberPointAver}"/>
         
         <input type="hidden" id="memberId1" value="${Member.get(1).memberId}"/>
     	 <input type="hidden" id="memberPointAver1" value="${Member.get(1).memberPointAver}"/>
         
         <input type="hidden" id="memberId2" value="${Member.get(2).memberId}"/>
     	 <input type="hidden" id="memberPointAver2" value="${Member.get(2).memberPointAver}"/>
         
         <input type="hidden" id="memberId3" value="${Member.get(3).memberId}"/>
     	 <input type="hidden" id="memberPointAver3" value="${Member.get(3).memberPointAver}"/>
         
         <input type="hidden" id="memberId4" value="${Member.get(4).memberId}"/>
     	 <input type="hidden" id="memberPointAver4" value="${Member.get(4).memberPointAver}"/>
      </div>
  </div>
</body>

<script type="text/javascript">
 
	$(function graph(){
		
		//제이쿼리보다 이게 빠름
	 	var memberPointAver0 = document.getElementById("memberPointAver0").value
	    var memberPointAver1 = document.getElementById("memberPointAver1").value
	    var memberPointAver2 = document.getElementById("memberPointAver2").value
	    var memberPointAver3 = document.getElementById("memberPointAver3").value
	    var memberPointAver4 = document.getElementById("memberPointAver4").value
        
	    var memberId0 = document.getElementById("memberId0").value
	    var memberId1 = document.getElementById("memberId1").value
	    var memberId2 = document.getElementById("memberId2").value
	    var memberId3 = document.getElementById("memberId3").value
	    var memberId4 = document.getElementById("memberId4").value
	    
	    var color = Chart.helpers.color;
		var barChartData = {
			labels: ['',memberId0, memberId1, memberId2, memberId3, memberId4,''],
			datasets: [{
				label: '회원점수 평균',
				backgroundColor: 'rgba(255, 0, 127, 0.7)',
				borderColor: 'rgba(255, 0, 127, 1)',
				borderWidth: 1,
				data: [
					0,
					memberPointAver0,
					memberPointAver1,
					memberPointAver2,
					memberPointAver3,
					memberPointAver4,
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
						text: '우수공유자 TOP5',
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
