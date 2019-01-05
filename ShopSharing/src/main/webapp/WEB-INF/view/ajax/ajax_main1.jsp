<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>
<script type="text/javascript">
	$(function(){
		$('#comment').live('click',function(){
			var options = {
					type:"POST",
					url:"ajax_html.do", //가 실행됐을때(ajax_html.jsp페이지의 값을 받는데)
					dataType:"html",	//타입으로 데이터를 받음
					data:"n=1",			//쿼리스트링(주소에서 ?다음 값)
					success:function(data){
						$('#notice_content').html(data);
					}
			};
			$('#frm').ajaxSubmit(options);
			return false;
		})				
	});
	function form_select(num){
		$.ajax({
			type:"POST",
			url:"ajax_html.do",
			dataType:"html",
			data:"n="+num,
			success:function(data){
				$('#notice_content').html(data);
			}
		});
	}
</script>
</head>
<body>
	<div class="res" id="notice_content">
		
	</div>
	<form name="frm" id="frm">
		<input type="image" src="" id="comment" />
		<input type="hidden" value="1" name="n" />
	</form>
</body>
</html>