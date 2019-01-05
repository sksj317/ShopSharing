<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
window.onload = function requestList(){	
		
			$.ajax({
				type: "post",
				url : "myRequestList.cm",
				data : {"memberId" : $('#memberId').val()},
				dataType : "html",
				success:function(result){
					$("#listContent").html(result);
				}
			});
		}
function requestList(){	
	
	$.ajax({
		type: "post",
		url : "myRequestList.cm",
		data : {"memberId" : $('#memberId').val()},
		dataType : "html",
		success:function(result){
			$("#listContent").html(result);
		}
	});
}
function responseList(){	
	
	$.ajax({
		type: "post",
		url : "myResponseList.cm",
		data : {"memberId" : $('#memberId').val()},
		dataType : "html",
		success:function(result){
			$("#listContent").html(result);
		}
	});
}
function contractList(){	
	
	$.ajax({
		type: "post",
		url : "myContractList.cm",
		data : {"memberId" : $('#memberId').val()},
		dataType : "html",
		success:function(result){
			$("#listContent").html(result);
		}
	});
}
</script>
<%@ include file="../include/mainTop.jsp"%>
<body>
	<div class="container">

		<div class="row">

			<div class="col-lg-3">

				<h1 class="my-4">목록</h1>
				<div class="list-group">
					<a href="javascript:requestList();" class="list-group-item">보낸신청목록</a>
					<a href="javascript:responseList();" class="list-group-item">받은요청목록</a>
					<a href="javascript:contractList();" class="list-group-item">진행중인계약목록</a>
				</div>

			</div>

			<div class="col-lg-9" id="listContent"></div>
			
		</div>
	</div>
</body>

<%@ include file="../include/mainBottom.jsp"%>
</html>