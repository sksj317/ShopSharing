<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
 <%@ include file="../include/mainTop.jsp" %>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://fonts.googleapis.com/css?family=Jua&amp;subset=korean" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>회원가입</title>
    <link href="./resources/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="./resources/css/font-awesome.min.css" media="screen" title="no title">

  </head>
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script>
		    function sample6_execDaumPostcode() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var fullAddr = ''; // 최종 주소 변수
		                var extraAddr = ''; // 조합형 주소 변수
		
		                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    fullAddr = data.roadAddress;
		
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    fullAddr = data.jibunAddress;
		                }
		
		                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
		                if(data.userSelectedType === 'R'){
		                    //법정동명이 있을 경우 추가한다.
		                    if(data.bname !== ''){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있을 경우 추가한다.
		                    if(data.buildingName !== ''){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
		                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
		                }
		
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('memberPost').value = data.zonecode; //5자리 새우편번호 사용
		                document.getElementById('memberAddr1').value = fullAddr;
		
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById('memberAddr2').focus();
		            }
		        }).open();
		    }

		    function checkValue(){
		    	var pw = document.getElementById('memberPw').value
		    	var pattern1 = /[0-9]/;
		        var pattern2 = /[a-zA-Z]/;
		        var pattern3 = /[~!@\#$%<>^&*]/;
	            var form = document.frm;
	            
	            if(!form.memberId.value){
	                alert("아이디를 입력하세요.");
	                return false;
	            }
	            if(!form.memberPw.value){
	                alert("비밀번호를 입력하세요.");
	                return false;
	            }
	            if(form.memberPw.value != form.memberPw2.value ){
	                alert("비밀번호를 동일하게 입력하세요.");
	                return false;
	            }
	            if(!pattern1.test(pw)||!pattern2.test(pw)||!pattern3.test(pw)||memberPw.length<8||memberPw.length>50){
	                alert("비밀번호는 영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
	                return false;
	            }   
	            if(!form.memberName.value){
	                alert("이름을 입력하세요.");
	                return false;
	            }
	            if(!form.memberPh.value){
	                alert("전화번호를 입력하세요.");
	                return false;
	            }
	            if(isNaN(form.memberPh.value)){
	                alert("전화번호는 - 제외한 숫자만 입력해주세요.");
	                return false;
	            }
	            if(!form.memberPost.value){
	                alert("우편번호를 입력하세요.");
	                return false;
	            }
	            if(!form.memberAddr1.value){
	                alert("주소를 입력하세요.");
	                return false;
	            }
	            if(!form.memberAddr2.value){
	                alert("상세주소를 입력하세요.");
	                return false;
	            }
	            if(!form.idCheck.value ){
	            	alert("중복체크를 해주세요.");
	            	return false;
	            }
	            if(form.idCheck.value == 0){
	            	alert("등록된 아이디입니다.");
	            	return false;
	            }        
	        }
		    </script>
		    <script type="text/javascript" src="view/js/jquery-1.4.2.min.js"></script>
			<script type="text/javascript" src="view/js/jquery.form.js"></script>
		    <script>
		    function check(){
		    	 	if(!document.frm.memberId.value){
		                alert("아이디를 입력하세요.");
		                return false;
		            }else{
		              $.ajax({
		    	              type: 'POST',
		    	              url: "checkSignup.com",
		    	              data: {"memberId" : $('#memberId').val()},		    	              
		    	             success: function(data){
		    	                 if($.trim(data) == 0){
		    	                        $('#checkMsg').html('<p style="color:blue">사용가능</p>');
		    	                        $('#idCheck').val(1);
		    	                 }	   
		    	                 else{
		    	                	  $('#checkMsg').html('<p style="color:red">사용불가능</p>');
		    	                	  $('#idCheck').val('0');
		    	                    return false;
		    	                 }
		    	             }
		    	        });   
		            }
		   }
		</script>
  <body>
  
  <form:form commandName= "member" action="memberInsert.com" name="frm" onsubmit="return checkValue()" >
	<div class="col-md-12" >
    	<div class="page-header">
    		<h1>회원가입</h1>
     </div>
     <div class="form-group">
      <label class="col-sm-3 control-label">아이디</label>
        <div class="col-sm-6" >
        	<div class="input-group">
          		<form:input class="form-control" path="memberId" id="memberId" name = "memberId"
          		 type="text" placeholder="아이디"/>
          		<input type = "button" onclick="check()" value ="ID 중복 체크" >
          	</div>
          	<div id="checkMsg" ></div>
          	<input type ="hidden" id="idCheck" >
        </div>
     </div>
        
     <div class="form-group">
      <label class="col-sm-3 control-label">비밀번호</label>
       <div class="col-sm-6">
        <form:input class="form-control" path="memberPw" id="memberPw" type="password" placeholder="비밀번호"/>영문+숫자+특수기호 8자리이상 입력해주세요.
       </div>
     </div>
        
     <div class="form-group">
      <label class="col-sm-3 control-label">비밀번호 확인</label>
       <div class="col-sm-6">
        <input class="form-control" id="memberPw2" type="password" placeholder="비밀번호 확인"/>
       </div>
     </div>
       
     <div class="form-group">
      <label class="col-sm-3 control-label">이름</label>
       <div class="col-sm-6">
        <form:input class="form-control" path ="memberName" id="memberName" type="text" placeholder="이름"/>
       </div>
     </div>

     <div class="form-group">
      <label class="col-sm-3 control-label">휴대폰번호</label>
       <div class="col-sm-6">
        <div class="input-group">
         <form:input type="tel"  path ="memberPh" class="form-control" id="memberPh" placeholder="- 없이 입력해 주세요" />
        </div>
       </div>
     </div>
        
     <div class="form-group">
      <label class="col-sm-3 control-label">주소</label>
       <div class="col-sm-6">
        <div class="input-group">
         <form:input type="text" class="form-control"  path="memberPost" id="memberPost" placeholder="우편번호" readonly="true"/>
	      <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
		</div>
		<div class="input-group">
		 <form:input type="text" class="form-control" path="memberAddr1" id="memberAddr1" placeholder="주소" readonly="true"/>
		 <form:input type="text" class="form-control" path="memberAddr2" id="memberAddr2" placeholder="상세주소"/>
		</div>
	   </div>
	 </div>
		
	 <%-- <div class="form-group">
      <label class="col-sm-3 control-label" for="inputNumber">회원 유형</label>
       <div class="col-sm-6">
		<div class="input-group">
		 <form:radiobutton   path="memberType" id="member_type1" value="대여자" onclick="div_OnOff(this.value,'con');"
		 />대여자 
		 <form:radiobutton  path="memberType" id="member_type2" value="제공자" onclick="div_OnOff(this.value,'con');"
		 />제공자
		</div>
	   </div>
	 </div> --%>
		
	 <%-- <div class="form-group" style="display:none" id="con">
      <label class="col-sm-3 control-label">사업자 등록 번호</label>
       <div class="col-sm-6">
        <div class="input-group">
         <form:input type="tel" class="form-control" path="memberCeo" id="memberCeo" placeholder="- 없이 입력해 주세요"/>
        </div>
       </div>
      </div> --%>
        
     <div class="form-group">
      <div class="col-sm-12 text-center">
       <label class="col-sm-3 control-label"></label>
        <div class="col-sm-6">
        <input class="btn btn-primary" type="submit" value="회원가입"/>  
         <button class="btn btn-danger" type="reset">가입취소<i class="fa fa-times spaceLeft"></i></button>
         
        </div>
      </div>
     </div>
     
      </div>
     <hr>
	</form:form>
  </body>
   <%@ include file="../include/mainBottom.jsp" %>
</html>
    