<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중고 도서 등록</title>
</head>
<body style = "text-align: center">
	<h2>중고 도서 등록하기</h2>
	<div>
		<form action="<%=request.getContextPath() %>/books/book-result.jsp">
		<p>
			책 제목 : <input type="text" name="title"/>
		</p>
		<p>
			지은이 : <input type="text" name="author"/>
		</p>
		<p>
			출판사 : <input type="text" name="publisher"/>
		</p>
		<p>
			원래가격 : <input type="number" name="price"/>
		</p>
		<p>
			판매가격 : <input type="number"  name="sale"/>
		</p>
		<p>
			상품 상태 : <input type="radio" name="status" value="최상" checked="checked">최상
						<input type="radio" name="status" value="상">상
						<input type="radio" name="status" value="중">중
		</p>
		<p>
			할인율 : <input type="number" step="0.01" name="discount"/>
		</p>
		<button type="submit">작성하기</button>
		</form>
	</div>	
</body>
</html>