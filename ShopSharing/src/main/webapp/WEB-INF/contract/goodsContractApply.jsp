<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*, java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%
	Consignment consignment = (Consignment)request.getAttribute("consignment");
%> 

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>위탁판매 신청</title>

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
				<small>위탁판매신청</small>
			</h1>
		</div>

		<form:form class="form-horizontal" commandName="consignment" action="goodsContractApply.com" method="POST">

			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputName">점포이름</label>
				<div class="col-sm-6">
					<form:input class="form-control" id="shopName" type="text" path="shopName" placeholder="기존에 등록된 점포명을 입력해주세요"/>
					<!-- 추후에 복수점포를 가진 사람의 경우를 생각하여, selectBox에서 점포선택을 하는 것으로 변경(AJAX 필요로 예상됨) -->
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputTerm">신청 기간</label>
				<div class="col-sm-6">
					<p>시작 일자 : <form:input type="text" id="datepicker" path="consignmentStartPeriod"/> </p>
					
					<p>종료 일자 :  <form:input type="text" id="datepicker2" path="consignmentEndPeriod" /> </p>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputNumber">위탁희망수량</label>
				<div class="col-sm-6">
					<div class="input-group">
						<form:input type="text" class="form-control" id="consignmentQuantity" path="consignmentQuantity" placeholder="희망 수량"/>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label" for="inputPrice">희망상품단가</label>
				<div class="col-sm-6">
					<div class="input-group">
						<form:input type="text" class="form-control" id="consignmentAmount" path="consignmentAmount" placeholder="희망 단가"/>
					</div>
				</div>
			</div>
			
			<form:input type="hidden" path="memberId" value="<%=consignment.getMemberId()%>"/>
			<form:input type="hidden" path="memberId2" value="<%=consignment.getMemberId2()%>"/>
			<form:input type="hidden" path="goodsNum" value="<%=consignment.getGoodsNum()%>"/>
			<form:input type="hidden" path="goodsName" value="<%=consignment.getGoodsName()%>"/> 
		
			<div class="form-group">
				<div class="col-sm-12 text-center">
					<button class="btn btn-primary" type="submit">
						신청<i class="fa fa-check spaceLeft"></i>
					</button>
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
