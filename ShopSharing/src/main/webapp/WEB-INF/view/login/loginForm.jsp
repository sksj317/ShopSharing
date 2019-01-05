<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>
<script type="text/javascript">
	$(function(){
		$('#log_in').bind('click',function(){
			$('#frm').ajaxSubmit({
			type : 'post',
			url : 'login_prg.do',
			beforeSubmit:applicant_check,
			success:applicant_ok,
			error:function(){
				alert('에러 발생! 잠시후 다시 시도해 주세요.');
				return;
				}
			});
			return false;
		});		
	});
	function applicant_check(){
		if(!document.getElementById("memberId").value){
			alert("아이디를 입력하세요.");
			document.frm.memberId.focus();
			return false;
		}
		if(!document.getElementById("memberPwd").value){
			alert("비밀번호를 입력하세요.");
			document.frm.memberPwd.focus();
			return false;
		}
	}
	function applicant_ok(responseText, statusText, xhr, $form){
		
		if(statusText == 'success'){
			alert(responseText);
			if(responseText.trim() == "0"){
				alert("아이디 또는 비밀번호를 입력하세요.");
				form.memberId.value="";
				form.memberPwd.value="";
				form.memberId.focus();
			}else if(responseText.trim() == "1"){
				alert("아이디가 존재하지 않습니다.");
				form.memberId.value="";
				form.memberPwd.value="";
				form.memberId.focus();
			}else if(responseText.trim() == "2"){
				alert("비밀번호가 일치하지 않습니다.");
				form.memberPwd.value="";
				form.memberId.focus();
			}else if(responseText.trim() == "3"){
				alert("cccc");
				location.href="main1.do";
			}
		}
	}
</script>
<body>
<form name="frm" id="frm" >
	<div class="loginArea">
		<dl>
			<dt class="blind">아이디</dt>
			<dd>
				<input type="text" name="memberId" id="memberId" style="width:140px;" />
			</dd>
			<dt class="blind">패스워드</dt>
			<dd>
				<input type="password" name="memberPwd" id="memberPwd" style="width:140px;" />
			</dd>
			<ul>
  				<li> <input type="image" src="" id="log_in" alt="로그인" title="로그인" /> </li>
			</ul>
		</dl>
	</div>
</form>
</body>
</html>