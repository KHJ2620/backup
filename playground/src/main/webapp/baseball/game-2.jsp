<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int[] target = (int[])session.getAttribute("target");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자야구</title>
</head>
<body>
	<div style="text-align: center">
		<h1>숫.자.야.구</h1>
		<%if(target == null) { %>
			<h3>죄송합니다, 오류입니다.</h3>
			<p>
				이용에 불편을 드린 점 진심으로 사과드리며, 다시 한번 정상적인 경로로 접근해주세요.
			</p>
			<p>
				<a href="<%=request.getContextPath()%>/baseball/ready.jsp">시작화면으로</a>
			</p>
		<%}else{ %>
			<p>
				각 자리에 숫자(<b>0 ~ 9</b> 까지)를 입력하여 <b>제시</b>해주세요.
			</p>
			<form action="<%=request.getContextPath()%>/baseball/result.jsp">
				<p>
					<input type="number" name="guess" min="0" max="9" 
						style="width: 96px; height: 96px; text-align: center; font-size: 40pt" />
					<input type="number" name="guess" min="0" max="9"
						style="width: 96px; height: 96px; text-align: center; font-size: 40pt" />
					<input type="number" name="guess" min="0" max="9"
						style="width: 96px; height: 96px; text-align: center; font-size: 40pt" />
				</p>
				<p>
					<button type="submit" 
						style="width: 90px; height: 40px;">제시하기</button>
				</p>
			</form>
		<%} %>

	</div>
</body>
</html>