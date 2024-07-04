<%@page import="java.util.ArrayList"%>
<%@page import="model.Book"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle.jdbc.datasource.impl.OracleDataSource"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Book> books = new ArrayList<>();
	
	OracleDataSource ods = new OracleDataSource();
	ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
	ods.setUser("playground");
	ods.setPassword("oracle");
	
	Connection conn = ods.getConnection();
	
	PreparedStatement stmt = conn.prepareStatement("SELECT * FROM BOOKS ORDER BY TITLE ASC");
	ResultSet rs = stmt.executeQuery();
	
	while(rs.next()){
		String title = rs.getString("title");
		String author = rs.getString("author");
		String publisher = rs.getString("publisher");
		int price = rs.getInt("price");
		int sale = rs.getInt("sale");
		String status =rs.getString("status");
		double discount = rs.getDouble("discount");
		Book one = new Book(title, author, publisher, price, sale, status, discount);
		books.add(one);
	}
	conn.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중고 도서 리스트</title>
<style type="text/css">
	ol {
        display: table;
        margin-left: auto;
        margin-right: auto;
      }
</style>
</head>
<body style="text-align: center;">
	<h2>중고 도서 리스트</h2>
	<p>
		중고 도서 리스트(가나다순) 입니다.
	</p>
	<div style="border:3px solid black;">
	<ol>
		<%for(Book o : books) {%>
			<li>
				<p> <%=o.title() %> (<%=o.author() %>)</p>
				<p> <%=o.price() %>원 → <b><%= o.sale()%>원</b><small>(<%=o.discount() %> 할인)</small></p>
				
			</li>
	
		<%} %>
	</ol>
	</div>
</body>
</html>