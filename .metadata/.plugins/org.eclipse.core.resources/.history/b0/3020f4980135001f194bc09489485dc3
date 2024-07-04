<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 | Campic</title>
</head>
<body>

	<div class="fixed-box">
		<div class="content-box">
			<div class="board">
				<div class="board-cates">
					<form
						action="${pageContext.servletContext.contextPath }/signup-handle"
						method="post">

						<div>
							<label>아이디<span>(*)</span></label>
							<div>
								<input type="text" placeholder="아이디.." name="id" />
							</div>
						</div>
						<div>
							<label>비밀번호<span>(*)</span></label>
							<div>
								<input type="password" placeholder="비밀번호.." name="password" />
							</div>
						</div>
						<div>
							<label>닉네임<span>(*)</span></label>
							<div>
								<input type="text" placeholder="닉네임.." name="nickname" />
							</div>
						</div>
						<div>
							<label>성별(*)</label>
							<div>
								<select name="gender">
									<option disabled selected>성별..</option>
									<option>남</option>
									<option>여</option>
								</select>
							</div>
						</div>
						<div>
							<label>이메일<span>(*)</span></label>
							<div>
								<input type="text" placeholder="이메일.." name="email" />
							</div>
						</div>
						<div>
							<label>생년월일(*)<span></span></label>
							<div>
								<select name="birth">
									<option disabled selected>탄생년도</option>
									<c:forEach var="i" begin="0" end="80">
										<option>${2024-i }</option>
									</c:forEach>
								</select> <select name="birth">
									<option disabled selected>월</option>
									<c:forEach var="i" begin="1" end="12">
										<option>${i}</option>
									</c:forEach>
								</select> <select name="birth">
									<option disabled selected>일</option>
									<c:forEach var="i" begin="1" end="31">
										<option>${i}</option>
									</c:forEach>
								</select>

							</div>
						</div>

						<div>
							<button type="submit">회원가입신청</button>
						</div>
					</form>
					<div class="fixed-footer">
						<%@ include file="../inner-nav.jsp"%>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>