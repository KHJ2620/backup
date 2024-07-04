<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주차요금</title>
</head>
<body>
	<div style="text-align: center;">
		<h2>주차요금</h2>
		<p>이용요금은 기본 30분에 1500원, 10분당 500원의 추가요금이 부과됩니다.</p>
		<p style="font-size: 0.8rem">
			(열차 이용객은 30% 할인됩니다)
		</p>
		<p>요금 정산을 위해 이용한 시간(단위 분)을 입력해주세요.</p>
		<form action="./parkingfee-result.jsp">
			<p>
				이용시간<br /> <input type="text" name="time" />
			</p>
			<p>
				열차사용유무<br />
				<%-- 
					1. type radio 는 name 이 같은 radio 들끼리 그룹처리된다.
					2. radio 계열은 별도의 value 지정을 해줘야 구분된다. 
				 --%>
				<input type="radio" name="use" value="yes" />예 <input type="radio"
					name="use" value="no" />아니오
			</p>
			<button type="submit">정산</button>
		</form>
	</div>
</body>
</html>














