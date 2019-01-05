<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>상품 등록 신청서</title>
    <link href="./resources/css/bootstrap.css" rel="stylesheet">
  	<%@ include file="../include/mainTop.jsp" %>
  </head>
  
  <script type="text/javascript">
  		
    	function checkValue(){
  			
    		var form = document.frm;
    		
    		if(!form.goodsName.value){
  				alert("상품 이름을 입력하세요.");
  				return false;
  			}
  			if(!form.goodsAmount.value){
  				alert("상품 수량을 입력하세요.");
  				return false;
  			}
  			if(!form.goodsPrice.value){
  				alert("상품 가격을 입력하세요.");
  				return false;
  			}
  			if(!form.goodsImg.value){
  				alert("상품 사진을 등록하세요");
  				return false;
  			}
  			if(!form.goodsDetail.value){
  				alert("상품 상세정보를 입력하세요");
  				return false;
  			}
  			alert("상품등록 완료");
  		}
  	
    	</script>
  
  <body>
  		<form:form commandName="goodsCommand" name="frm" onsubmit="return checkValue()" action="goodsJoin.com" method="post" enctype="multipart/form-data">
  		
        <div class="page-header">
    	    <h1>상품 등록 신청서</h1>
    	    <p>작성자 : ${row.memberId }</p>
        </div>
        
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputId">상품 이름</label>
        <div class="col-sm-6">
          <form:input class="form-control" path="goodsName" id="goodsName" type="text" placeholder="상품 이름을 입력해주세요"/>
        </div>
        </div>
        
        <div class="form-group">
        	<label class="col-sm-3 control-label" for="inputName">상품 수량</label>
        <div class="col-sm-6">
        	<form:input class="form-control" path="goodsAmount" id="goodsAmount" type="text" placeholder="상품 수량을 입력해주세요"/>
        </div>
        </div> 
        
        <div class="form-group">
        	<label class="col-sm-3 control-label" for="inputName">상품 금액</label>
        <div class="col-sm-6">
        	<form:input class="form-control" path="goodsPrice" id="goodsPrice" type="text" placeholder="상품 금액"/>
        </div>
        </div>
        
       <div class="form-group">
			<label class="col-sm-3 control-label" for="inputName">상품 사진</label>
		<div class="col-sm-6">
			<form:input type="file" path="goodsImg" id="goodsImg"/>
        </div>
        </div>	 
		
		<div class="form-group">
		<label class="col-sm-3 control-label" for="inputName">상품 설명</label>
		<div class="col-sm-6">
			<form:textarea path="goodsDetail" id="goodsDetail" rows="10" cols="40"></form:textarea>
        </div>
		</div>     		
        
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit">상품등록<i class="fa fa-check spaceLeft"></i></button>
            <button class="btn btn-danger" type="reset">등록취소<i class="fa fa-times spaceLeft"></i></button>
          </div>
        </div>
      <form:hidden path="goodsReadCount" value="0"/>
      </form:form>
  </body>
  	
  	<%@ include file="../include/mainBottom.jsp" %>
  	<hr>
 	
 	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>

</html>

    