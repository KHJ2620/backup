<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>직원</title>
</head>
<body>
	<ul>
		<c:forEach var="one" items="${employees }">
		<li>
		${one.firstName } ${one.lastName }
		
		</li>
		</c:forEach>
	
	</ul>
</body>
</html>