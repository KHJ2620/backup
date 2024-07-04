<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle.jdbc.datasource.impl.OracleDataSource"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title = request.getParameter("title");
	String author = request.getParameter("author");
	String publisher = request.getParameter("publisher");
	int price = Integer.parseInt(request.getParameter("price"));
	int sale = Integer.parseInt(request.getParameter("sale"));
	String status = request.getParameter("status");
	double discount = Double.parseDouble(request.getParameter("discount"));
	
	
	OracleDataSource ods = new OracleDataSource();
	ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
	ods.setUser("playground");
	ods.setPassword("oracle");
	
	Connection conn = ods.getConnection();
	
	PreparedStatement stmt = conn.prepareStatement("insert into books(title,author,publisher,price,sale,status,discount) values(?, ? ,? ,? ,? ,? ,?)");
	stmt.setString(1, title);
	stmt.setString(2, author);
	stmt.setString(3, publisher);
	stmt.setInt(4, price);
	stmt.setInt(5, sale);
	stmt.setString(6, status);
	stmt.setDouble(7, discount);
	
	
	
	int cnt = stmt.executeUpdate();
	
	conn.close();
	



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>중고 도서 등록</h2>
	<%if(cnt == 1) { %>
	<p>
		중고 도서 등록이 완료되었습니다.
	</p>
	<%} else { %>
	<p>
		데이터 처리 중 장애가 발생한 것 같습니다. 다시 시도해주세요.
	</p>
	<%} %>
</body>
</html>