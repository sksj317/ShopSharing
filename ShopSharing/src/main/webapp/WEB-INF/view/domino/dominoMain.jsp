<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*, java.util.*"%>
<%
	List list = (List)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>
<script type="text/javascript">
	function bcatt(){
		
		var num = document.getElementById("aca").value;
		$.ajax({
			type:"POST",
			url:"bcat.do",
			dataType:"html",
			data:"anum="+num,
			success:function(result){
				$('#bcat').html(result);
				$('#ccat').html("");
			}
		});
	}
	function ccatt(){
		var num1 = document.getElementById("aca").value;
		var num2 = document.getElementById("bca").value;
	
		$.ajax({
			type:"POST",
			url:"ccat.do",
			dataType:"html",
			data:"anum="+num1+"&bnum="+num2,
			success:function(result){
				$('#ccat').html(result);
			}
		});
	}
</script>
</head>
<body>
	<div>
	<select id="aca" name="aca " onchange="bcatt()">
		<option value="0">--대카테고리를 선택해주세요--</option>
		<%for(Object o : list){ 
			Acat acat = (Acat)o;%>
			<option value="<%=acat.getAnum()%>"><%=acat.getAname() %></option>
		<%} %>
	</select>
	</div>
	<div id="bcat"></div>
	<div id="ccat"></div>
</body>
</html>