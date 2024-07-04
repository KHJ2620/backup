<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 | Campic</title>
</head>
<body>
	<div style="width: 840px; margin: 0 auto;">
		<div style="text-align: center">
			<h2>회원탈퇴</h2>
			<div>
				회원서비스 &gt; <span style="color : hotpink;">회원탈퇴</span>
			</div>
		</div>
		<div style="width: 400px; margin: 60px auto; border:2px solid #ddd; padding:30px;">
			<h3>유의사항</h3>
			<p>
				비밀번호가 일치하여야만 회원탈퇴가 진행됩니다.
			</p>
			<form action="${pageContext.servletContext.contextPath }/drop-handle">
				<p>
					<input type="password" name="password" placeholder="비밀번호를 입력해주세요"/>
				</p>
				<p>
					<button type="submit" >회원탈퇴</button>
				</p>
			</form>
			
		
		
		</div>
	</div>
</body>
</html>