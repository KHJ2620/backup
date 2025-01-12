<%@page import="rentalbook.dao.UserDao"%>
<%@page import="rentalbook.vo.User"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle.jdbc.datasource.impl.OracleDataSource"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/member/join-error.jsp" %>
<%
	String userId = request.getParameter("user_id");
	String password = request.getParameter("password");
	String passwordCheck = request.getParameter("password_check");	
	String nickname = request.getParameter("nickname");
	String gender = request.getParameter("gender");
	
	//데이터 유효성 검사
	if(userId.isBlank() || password.isBlank() ||passwordCheck.isBlank() || !password.equals(passwordCheck)){
		//인가를 하고
		return;
	}
	
	UserDao userDao = new UserDao();
	User found = userDao.findByUserID(userId);
	
	OracleDataSource ods = new OracleDataSource();
	ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
	ods.setUser("rentalbook");
	ods.setPassword("oracle");
	
	Connection conn = ods.getConnection();
	
	PreparedStatement stmt = conn.prepareStatement("insert into users values(?, ? ,? ,? ,? )");
	stmt.setString(1, userId);
	stmt.setString(2, password);
	stmt.setString(3, nickname);
	stmt.setString(4, gender);
	stmt.setDate(5, new Date(System.currentTimeMillis()));
	
	int r =  stmt.executeUpdate();
	
	conn.close();
	

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입결과 | 동네도서관</title>
</head>
<body>
	<div style="width: 840px; margin: 100px auto; text-align: center;">
		<h2>회원가입처리결과</h2>
		<%if(r == 1) { %>
			<h3>가입 승인</h3>
			<p>
				<b><%=nickname %></b>님의 회원가입 요청이 승인 처리되었습니다.
			</p>
		<%} else { %>
		
		<%} %>
	</div>
</body>
</html>