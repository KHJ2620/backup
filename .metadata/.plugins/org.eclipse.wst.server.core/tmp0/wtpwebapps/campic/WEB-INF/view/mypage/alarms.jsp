<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다함께 캠핑가자, 캠픽</title>
</head>
<body>
	<%@ include file="../outer-nav.jsp"%>
	<div class="fixed-box">
		<!-- 임시 CSS 처리 -->
		<div
			style="display: flex; align-items: center; justify-content: space-between;">
			<div>
				<input type="button" value="&lt;(아이콘 변경)" onclick="history.back();" />
			</div>
			<div>알림</div>
			<div></div>

		</div>
		<div style="text-align: center">
			<div>if문 처리하고 알림 출력</div>
			<div>없으면 아래 내용 출력</div>
			알림이 없습니다.
		</div>
		<div class="fixed-footer">
			<%@ include file="../inner-nav.jsp"%>
		</div>
	</div>
</body>
</html>