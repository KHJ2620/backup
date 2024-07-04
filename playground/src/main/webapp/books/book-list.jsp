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
	String sort = request.getParameter("sort");

	List<Book> books = new ArrayList<>();
	
	OracleDataSource ods = new OracleDataSource();
	ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
	ods.setUser("playground");
	ods.setPassword("oracle");
	
	Connection conn = ods.getConnection();
	
	String sql = "SELECT * FROM BOOKS";
	if (sort == null || sort.equals("ta")) {
		sql += " ORDER BY TITLE ASC";
	} else if (sort.equals("spd")) {
		sql += " ORDER BY SALE DESC";
	} else if (sort.equals("spa")) {
		sql += " ORDER BY SALE ASC";
	} else {
		sql += " ORDER BY TITLE ASC";
	}
	
	PreparedStatement stmt = conn.prepareStatement(sql);
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
</head>
<body>
	<h2>중고 도서 목록</h2>
	<p>현재 회원들이 등록한 중고 도서 목록입니다.</p>
	<p>
		<a href="<%=request.getContextPath() %>/books/book-list.jsp?sort=ta">제목순</a> |
		<a href="<%=request.getContextPath() %>/books/book-list.jsp?sort=spa">낮은가격순</a>|
		<a href="<%=request.getContextPath() %>/books/book-list.jsp?sort=spd">높은가격순</a>
	</p>
	<ul style="list-style: none;">
		<%
		for (Book one : books) {
		%>
		<li style="">
			<h2 style="font-weight: lighter;"><%=one.title()%>
				<small style="color: silver;"><%=one.author()%> 저 | <%=one.publisher()%></small>
			</h2>
			<p style="color: #222">
				정상가격 :
				<del>
					<b style="font-size: 1.1rem">￦<%=String.format("%,d", one.price())%></b>
				</del>
				| 판매가격 : <b style="font-size: 1.1rem">￦<%=String.format("%,d", one.sale())%></b>
				<small style="color: #d22">(<%=String.format("%.1f", one.discount())%>%할인)
				</small> | 상품상태 : <b style="font-size: 1.1rem"><%=one.status()%></b>
			</p>
		</li>
		<%
		}
		%>
	</ul>
</body>
</html>