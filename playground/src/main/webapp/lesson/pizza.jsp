<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피자 나눠먹기</title>
</head>
<body>
	<div style = "text-align: center">
		<h2>피자 나눠먹기</h2>
		<p>
			당신이 입력한 피자조각 수와 피자를 먹는 사람의 수을 이용해서 결과를 알려드립니다.
			숫자만 유효하니 참고 바랍니다.
		</p>
	</div>
	<div style = "text-align: center">
		<form action="./pizza-result.jsp">
			<p>
				피자 조각 수 : <input type="number" name="slice"/>
			</p>
			<p>
				사람 수 : <input type="number"  name="n"/>
			</p>
				<button type="submit">결과보기</button>	
				<button type="reset">재작성하기</button>	
		</form>
		<a href = "../overview.jsp">홈으로 돌아가기</a>
	</div>
</body>
</html>