<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다함께 캠핑가자, 캠픽</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
	<%@ include file="../outer-nav.jsp"%>
	<div class="fixed-box">
		<!-- 임시 CSS 처리 -->
		<div
			style="display: flex; align-items: center; justify-content: space-between;">
			<div style="font-size: 1.1em; font-weight: bold;">마이</div>
			<div>
				<button class="button-a">
					<i class="fa-regular fa-bell"></i>
				</button>
				<button class="button-a">
					<i class="fa-solid fa-headset"></i>
				</button>
				<button class="button-a">
					<i class="fa-solid fa-gear"></i>
				</button>
			</div>

		</div>
		<div>
			<img src="./a.jpg"> <a
				style="text-decoration: none; color: black"
				href="${pageContext.servletContext.contextPath }/mypage/info/edit">
				${authUser.nickname } 내 정보 관리 ></a>
		</div>
		<div
			style="text-align: center; margin-top: 20px; display: flex; align-items: center; justify-content: space-between; background: #221F18; border-radius: 10px; padding: 15px; color: white; margin-bottom: 10px">
			<div>
			<span style="font-weight: bold">공지</span>
				[공지] 6월 6일(목) 현충일 고객센터 휴무 공지
			</div>
			<div style="margin-left: 5px">
				>
			</div>
		</div>
		<c:choose>
		<c:when test="${authUser != null}">
			<div>
				<a href="${pageContext.servletContext.contextPath }/logout"> ${authUser.nickname }
							님 로그아웃 </a>
			</div>
			
		<div
			style="display: flex; align-items: center; justify-content: space-around;">
			<div>나의 캠핑</div>
			<div>나의 쇼핑</div>
		</div>
		<div
			style="display: flex; align-items: center; justify-content: space-around;">
			<div>예약내역</div>
			<div>빈자리 구독</div>
			<div>캠핑로그</div>
			<div>찜 목록</div>
		</div>
		<div
			style="display: flex; align-items: center; justify-content: space-between;">
			<div>캠핑장 쿠폰</div>
			<div>></div>
		</div>
		<div>내 장비</div>
		<div>박스들~</div>
		<br />
		<div>캠핑</div>
		<div>내 사용 리뷰</div>
		<div>나의 활동</div>
		</c:when>
		<c:otherwise>
		
			<div
				style="display: flex; align-items: center; justify-content: space-between;">
				<div style="width: 50%">
					<a href="${pageContext.servletContext.contextPath }/signup"><button>회원가입</button></a>
				</div>
				<div style="width: 50%">
					<a href="${pageContext.servletContext.contextPath }/login"><button>로그인</button></a>
				</div>
				
			</div>
			<div
			style="display: flex; align-items: center; justify-content: space-between;">
			<div>비회원 예약조회</div>
			</div>
		</c:otherwise>
		</c:choose>
		<div
			style="display: flex; align-items: center; justify-content: space-between;">
		<div>캠핑 기획전</div>
		<div>진행중인 이벤트</div>
		<div>캠핑로그 작성하기</div>
		<br />
		<div>쇼핑</div>
		<div>스토어 기획전</div>
		<br />
		<div>고객센터</div>
		<div>공지사항</div>
		</div>

		</div>
		<div class="fixed-footer">
			<%@ include file="../inner-nav.jsp"%>
		</div>
</body>
</html>