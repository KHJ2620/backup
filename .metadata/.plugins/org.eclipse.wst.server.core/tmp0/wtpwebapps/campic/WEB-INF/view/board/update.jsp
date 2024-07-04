<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>

</head>
<body>
<%@ include file="../outer-nav.jsp"%>
	<div class="fixed-box">
		<div style="width: 400px; margin: 0 auto;">
			<p style="text-align: center">글쓰기</p>
			<form
				action="${pageContext.servletContext.contextPath }/board/update-handle">
				<input type="hidden" name="no" value="${board.no }" />
				<table style="border-collapse: collapse; width: 400px">
					<tr>
						<td
							style="border: 1px solid #ccc; padding: 12px; text-align: center; background-color: #eee"><span
							style="color: red">*</span>주제선택</td>
						<td style="border: 1px solid #ccc; padding: 12px;">
							${board.category }</td>
					</tr>
					<!-- 궁금해요 category 분야 선택 있어야 함 -->
					<tr>
						<td
							style="border: 1px solid #ccc; padding: 12px; text-align: center; background-color: #eee"><span
							style="color: red">*</span>작성자</td>
						<td style="border: 1px solid #ccc; padding: 12px;">${board.writerId}</td>
					</tr>

					<tr>
						<td
							style="border: 1px solid #ccc; padding: 12px; text-align: center; background-color: #eee"><span
							style="color: red">*</span>제목</td>
						<td style="border: 1px solid #ccc; padding: 12px;"><input
							name="title" type="text" value="${board.title }"
							style="padding: 6px 10px; width: 300px; border: 1px solid #ccc" /></td>
					</tr>
					<tr>
						<td style="border: 1px solid #ccc; padding: 12px;" colspan="2">
							<textarea name="body"
								style="height: 200px; resize: none; width: 375px; box-sizing: border-box; padding: 6px 10px; border: 1px solid #ccc">${board.body }</textarea>

						</td>
					</tr>
				</table>
				<div style="text-align: center; margin-top: 20px;">
					<button type="submit" style="padding: 10px 20px;">저장</button>
					<button type="reset" style="padding: 10px 20px;">취소</button>
				</div>
			</form>
		</div>
	</div>
	<div class="fixed-footer">
		<%@ include file="../inner-nav.jsp"%>
	</div>
</body>
</html>