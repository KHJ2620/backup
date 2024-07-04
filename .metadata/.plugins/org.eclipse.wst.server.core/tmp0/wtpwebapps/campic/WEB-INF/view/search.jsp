<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다함께 캠핑가자, 캠픽</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
	<%@ include file="./outer-nav.jsp"%>
	<div class="fixed-box">
		<!-- 임시 CSS 처리 -->
		<div
			style="display: flex; align-items: center; justify-content: space-between; margin-top: 5px">
			<div style="font-size: 1.1em; font-weight: bold;">어디로 떠나볼까요?</div>
			<div>
				<span>
					<button class="button-a"><i class="fa-regular fa-map"></i></button>
				</span> <span>
					<button class="button-a"><i class="fa-regular fa-bookmark"></i></button>
				</span>
			</div>

		</div>
		<div>
			<form
				action="${pageContext.servletContext.contextPath }/search/result">
				<input class="button-a" type="text" name="camp"
					placeholder="캠핑장명을 검색해 보세요"
					style="width: 100%; height: 50px; margin-top: 10px" />
				<div
					style="display: flex; align-items: center; justify-content: space-between;">
					<input class="button-a" type="date" name="" placeholder="날짜"
						style="width: 48%; height: 50px; margin-top: 10px" /> <select
						class="button-a"
						style="width: 48%; height: 50px; margin-top: 10px">
						<option disabled selected>지역</option>
					</select>
				</div>
				<button class="button-b" type="submit"
					style="width: 100%; margin-top: 10px">검색하기</button>
			</form>
		</div>
		<div
			style="display: flex; align-items: center; justify-content: space-between; margin-top: 10px">
			<div style="font-size: 1.1em; font-weight: bold;">최근
				본 캠핑장</div>
			<div style="color: darkslateblue; font-weight: bold">
				자동 저장
				<button>버튼</button>
			</div>
		</div>
		<div style="text-align: center;">
			<div>if문 돌려서 자동 저장 기능 켜져있으면 아래 출력</div>
			<div>자동 저장 기능이 꺼져있어요</div>
			<div>else 일 때, if 문 돌려서 최근 본 캠핑장이 없으면 아래 출력</div>
			<div>최근 본 캠핑장이 없어요</div>
			<div>있으면, 이름과 지역만 찍어주기</div>
		</div>
		<div>
			<img src="./ad.jpg"
				style="width: 480px; height: 220px; border-radius: 15px; margin-top: 10px" />
		</div>
		<div
			style="display: flex; align-items: center; justify-content: space-between; margin: 10px">
			<div style="font-size: 1.1em; font-weight: bold;">테마 기획전</div>
			<div style="color: darkslateblue; font-weight: bold">전체보기</div>
		</div>
		<div class="fixed-footer">
			<%@ include file="./inner-nav.jsp"%>
		</div>
	</div>
</body>
</html>