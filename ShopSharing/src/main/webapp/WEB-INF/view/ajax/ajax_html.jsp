<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, model.*" %>
<%
	Long result = (Long)request.getAttribute("result");
	List list = (List)request.getAttribute("list");	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(result == 1){ %>
		게시글 선택 
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="javascript:form_select(2);">답글 선택</a>
	<%	for(int i = 0;i<list.size();i++){
			Comment comment = (Comment)list.get(i);		
	%>		
		글번호 : <%=comment.getCommentNo() %><br />
		글쓴이 : <%=comment.getUserId() %><br />
		등록일 : <%=comment.getRegDate() %><br />
		게시글 : <%=comment.getCommentContent() %>		<br />
	<%	} 
	}else if(result == 2){ %>
		<a href="javascript:form_select(1);">게시글 선택</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		답글 선택
	<%
			for(int i = 0;i<list.size();i++){
			Reply reply = (Reply)list.get(i);
		%>
		답글 번호 : <%=reply.getReplyNo() %><br />
		작성자 : <%=reply.getUserId() %><br />
		답글 등록일 : <%=reply.getRegDate() %><br />
		답글 내용 : <%=reply.getReplyContent() %><br />	
	<%	} 
	}%>
</body>
</html>