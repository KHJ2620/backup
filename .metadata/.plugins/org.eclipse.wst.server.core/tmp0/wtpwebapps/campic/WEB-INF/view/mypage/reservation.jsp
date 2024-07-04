<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<div>예약내역</div>
			<div>상담(아이콘 변경)(*JS)</div>
		</div>
		<div style="display: flex; align-items: center">
			<div>전체 |</div>
			<div>결제대기 |</div>
			<div>예약완료 |</div>
			<div>이용완료 |</div>
			<div>취소/환불</div>
		</div>
		<div>if문 처리하고 예약 내역 출력</div>
		<div>없으면 아래 내용 출력</div>
		<c:choose>
			<c:when test="${own = true }">
				<div style="text-align: center">${reservationCampsite.name }</div>
			</c:when>
			<c:otherwise>
				<div style="text-align: center">
					예약 된 캠핑장이 없어요.<br />비어있는 캠핑장을 확인해보세요<br /> <a href=""><button>빠른
							빈자리 찾기</button></a>
				</div>
			</c:otherwise>
		</c:choose>
		<div class="fixed-footer">
			<%@ include file="../inner-nav.jsp"%>
		</div>
	</div>

</body>
</html>