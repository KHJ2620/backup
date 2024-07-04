<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직업</title>
</head>
<body>
	<ul>
		<c:forEach var="one" items="${jobs }">
		<li><c:url var="link" value="/hr/employees">
			<c:param name="jobId" value="${one.jobId }"/>
			
		</c:url>
		<a href="${link }">${one.jobTitle }</a>
		</li>
		</c:forEach>
	
	</ul>
</body>
</html>