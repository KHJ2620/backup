<%@page import="rentalbook.vo.User"%>
<%@page import="rentalbook.dao.UserDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle.jdbc.datasource.impl.OracleDataSource"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String uId = request.getParameter("u_id");	
	String uPwd = request.getParameter("u_pwd");
	boolean result = false;
	if(!uId.isBlank() && !uPwd.isBlank()) {
		
		UserDao userDao = new UserDao();
		User found = userDao.findByUserID(uId);
		
		if(found != null) {
			result = found.password().equals(uPwd) ? true : false;
		}
		
	}
		
		// 식별용 컬럼(Primary key)로 일치검색하면 있거나 없거나 둘중 하나임, if else 확인만 하면 됨	
	
	if(result) {
		session.setAttribute("auth", true);
		session.setAttribute("auth_user_id", uId); 
		response.sendRedirect(application.getContextPath()+"/index.jsp");
		return;
	} else {
		
	}
	
	//session.setAttribute("auth", true);


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이전 | 동네도서관</title>
</head>
<body>
<script>
	window.alert("정보가 정확하지 않거나 접속권한이 없습니다.");
	location.href="<%=application.getContextPath()%>/member/login.jsp";
</script>
</body>
</html>