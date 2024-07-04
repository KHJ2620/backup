<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String query = request.getQueryString();
	request.getParameterMap();
	String slice = request.getParameter("slice");
	String n = request.getParameter("n");
	int iSlice = Integer.parseInt(slice);
	int iN = Integer.parseInt(n);
	int answer = iN % iSlice >0 ? iN/iSlice+1 : iN/iSlice;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피자 나눠먹기</title>
</head>
<body>
	<h1>피자 나눠먹기</h1>
	<img src='https://img.freepik.com/premium-vector/pizza-illustration_14656-92.jpg' width='400' height='300'>
	<p>
	<%=iN %>명이 <%=iSlice %>조각으로 자른 피자를 한 조각 이상씩 먹으려면,
	</p>
	<h2 style='color:green'>정답은 <b><%=answer %></b> 입니다.</h2>

	<a href = "./pizza.jsp">다시 해보기</a>
	<a href = "../overview.jsp">홈으로 돌아가기</a>
</body>
</html>