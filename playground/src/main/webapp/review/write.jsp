<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
</head>	
	<body style = "text-align: center">
	<h2>리뷰 남기기</h2>
	<div>
		<form action="<%=request.getContextPath() %>/review/write-result.jsp">
		<p>
			작성자 : <input type="text" name="writer"/>
		</p>
		<p>
			내용 : <input type="text" name="message"/>
		</p>
		<p>
			평점 : <input type="number" name="score" min="1" max="5"/>
		</p>
		<button type="submit">작성하기</button>
		</form>
	</div>	
		
</body>
</html>