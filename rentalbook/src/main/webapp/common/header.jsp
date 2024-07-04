<%@page import="rentalbook.vo.User"%>
<%@page import="rentalbook.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	boolean header_auth = (boolean)session.getAttribute("auth");
	String header_authUserId = (String)session.getAttribute("auth_user_id");
	UserDao header_userDao = new UserDao();
	User header_authUser = header_userDao.findByUserID(header_authUserId);

%>    
<%--header include --%>
<div>
	<%--banner / login & join shortcut / search --%>
	<div style="display: flex; align-items:center; justify-content:space-between;">
		<%--banner--%>
		<div>
			<h1 style="font-weight:100">
				<a href="<%=application.getContextPath()%>/index.jsp" class="no-deco-link">📚동네도서관📚</a>
			</h1>
		
		</div>
		<%--search--%>
		<div>
			<input type="text" style="padding:8px; font-size: 14pt; border-radius: 10px; width: 480px;" placeholder="검색어를 입력하세요"/>
		
		</div>
		<%--login & join shortcut--%>
		<%if(!header_auth) {%>
		<div>
			<a href="<%=application.getContextPath()%>/member/login.jsp" class="no-deco-link ">로그인</a>|
			<a href="<%=application.getContextPath()%>/member/join.jsp" class="no-deco-link ">회원가입</a>
		</div>
		<%}else{ %>
			<div>
			<a href="<%=application.getContextPath()%>/member/logout.jsp"
				class="no-deco-link "><%=header_authUser.nickname() %>님 로그아웃</a> | 
			<a
				href="<%=application.getContextPath()%>/mylib/modify.jsp"
				class="no-deco-link ">정보수정</a>	
			</div>
		<%} %>
		<%-- shortcut  링크 --%>
		
	</div>
		<div style="display: flex; align-items: center; justify-content: space-around;">
			<div><a href="" class="no-deco-link fs-large"><b>도서관소개</b></a></div>
			<div><a href="<%=application.getContextPath() %>/book/book-list.jsp" class="no-deco-link fs-large"><b>도서 검색</b></a></div>
			<div><a href="<%=application.getContextPath() %>/feed/list.jsp" class="no-deco-link fs-large"><b>열린공간</b></a></div>
		</div>
</div>