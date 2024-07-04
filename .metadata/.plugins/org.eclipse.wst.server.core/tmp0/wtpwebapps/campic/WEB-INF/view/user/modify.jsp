<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원수정 | Campic</title>
</head>
<body>
	<form action="${pageContext.servletContext.contextPath }/modify-handle" method="post">
		
		<div>
			<label>아이디<span></span></label>
			<div>
				${authUser.id }
			</div>
		</div>
		<div>
			<label>비밀번호<span>(*)</span></label>
			<div>
				<input type="password"  name="password" />
			</div>
		</div>
		<div>
			<label>닉네임<span>(*)</span></label>
			<div>
				<input type="text"  name="nickname" value="${authUser.nickname }" />
			</div>
		</div>
		<div>
			<label>성별</label>
			<div>
				${authUser.gender }
			</div>
		</div>
		<div>
			<label>이메일<span></span></label>
			<div>
				${authUser.email }
			</div>
		</div>
		<div>
			<label>생년월일<span></span></label>
			<div>
				${authUser.birth}

			</div>
		</div>

		<div>
			<div style="text-align: center; margin-top: 20px;">
				<button type="submit" style="padding: 10px 20px;">저장</button>
				<a href="${pageContext.servletContext.contextPath }/drop"><button type="button">회원탈퇴</button></a>
			</div>
		</div>
	</form>
</body>
</html>