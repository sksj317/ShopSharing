<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>

<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>점포 등록 신청서</title>
    <link href="./resources/css/bootstrap.css" rel="stylesheet">

   
  	<%@ include file="../include/mainTop.jsp" %>
  </head>
  
  <body>
  		<!-- enctype="multi.getParameter" >> 틀린 형식 주의-->
  		<!-- enctype="multipart/form-data" -->
  		
  		<form:form commandName="shopCommand" action="shopJoin.com" method="post" enctype="multipart/form-data"> <!-- commandName은 Controller에서 Command 객체의 클래스명이 아니라 변수명으로 써줘야 함! --> 
        
        <div class="page-header">
    	    <h1>점포 등록 신청서</h1>
        </div>
        <div class="form-group">       	
        	<label class="col-sm-3 control-label" for="inputName">점포 임대 형식</label>
        <div class="col-sm-6">
       
       	 <!-- path를 통해 Command 객체안에 값을 저장하고 불러온다 >> name과 유사 / id는 JS내에서 스크립트 연산을 할 때 지칭하는 것이 필요할때 사용-->
        <form:select style="width:150px;" id="shopSelect" path="shopLentType">  
				<form:option value = "미선택">점포 임대 유형</form:option>
				<form:option value = "점포공유">점포공유</form:option>
				<form:option value = "샵인샵">샵인샵</form:option>
				<form:option value = "메뉴테스트">메뉴테스트</form:option>
		</form:select>
		
		</div>
		</div>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputShopName">점포 이름</label>
        <div class="col-sm-6">
          <form:input class="form-control" path="shopName" id="inputShopName" type="text" placeholder="점포 이름을 입력해주세요" />
        </div>
        </div>
         <div class="form-group">
         	<label class="col-sm-3 control-label" for="inputId">점포 업종 유형</label>		
        <div class="col-sm-6">
 			<form:select style="width:230px;" id="shopSelect" path="shopType" onChange="fillSelectFromArray1(this.form.WORK_DISTRICT_NAME2,((this.selectedIndex == -1) ? null : modelinfo[this.selectedIndex]));">
				<form:option value = "미선택">유형 선택</form:option>
				<form:option value = "카페">카페</form:option>
				<form:option value = "음식점">음식점</form:option>
				<form:option value = "주점">주점</form:option>
				<form:option value = "기타">기타</form:option>
			</form:select>
		</div>
		</div>
		 <div class="form-group">       	
        	<label class="col-sm-3 control-label" for="inputName">점포 주소</label>
        <div class="col-sm-6">
        	<form:input type="text" id="sample6_postcode" path="shopPost" placeholder="우편번호"/>
			<form:input type="button" path="shopAddr" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"/><br>
			<form:input type="text" path="shopAddr" id="sample6_address" placeholder="주소"/>
			<form:input type="text" path="shopAddr2" id="sample6_address2" placeholder="상세주소"/>
		</div>
		</div>
        <div class="form-group">
        	<label class="col-sm-3 control-label" for="inputName">점포 월세 금액</label> <!-- Long 타입이므로 null값이 들어가지 못하게 JS처리 필요 -->
        <div class="col-sm-6">
        	<form:input class="form-control" path="shopMonth" id="inputName" type="text" placeholder="ex)100000"/>
        </div>
        </div>
         <div class="form-group">
        	<label class="col-sm-3 control-label" for="inputName">점포 보증 금액</label> <!-- Long 타입이므로 null값이 들어가지 못하게 JS처리 필요 -->
        <div class="col-sm-6">
        	<form:input class="form-control" path="shopDeposit" id="inputName" type="text" placeholder="ex)100000"/>
        </div>
        </div> 
         <div class="form-group">
        	<label class="col-sm-3 control-label" for="inputName">점포 대여 금액</label> <!-- Long 타입이므로 null값이 들어가지 못하게 JS처리 필요 -->
        <div class="col-sm-6">
        	<form:input class="form-control" path="shopLentPay" id="inputName" type="text" placeholder="ex)100000"/>
        </div>
        </div>  
       
		<div class="form-group">
			<label class="col-sm-3 control-label" for="inputName">점포 운영 시간</label> 
		<div class="col-sm-6">
			
			<form:select style="width:150px;" id="shopSelect" path="shopStartTime"> <!-- Long 타입이므로 null값이 들어가지 못하게 JS처리 필요 -->
				<form:option value = "0">시작 시간</form:option>
				<form:option value = "7">07:00</form:option>
				<form:option value = "8">08:00</form:option>
				<form:option value = "9">09:00</form:option>
				<form:option value = "10">18:00</form:option>
			</form:select>
			~
			<form:select style="width:150px;" id="shopSelect" path="shopEndTime"> <!-- Long 타입이므로 null값이 들어가지 못하게 JS처리 필요 -->
				<form:option value = "0">마감 시간</form:option>
				<form:option value = "15">15:00</form:option>
				<form:option value = "16">16:00</form:option>
				<form:option value = "17">17:00</form:option>
				<form:option value = "2">02:00</form:option>
			</form:select>
		</div>
		</div>

		<div class="form-group">
			<label class="col-sm-3 control-label" for="inputName">점포 사진</label>
		<div class="col-sm-6">
		
		   <input type="file" name="shopImg" />

		 
       	</div>
        </div>
        	
		<div class="form-group">
		<label class="col-sm-3 control-label" for="inputName">점포 설명</label>
		<div class="col-sm-6">
		    <form:textarea path="shopDetail" rows="10" cols="40" placeholder="점포 특이사항을 입력해주세요"></form:textarea>
        </div>
		</div>
       	
       	
     <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit">점포신청<i class="fa fa-check spaceLeft"></i></button>
            <button class="btn btn-danger" type="reset">등록취소<i class="fa fa-times spaceLeft"></i></button>
          </div>
        </div>
       
       </form:form>
        
        </body>
        
          <hr>
    	
      <script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
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
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }

    </script>
    <%@ include file="../include/mainBottom.jsp" %>
</html>

    