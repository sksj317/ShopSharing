<%@page import="org.springframework.web.context.request.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*, java.util.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<%
	List<GoodsReply> list = (List<GoodsReply>)request.getAttribute("goodsReplyList");
	String memberId = (String)session.getAttribute("memberId");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table{
 	width: 100%;
    border-collapse: collapse;
}
</style>
<script>
	function test2(num,num1){
		
		$.ajax({
			type: "get",
			url : "goodsReplyDelete.do?goodsReplyNum="+num+"&goodsNum="+num1,
			success:function(result){
				$("#listReply").html(result);
			}
		});
	}
</script>
<body>
<table>
	<tr><td>아이디</td><td>내용</td><td>등록일</td></tr>	
	<%
		for(GoodsReply r : list){
	%>
		<tr><td hidden="hidden"><%= r.getGoodsReplyNum() %></td>
			<td><%=r.getGoodsReplyId()%></td>
			<td><%=r.getGoodsReplyContent()%></td>
			<td><fmt:formatDate value="<%=r.getGoodsReplyDate()%>" pattern="yyyy-MM-dd"/></td>
			<%if(memberId.equals(r.getGoodsReplyId())){ %>
		    <td><button type = "button" onclick="test2('<%= r.getGoodsReplyNum() %>','<%=r.getGoodsNum()%>');">삭제</button></td></tr>	
			<%} %>
	<%
		}
	%>
</table>
</body>
</html>