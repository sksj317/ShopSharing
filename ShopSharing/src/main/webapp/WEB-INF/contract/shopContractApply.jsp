<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*,command.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
	ShareReqCommand shareReqCommand = (ShareReqCommand)request.getAttribute("shareReqCommand");
%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>신청</title>

<!-- Bootstrap -->
<!-- <link href="./resources/css/bootstrap.css" rel="stylesheet"> -->
<!-- font awesome -->
<link rel="stylesheet" href="./resources/css/font-awesome.min.css"
	media="screen" title="no title">
<!-- Custom style -->
<link rel="stylesheet" href="./resources/css/join.css" media="screen"
	title="no title">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	
<%@ include file="../include/mainTop.jsp"%>
<style>
/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger{cursor: pointer;}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker{cursor: pointer;}
</style>
</head>

<body>
	<div class="col-md-12">
	
		<div class="page-header">
			<h1>
				<small>점포공유신청</small>
			</h1>
		</div>
		
		<form:form class="form-horizontal" commandName="shareReqCommand" action="shopContractApply.com" method="POST">
		 	 <form:input type="hidden" path="shopNum" name="shopNum" value="<%=shareReqCommand.getShopNum() %>"/> 
		 	 <form:input type="hidden" path="memberId"  value="<%=shareReqCommand.getMemberId() %>"/>
		 	 <form:input type="hidden" path="shopName" value ="<%=shareReqCommand.getShopName() %>"/>
		<%-- 	<p>번호:<c:out value="${shareReqCommand.getShopNum}" /></p> --%>
			
			<div class="form-group">

				<div class="col-sm-6">
					<p>시작 일자 : <form:input type="text" id="datepicker" path="shareReqStartPeriod"/> </p>
					
					<p>종료 일자 :  <form:input type="text" id="datepicker2" path="shareReqEndPeriod" /> </p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputTime">신청 시간</label>
				<div class="col-sm-6">
					<form:select style="width:150px;" path="shareReqStartTime"> <!-- Long 타입이므로 null값이 들어가지 못하게 JS처리 필요 -->
			            <form:option value = "25">오픈 시간</form:option>
			            <c:forEach var="i" begin="0" end="24" step="1" varStatus="status">
			               <form:option value="${i}"><c:out value="${i}"/>:00</form:option>
			            </c:forEach>
			       </form:select>
			       <form:select style="width:150px;" path="shareReqEndTime"> <!-- Long 타입이므로 null값이 들어가지 못하게 JS처리 필요 -->
			            <form:option value = "25">마감 시간</form:option>
			            <c:forEach var="i" begin="0" end="24" step="1" varStatus="status">
			               <form:option value="${i}"><c:out value="${i}"/>:00</form:option>
			            </c:forEach>
			       </form:select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputTime">신청 내용</label>
				<div class="col-sm-6">
					<form:textarea cols="70" rows="10" id="applyContext" path="shareReqContent" ></form:textarea>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
				<div class="col-sm-6" data-toggle="buttons">
					<label class="btn btn-warning active"> <input id="agree"
						type="checkbox" autocomplete="off" checked> <span class="fa fa-check"></span>
					</label> <a href="#">이용약관</a> 에 동의 합니다.
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-12 text-center">
					<button class="btn btn-primary" type="submit">
						신청<i class="fa fa-check spaceLeft"></i>
						
					</button>
					<!-- <button class="btn btn-danger" type="submit">
						뒤로가기<i class="fa fa-times spaceLeft"></i>
					</button> -->
				</div>
			</div>

		</form:form>
		<hr>
	</div>
 <script>
        $(function() {
            //모든 datepicker에 대한 공통 옵션 설정
            $.datepicker.setDefaults({
                dateFormat: 'yy-mm-dd' //Input Display Format 변경
                ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
                ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
                ,changeYear: true //콤보박스에서 년 선택 가능
                ,changeMonth: true //콤보박스에서 월 선택 가능                
                ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
                ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
                ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
                ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
                ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
                ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
                ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
                ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
            });
 
            //input을 datepicker로 선언
            $("#datepicker").datepicker();                    
            $("#datepicker2").datepicker();
            
            //From의 초기값을 오늘 날짜로 설정
            $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
            //To의 초기값을 내일로 설정
            $('#datepicker2').datepicker('setDate', '+1D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
        });
    </script>
	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	
</body>
<%@ include file="../include/mainBottom.jsp"%>
</html>
