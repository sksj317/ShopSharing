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
</head>
<body>
	<div>
	<select id="bca" name="bca" onchange="ccatt()">
		<%for(Object o : list){ 
			Bcat bcat = (Bcat)o;%>
			<option value="<%=bcat.getBnum()%>"><%=bcat.getBname() %></option>
		<%} %>
	</select>
	</div>
</body>
</html>