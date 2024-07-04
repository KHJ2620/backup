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
			style="display: flex; align-items: center; justify-content: space-between;">
			<div>
				<img src="./logo.png" style="width: 130px; height: 70px" />
			</div>
			<div>
				<a
					href="${pageContext.servletContext.contextPath }/mypage/reservation"><button
						class="button-a">예약조회</button></a> <a
					href="${pageContext.servletContext.contextPath }/mypage/alarms"><button
						class="button-a">
						<i class="fa-regular fa-bell"></i>
					</button></a>
			</div>
		</div>
		<div style="margin-top: 10px">
			<img src="./ad.jpg"
				style="width: 480px; height: 220px; border-radius: 15px" />
		</div>
		<div style="margin-top: 20px">
			<div
				style="display: flex; align-items: center; justify-content: space-between;">
				<div style="text-align: center">
					<a href="${pageContext.servletContext.contextPath }/exhibition/1"><button
							class="button-b" style="width: 70px; height: 70px">
							<i class="fa-solid fa-person-swimming" style="font-size: 2em"></i>
						</button></a> <br /> <span style="font-size: 0.9em;">물놀이가자</span>
				</div>
				<div style="text-align: center">
					<a href="${pageContext.servletContext.contextPath }/exhibition/2"><button
							class="button-b" style="width: 70px; height: 70px">
							<i class="fa-solid fa-mountain-sun" style="font-size: 2em"></i>
						</button></a> <br /> <span style="font-size: 0.9em;">만만한캠핑</span>
				</div>
				<div style="text-align: center">
					<a href="${pageContext.servletContext.contextPath }/exhibition/3"><button
							class="button-b" style="width: 70px; height: 70px">
							<i class="fa-solid fa-children" style="font-size: 2em"></i>
						</button></a> <br /> <span style="font-size: 0.9em;">키즈캠핑</span>
				</div>
				<div style="text-align: center">
					<a
						href="${pageContext.servletContext.contextPath }/search/result?additionalFacilities=pet"><button
							class="button-b" style="width: 70px; height: 70px">
							<i class="fa-solid fa-dog" style="font-size: 2em"></i>
						</button></a> <br /> <span style="font-size: 0.9em;">반려견캠핑</span>
				</div>
				<div style="text-align: center">
					<a href=""><button class="button-b"
							style="width: 70px; height: 70px">
							<i class="fa-solid fa-clock" style="font-size: 2em"></i>
						</button></a> <br /> <span style="font-size: 0.9em;">빠른예약</span>
				</div>
			</div>
			<div
				style="display: flex; align-items: center; justify-content: space-between; margin-top: 10px">
				<div style="text-align: center">
					<a href=""><button class="button-c"
							style="width: 70px; height: 70px">
							<i class="fa-solid fa-fire" style="font-size: 2em"></i>
						</button></a> <br /> <span style="font-size: 0.9em;">오토캠핑</span>
				</div>
				<div style="text-align: center">
					<a href=""><button class="button-c"
							style="width: 70px; height: 70px">
							<i class="fa-solid fa-campground" style="font-size: 2em"></i>
						</button></a> <br /> <span style="font-size: 0.9em;">글램핑</span>
				</div>
				<div style="text-align: center">
					<a href=""><button class="button-c"
							style="width: 70px; height: 70px">
							<i class="fa-solid fa-caravan" style="font-size: 2em"></i>
						</button></a> <br /> <span style="font-size: 0.9em;">카라반</span>
				</div>
				<div style="text-align: center">
					<a href="${pageContext.servletContext.contextPath }/exhibition/4"><button class="button-c"
							style="width: 70px; height: 70px">
							<i class="fa-solid fa-house-chimney" style="font-size: 2em"></i>
						</button></a> <br /> <span style="font-size: 0.9em;">펜션</span>
				</div>
				<div style="text-align: center">
					<a href=""><button class="button-c"
							style="width: 70px; height: 70px">
							<i class="fa-solid fa-gift" style="font-size: 2em"></i>
						</button></a> <br /> <span style="font-size: 0.9em;">이벤트</span>
				</div>
			</div>
		</div>
		<div
			style="text-align: center; margin-top: 20px; display: flex; align-items: center; justify-content: center; background: #221F18; border-radius: 10px; padding: 15px ; color: white ; margin-bottom: 10px">
			<div>
				<i class="fa-solid fa-tents" style="font-size: 3em"></i>
			</div>
			<div style="margin-left: 5px">
				예약오픈 일정 한눈에 보기<br /> <small>오픈 일정이 궁금하신가요?</small>
			</div>
		</div>
		<div>
			<div
				style="display: flex; align-items: center; justify-content: space-between; margin: 10px">
				<div style="font-size: 1.1em; font-weight: bold;">실시간 캠핑 로그</div>
				<div style="color: darkslateblue ; font-weight: bold">전체보기</div>
			</div>
			<div class="fixed-footer">
				<%@ include file="./inner-nav.jsp"%>
			</div>
		</div>
	</div>
</body>
</html>