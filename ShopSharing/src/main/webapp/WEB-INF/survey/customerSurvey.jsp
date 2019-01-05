<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
<style>
html, body {
	width: 100%;
	height: 100%;
}

div {
	border: 0px solid #000000;
	-moz-box-sizing: border-box; /* Firefox  */
	-webkit-box-sizing: border-box; /* Safari */
	box-sizing: border-box; /* CSS3 Standard */
}

div#box {
	height: 50%;
}

.starR1 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat -52px 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR2 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR1.on {
	background-position: 0 0;
}

.starR2.on {
	background-position: -15px 0;
}
.starRev::after{
    display:block;
    content:" ";
    clear:both;
  }

</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


<title>메뉴테스트 설문</title>

<!-- Bootstrap core CSS -->

<link href="./resources/css/detail.css" rel="stylesheet">

<%@ include file="../include/mainTop.jsp" %>

</head>

	<script type="text/javascript">
  		
    	function checkValue(){
  			
    		var form = document.frm;
    		
    		if(!form.satiStar.value){
  				alert("전체적인 식사의 만족도를 입력해주세요.");
  				return false;
  			}
  			if(!form.quanStar.value){
  				alert("식사의 양 만족도를 입력해주세요");
  				return false;
  			}
  			if(!form.priceStar.value){
  				alert("음식의 가격에 대한 만족도를 입력해주세요");
  				return false;
  			}
  			if(!form.tasteStar.value){
  				alert("음식의 맛에 대한 만족도를 입력해주세요");
  				return false;
  			}
  			if(!form.visitStar.value){
  				alert("재방문 의사 점수를 입력해주세요");
  				return false;
  			}
  			
  		}
  	</script>

<body>

	
	<!-- Page Content -->

	<div class="container" style="height: 88%; width: 100%">
	<%-- <form action="customersurvey.com" name="cmtform" method="post"> --%>
		<form:form commandName="customCommand" action="customerSurvey.com" method="POST" name="frm" onsubmit="return checkValue()">
		<div class="row">
			<div class="col-lg-3 mb-4">
				<h3 class="my-4">설문자 유형</h3>
				<div class="list-group">
					<a href="shopSharingSurvey.com" class="list-group-item">점포제공자 설문</a> 
					<a href="shopLenderSurvey.com" class="list-group-item">점포대여자 설문</a> 
					<a href="consignmentSurvey.com" class="list-group-item">상품제공자 설문</a> 
					<a href="customerSurvey.com" class="list-group-item active">고객대상 설문</a>
				</div>
			</div>
			
				<div class="col-lg-6 mb-4">
					<div>
						<h3 class="my-4">고객 대상 설문 </h3>
						<p>식사의 만족도</p>
						<div class="starRev">
					      <span class="starR1">별1_왼쪽</span>
					      <span class="starR2">별1_오른쪽</span>
					      <span class="starR1">별2_왼쪽</span>
					      <span class="starR2">별2_오른쪽</span>
					      <span class="starR1">별3_왼쪽</span>
					      <span class="starR2">별3_오른쪽</span>
					      <span class="starR1">별4_왼쪽</span>
					      <span class="starR2">별4_오른쪽</span>
					      <span class="starR1">별5_왼쪽</span>
					      <span class="starR2">별5_오른쪽</span>
					    </div>
					    <form:input type="hidden" value="" id="satiStar" path="satiStar" class="startNum" />
					    <span class="num"></span>
						<br/>
						
						<p>식사의 양</p>
						<div class="starRev">
					      <span class="starR1">별1_왼쪽</span>
					      <span class="starR2">별1_오른쪽</span>
					      <span class="starR1">별2_왼쪽</span>
					      <span class="starR2">별2_오른쪽</span>
					      <span class="starR1">별3_왼쪽</span>
					      <span class="starR2">별3_오른쪽</span>
					      <span class="starR1">별4_왼쪽</span>
					      <span class="starR2">별4_오른쪽</span>
					      <span class="starR1">별5_왼쪽</span>
					      <span class="starR2">별5_오른쪽</span>
					    </div>
					    <form:input type="hidden" value="" id="quanStar" path="quanStar" class="startNum"/>
					    <span class="num"></span>
					    <br/>
					    
						<p>음식의 가격</p>
						<div class="starRev">
					      <span class="starR1">별1_왼쪽</span>
					      <span class="starR2">별1_오른쪽</span>
					      <span class="starR1">별2_왼쪽</span>
					      <span class="starR2">별2_오른쪽</span>
					      <span class="starR1">별3_왼쪽</span>
					      <span class="starR2">별3_오른쪽</span>
					      <span class="starR1">별4_왼쪽</span>
					      <span class="starR2">별4_오른쪽</span>
					      <span class="starR1">별5_왼쪽</span>
					      <span class="starR2">별5_오른쪽</span>
					    </div>
					    <form:input type="hidden" value="" id="priceStar" path="priceStar" class="startNum"/>
					    <span class="num"></span>
					    <br/>
					    
						<p>음식의 맛</p>
						<div class="starRev">
					      <span class="starR1">별1_왼쪽</span>
					      <span class="starR2">별1_오른쪽</span>
					      <span class="starR1">별2_왼쪽</span>
					      <span class="starR2">별2_오른쪽</span>
					      <span class="starR1">별3_왼쪽</span>
					      <span class="starR2">별3_오른쪽</span>
					      <span class="starR1">별4_왼쪽</span>
					      <span class="starR2">별4_오른쪽</span>
					      <span class="starR1">별5_왼쪽</span>
					      <span class="starR2">별5_오른쪽</span>
					    </div>
					    <form:input type="hidden" value="" id="tasteStar" path="tasteStar" class="startNum" />
					    <span class="num"></span>
					    <br/>
					    
						<p>재방문 의사</p>
						<div class="starRev">
					      <span class="starR1">별1_왼쪽</span>
					      <span class="starR2">별1_오른쪽</span>
					      <span class="starR1">별2_왼쪽</span>
					      <span class="starR2">별2_오른쪽</span>
					      <span class="starR1">별3_왼쪽</span>
					      <span class="starR2">별3_오른쪽</span>
					      <span class="starR1">별4_왼쪽</span>
					      <span class="starR2">별4_오른쪽</span>
					      <span class="starR1">별5_왼쪽</span>
					      <span class="starR2">별5_오른쪽</span>
					    </div>
					    <form:input type="hidden" value="" id="visitStar" path="visitStar" class="startNum"/>
					    <span class="num"></span>
					    
						<br><p>그 외 하고싶은 말</p>
				    	<div class="form-group">
				     		<form:textarea class="form-control" rows="5" id="comment" path="customComment" placeholder="내용을 입력해주세요."/>
				    	</div>
					
					<button type="submit">설문제출</button>
				</div>
		</form:form>
	</div>

		<div class="col-lg-3 mb-4">
		
			<h3 class="my-4">메뉴제공자 정보</h3>
		
			<p>
				아이디 : ${Member.memberId} 
			</p>
		
			<p>
				주소 : ${Member.memberAddr1}
			</p>
			
			<p>	
				상세주소 :  ${Member.memberAddr2}
			</p>
		
			<p>
				핸드폰 : ${Member.memberPh} 
			</p>
			
			<p>
				가입일 : <fmt:formatDate value="${Member.memberReg}" pattern="yyyy-MM-dd"/> 
			</p>
		
		</div>

	<!-- /.container -->

</body>
<script type="text/javascript">
	$('.starRev span').click(function() {
		var number = $(this).parent().find("on").length;
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');
		
		$(this).parent().next(".startNum").val($(this).parent().find("span.on").length/2)
		$(this).parent().next(".startNum").next(".num").text($(this).parent().find("span.on").length/2)

		return false;
	});
</script>

<%@ include file="../include/mainBottom.jsp" %>

</html>