<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 | Campic</title>
<style>
body {
    margin: 0;
    padding: 0;
    background-color: #2c3e50; /* 남색 계열 배경 */
    color: #ecf0f1; /* 글씨는 밝은 색으로 */
}

.new-fixed-box {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.new-content-box {
    background-color: #34495e; /* 조금 더 밝은 남색 계열 */
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    width: 400px;
    max-width: 90%;
}

.new-board {
    margin-top: 20px;
}

.new-board-cates form {
    display: flex;
    flex-direction: column;
}

.form-group {
    margin-bottom: 20px;
}

.form-group input {
    width: calc(70% - 20px); /* input 요소의 너비 조정 */
    padding: 10px;
    border: 1px solid #ecf0f1;
    border-radius: 4px;
    background-color: #ecf0f1;
    color: #2c3e50;
}

.form-group label {
    margin-bottom: 5px;
    font-weight: bold;
}

.form-control {
    width: calc(50% - 20px);
    padding: 10px;
    border: 1px solid #ecf0f1;
    border-radius: 4px;
    background-color: #ecf0f1;
    color: #2c3e50;
    margin: 5px;
}

.btn-submit {
    padding: 10px;
    border: none;
    border-radius: 4px;
    background-color: #e74c3c;
    color: #ecf0f1;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.btn-submit:hover {
    background-color: #c0392b;
}

.new-fixed-footer {
    margin-top: 20px;
    text-align: center;
    color: #bdc3c7;
}

.new-fixed-footer a {
    color: #ecf0f1;
    text-decoration: none;
    margin: 0 10px;
    transition: color 0.3s ease;
}

.new-fixed-footer a:hover {
    color: #e74c3c;
}
</style>
</head>
<body>

	<div class="fixed-box new-fixed-box">
		<div class="content-box new-content-box">
			<div class="board new-board">
				<div class="board-cates new-board-cates">
					<form
						action="${pageContext.servletContext.contextPath }/signup-handle"
						method="post">

						<div class="form-group">
							<label>아이디<span>(*)</span></label>
							<div>
								<input type="text" placeholder="아이디.." name="id" />
							</div>
						</div>
						<div class="form-group">
							<label>비밀번호<span>(*)</span></label>
							<div>
								<input type="password" placeholder="비밀번호.." name="password" />
							</div>
						</div>
						<div class="form-group">
							<label>닉네임<span>(*)</span></label>
							<div>
								<input type="text" placeholder="닉네임.." name="nickname" />
							</div>
						</div>
						<div class="form-group">
							<label>성별(*)</label>
							<div>
								<select name="gender" class="form-control">
									<option disabled selected>성별..</option>
									<option>남</option>
									<option>여</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label>이메일<span>(*)</span></label>
							<div>
								<input type="text" placeholder="이메일.." name="email" />
							</div>
						</div>
						<div class="form-group">
							<label>생년월일(*)<span></span></label>
							<div>
								<select name="birth" class="form-control">
									<option disabled selected>탄생년도</option>
									<c:forEach var="i" begin="0" end="80">
										<option>${2024-i }</option>
									</c:forEach>
								</select> <select name="birth" class="form-control">
									<option disabled selected>월</option>
									<c:forEach var="i" begin="1" end="12">
										<option>${i}</option>
									</c:forEach>
								</select> <select name="birth" class="form-control">
									<option disabled selected>일</option>
									<c:forEach var="i" begin="1" end="31">
										<option>${i}</option>
									</c:forEach>
								</select>

							</div>
						</div>

						<div>
							<button type="submit" class="btn-submit">회원가입신청</button>
						</div>
					</form>
					<div class="fixed-footer new-fixed-footer">
						<%@ include file="../inner-nav.jsp"%>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>