<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String query = request.getQueryString();
	request.getParameterMap();
	String n = request.getParameter("n");
	String control = request.getParameter("control");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수 조작하기</title>
</head>
<body>
	<h2>문제설명</h2>
	<p>control은 "w", "a", "s", "d"의 4개의 문자로 이루어져 있으며,<br/> 
	control의 앞에서부터 순서대로 문자에 따라 n의 값을 바꿉니다</p>
	<ul>
		<li>"w" : n이 1 커집니다.</li>
		<li>"s" : n이 1 작아집니다.</li>
		<li>"d" : n이 10 커집니다.</li>
		<li>"a" : n이 10 작아집니다.</li>
	
	</ul>


	<% if(control == null || n == null) {%>
	<p>control 값과 n 값이 반드시 전달되어야 합니다.</p>
	<%}else { 
		int iN = Integer.parseInt(n);
		for(int i=0; i<control.length(); i++){
            if(control.charAt(i) == 'w') {
                iN++;
            } else if(control.charAt(i) == 's') {
                iN--;
            } else if(control.charAt(i) == 'd'){
                iN += 10;
           } else {
                iN -= 10;
            }            
        
        }%>
	<h2>정답은 <%=iN %> 입니다.</h2>
	<%} %>
</body>
</html>