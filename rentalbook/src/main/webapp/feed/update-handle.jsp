<%@page import="java.sql.Date"%>
<%@page import="rentalbook.vo.Feed"%>
<%@page import="rentalbook.dao.FeedDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	int no = Integer.parseInt(request.getParameter("no"));
	
	FeedDao feedDao = new FeedDao();
	
	
	String title = request.getParameter("title");
	String body = request.getParameter("body"); 
	
	Feed one = new Feed(no, null, title, body, null,0);
	
	
	boolean r = feedDao.updateTitleAndBody(one);
	if (r) {
		response.sendRedirect(application.getContextPath() + "/feed/view.jsp?no="+no);
	} else {
	

%>

	<script>
		window.alert("의견을 수정하는 데 오류가 발생하였습니다.");
		history.go(-1);
	</script>
<%
	}
%>