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
	<select id="cca" name="cca">
		<%for(Object o : list){ 
			Ccat ccat = (Ccat)o;%>
			<option value="<%=ccat.getCnum()%>"><%=ccat.getCname() %></option>
		<%} %>
	</select>
	</div>
</body>
</html>