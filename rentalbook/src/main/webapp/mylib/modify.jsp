<%@page import="rentalbook.vo.User"%>
<%@page import="rentalbook.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	boolean auth = (boolean)session.getAttribute("auth");

	String authUserId = (String)session.getAttribute("auth_user_id");
	
	UserDao userDao = new UserDao();
	User authUser = userDao.findByUserID(authUserId);


%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정 | 동네도서관</title>
<link rel="stylesheet" href="<%=application.getContextPath() %>/common/style.css"/>
</head>
<body>
	
	<%if(!auth){ %>
	<script>
		window.alert("도서관회원으로 로그인 후 사용하세요.");
		location.href="<%=application.getContextPath()%>/member/login.jsp";
	</script>
	<%}else {%>
	<%@ include file="/common/header.jsp"%>
	<div style="width: 840px; margin: 0 auto;">
		<h2>회원정보수정</h2>
		<p style="text-align: right">
			마이페이지 &gt; <span style="color: hotpink;">회원정보수정</span>
		</p>
		<div style="text-align: left; margin-bottom: 8px;">비밀번호와 닉네임만
			변경할 수 있습니다.</div>
		<form action="<%=application.getContextPath()%>/mylib/modify-handle.jsp">
			<table style="border-collapse: collapse; width: 100%">
				<tr>
					<td
						style="padding: 12px;">회원상태</td>
					<td style="padding: 12px;">정회원(정상)</td>
				</tr>
				<tr>
					<td
						style="padding: 12px;">아이디</td>
					<td style="padding: 12px;"><%=authUser.userId()%></td>
				</tr>
				<tr>
					<td
						style="padding: 12px;">닉네임</td>
					<td style="padding: 12px;"><input
						name="nickname" type="text" value="<%=authUser.nickname() %>"
						style="padding: 6px 10px; width: 280px;" /></td>
				</tr>
				<tr>
					<td
						style="padding: 12px; ">비밀번호</td>
					<td style="padding: 12px;"><input
						name="password" type="password"
						style="padding: 6px 10px; width: 280px;" />
						</td>
				</tr>
				<tr>
					<td
						style="padding: 12px;">비밀번호확인</td>
					<td style="padding: 12px;"><input
						name="password_check" type="password"
						style="padding: 6px 10px; width: 280px;" /></td>
				</tr>
				
				<tr>
					<td
						style="padding: 12px; ">성별</td>
					<td style="padding: 12px;"><%=authUser.gender() %></td>
				</tr>
			</table>
			<div style="text-align: center; margin-top: 20px;">
				<button type="submit" style="padding: 10px 20px;">저장</button>
				<a href="<%=application.getContextPath() %>/mylib/drop.jsp"><button type="button">회원탈퇴</button></a>
			</div>
		</form>
	</div>
		
	<% } %>
</body>
</html>