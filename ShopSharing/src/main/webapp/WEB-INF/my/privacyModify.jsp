<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원정보수정</title>
<!-- Bootstrap -->
<link href="./resources/css/bootstrap.css" rel="stylesheet">
<%@ include file="../include/mainTop.jsp" %>
<script>
function privacyModify(){
	if(isNaN(form.memberPh.value)){
        alert("전화번호는 - 제외한 숫자만 입력해주세요.");
        return false;
    }
	if(!form.memberAddr2.value){
        alert("상세주소를 입력하세요.");
        return false;
    }
	document.form.action = "${path}/ShopSharing/update.com"
	document.form.submit();	
};
</script>

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
</script>
</head>


<body>
	<div class="col-md-12">
		<div class="page-header">
			<h1>
				<small>개인정보수정</small>
			</h1>
		</div>
		<br/>
		<br/>
		<form Name="form" method="post" class="form-horizontal">
		<div class="form-group">
				<label class="col-sm-3 control-label" for="">회원 등급</label>
				<div class="col-sm-6">
				<input class="form-control" name="memberGrade" value= "${member.memberGrade }" type="text" readonly="readOnly"/>
				<p class="help-block"></p>
				</div>
			</div>		
			<div class="form-group">
				<label class="col-sm-3 control-label" for="">회원아이디</label>
				<div class="col-sm-6">
				<input class="form-control" name="memberId" value= "${member.memberId }" type="text" readonly="readOnly"/>
				<p class="help-block"></p>
				</div>
			</div>			
			<div class="form-group">
				<label class="col-sm-3 control-label" for="">연락처번호</label>
				<div class="col-sm-6">
					<input class="form-control" name ="memberPh" value="${member.memberPh }" type="text"/>
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="form-group">
      <label class="col-sm-3 control-label">주소</label>
       <div class="col-sm-6">
        <div class="input-group">
         <input type="text" class="form-control"  name="memberPost" value="${member.memberPost }" id="memberPost" placeholder="우편번호" readonly="readonly"/>
	      <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
		</div>
		<div class="input-group">
		 <input type="text" class="form-control" name="memberAddr1" id="memberAddr1" value="${member.memberAddr1 }" placeholder="주소" readonly="readOnly"/>
		 <input type="text" class="form-control" name="memberAddr2" id="memberAddr2" value="${member.memberAddr2 }"placeholder="상세주소"/>
		</div>
	   </div>
	 </div>
			
			<div class="form-group">
				<div class="col-sm-12 text-center">
					<button class="btn btn-primary" type ="button" onclick="privacyModify()">회원정보 수정<i class="fa fa-check spaceLeft"></i>
					</button>
					<a class="btn btn-danger" href=javascript:history.go(-1)>뒤로가기<i class="fa fa-times spaceLeft"></i></a>
					
				</div>
			</div>
			
		</form>
		<hr>
	</div>

	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
<%@ include file="../include/mainBottom.jsp" %>
</html>
