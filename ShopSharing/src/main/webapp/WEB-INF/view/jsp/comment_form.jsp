<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form:form commandName="comment" action="comment_insert">
	
		<label>
			<spring:message code="commentInsert"/> : 
			<form:input path="commentNo" />
		</label>
		<label>
			<spring:message code="userId"/> : 
			<form:input path="userId" />
		</label>
		<label>
			<spring:message code="commentContent"/> : 
			<form:input path="commentContent" />
		</label>
		
		<input type="submit" value="<spring:message code="Insert.btn" />"/><br /><br />
	
	</form:form>
	
	<form:form action="comment_select" commandName="comment">
		
		<label>
			<spring:message code="commentSelect" /> :
			<form:input path="commentNo" />
		</label>
		
		<input type="submit" value="<spring:message code="Select.btn" />"><br /><br />
	
	</form:form>
	
	<form:form commandName="comment" action="comment_update">
		
		<label>
			<spring:message code="commentUpdate"/> : 
			<form:input path="commentNo" />
		</label>
		
		<label>
			<spring:message code="userId"/> : 
			<form:input path="userId" />
		</label>
		
		<label>
			<spring:message code="commentContent"/> : 
			<form:input path="commentContent" />
		</label>
		
		<input type="submit" value="<spring:message code="Update.btn" />"/><br /><br />
	
	</form:form>
	
	<form:form commandName="comment" action="comment_delete">
		
		<label>
			<spring:message code="commentDelete"/> : 
			<form:input path="commentNo" />
		</label>
		
		<input type="submit" value="<spring:message code="Delete.btn" />"/><br /><br />
	
	</form:form>

</body>
</html>