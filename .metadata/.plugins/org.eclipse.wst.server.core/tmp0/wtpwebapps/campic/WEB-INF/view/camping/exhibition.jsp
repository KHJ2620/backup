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
			<div>미리 떠나는 휴가(파라미터로 받은 카테고리명 조회)</div>
			<div></div>
		</div>
		<div class="no-scroll"
			style="text-align: center; margin-top: 30px; overflow-y: scroll; max-height: 78vh;">
			<!-- 여기 두 줄 넣으면 될 듯 -->
			<!-- 엑박 이미지 대체 이미지 넣기 -->

			<img src="../ad.jpg"
				style="width: 480px; height: 200px; border-radius: 15px; margin-bottom: 30px" />
			<br />
			<c:choose>
				<c:when test="${vacances != null }">
					<div class="flex-container">
						<c:forEach items="${vacances }" var="one">
							<div class="flex-item">
								<a
									href="${pageContext.servletContext.contextPath }/camp/${one.id }"
									style="text-decoration: none; color: black"> <img
									src="${one.imageUrl } " onerror="this.src='../campimg.png'"
									style="width: 100%; height: 245px; border-radius: 15px">
									<div>
										<br />
										<c:if test="${one.gnrlSite > 0 }">
                                        일반야영장
                                    </c:if>
										<c:if test="${one.autoSite > 0 }">
                                        오토캠핑
                                    </c:if>
										<c:if test="${one.glampSite > 0 }">
                                        글램핑
                                    </c:if>
										<c:if test="${one.caravSite > 0 }">
                                        카라반
                                    </c:if>
										<br /> ${one.name } <br /> ${price } <br /> address 띄어쓰기로
										split
									</div>
								</a>
							</div>
						</c:forEach>
					</div>
				</c:when>
				<c:when test="${kidsZone != null }">
					<div class="flex-container">
						<c:forEach items="${kidsZone }" var="one">
							<div class="flex-item">
								<img src="${one.imageUrl } " onerror="this.src='../campimg.png'"
									style="width: 100%; height: 245px; border-radius: 15px">
								<div>
									<br />
									<c:if test="${one.gnrlSite > 0 }">
                                        일반야영장
                                    </c:if>
									<c:if test="${one.autoSite > 0 }">
                                        오토캠핑
                                    </c:if>
									<c:if test="${one.glampSite > 0 }">
                                        글램핑
                                    </c:if>
									<c:if test="${one.caravSite > 0 }">
                                        카라반
                                    </c:if>
									<br /> ${one.name } <br /> ${price } <br /> address 띄어쓰기로
									split
								</div>
							</div>
						</c:forEach>
					</div>
				</c:when>
				<c:when test="${pension != null }">
					<div class="flex-container">
						<c:forEach items="${pension }" var="one">
							<div class="flex-item">
								<img src="${one.imageUrl } " onerror="this.src='../campimg.png'"
									style="width: 100%; height: 245px; border-radius: 15px">
								<div>
									<br />
									<c:if test="${one.gnrlSite > 0 }">
                                        일반야영장
                                    </c:if>
									<c:if test="${one.autoSite > 0 }">
                                        오토캠핑
                                    </c:if>
									<c:if test="${one.glampSite > 0 }">
                                        글램핑
                                    </c:if>
									<c:if test="${one.caravSite > 0 }">
                                        카라반
                                    </c:if>
									<br /> ${one.name } <br /> ${price } <br /> address 띄어쓰기로
									split
								</div>
							</div>
						</c:forEach>
					</div>
				</c:when>
			</c:choose>
			<!-- 구분 -->
			<c:if test="${startPage > 1}">
				<a href="${currentPath}?p=${startPage - 10}">&lt; 이전</a>
			</c:if>
			<c:forEach begin="${startPage}" end="${endPage}" var="i">
				<c:choose>
					<c:when test="${i == currentPage }">
						<b style="color: red">${i }</b>
					</c:when>
					<c:otherwise>
						<a href="${currentPath}?p=${i}">${i }</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${endPage < totalPages}">
				<a href="${currentPath}?p=${startPage + 10}">다음 &gt;</a>
			</c:if>
		</div>
		<div class="fixed-footer">
			<%@ include file="../inner-nav.jsp"%>
		</div>
	</div>
</body>
</html>