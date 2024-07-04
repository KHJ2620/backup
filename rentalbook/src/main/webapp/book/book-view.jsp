<%@page import="java.util.List"%>
<%@page import="rentalbook.vo.Favorite"%>
<%@page import="rentalbook.dao.FavoriteDao"%>
<%@page import="rentalbook.dao.BookDao"%>
<%@page import="rentalbook.vo.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/book/viewerror.jsp" %>
<%
	int bookId = Integer.parseInt(request.getParameter("bookId"));
	
	BookDao bookDao = new BookDao();
	Book found = bookDao.findByBookId(bookId);
	
	boolean isFavorited = false;
	
	String authUserId = (String)session.getAttribute("auth_user_id");
	FavoriteDao favoriteDao = new FavoriteDao();
	
	List<Favorite> favorites = favoriteDao.findAllByUserId(authUserId);
		
	for(Favorite one: favorites){
		if(one.bookId() == bookId) {
			isFavorited = true;
			break;
		}
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 검색 | 동네도서관</title>
<link rel="stylesheet" href="<%=application.getContextPath() %>/common/style.css"/>
</head>
<body>
	<% if(found == null) {%>
		<script>
			window.alert("존재하지 않는 책입니다.");
			history.go(-1);
		</script>
	<% } else { %>
		<%@ include file="/common/header.jsp" %>
		<div style="width: 840px; margin: 0 auto;">
			<h2>도서 상세보기</h2>
			<p style="text-align: center">
				도서 검색 &gt; <span style="color: hotpink;">도서 상세보기</span>
			</p>
		<div>
			<h3 style="text-align: center; margin-bottom:8px; border-bottom: 1px solid #ccc; padding : 8px;">도서명: <%=found.title() %></h3>		
			<div style="padding : 2px; text-align: center;">
				<img src="<%=found.imgUrl()%>">
				<p style="color : #777">책 번호 : <%=found.bookId() %></p> 
				<p style="color : #777">분 류 : <%=found.categoryName() %></p> 
				<p style="color : #777">출판사 : <%=found.publisher() %></p> 
				<p style="color : #777">페이지수 : <%=found.pages() %>p</p> 
				<p style="color : #777"> ♡ : <%=found.rentalCnt() %></p> 
				
			</div>
			<p>
				책 설명 : <%= found.description() %>
			</p>
		
		</div>	
			
			<div style="text-align: right;">
			<%if(!isFavorited) {%>
			<a href="<%=application.getContextPath()%>/book/add-favorite.jsp?bookId=<%=found.bookId()%>" class="no-deco-link"><button>찜하기</button></a>
			
			<%} %>
			<a href="<%=application.getContextPath()%>/book/book-list.jsp" class="no-deco-link"><button>목록</button></a>
			</div>
	
		</div>
	<% } %>
</body>
</html>