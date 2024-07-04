<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tutorial-MVC</title>
</head>
<body>
	<h2>Model2 Architecture</h2>
	<div style="text-align:right">
	
	</div>
	<p>
		MVC 패턴을 적용해서 JSP로 뷰를 만들 떄는 표현식이 아닌 다른 태그를 이용해서
		데이터를 출력해야 한다. EL(Expression Language) tag 를 사용한다.
		EL tag 로 출력할 수 있는 데이터에는 몇가지가 있다.
		(그 중에 jsp 에 선언된 변수는 출력할 수 없다. n = ${n }) 
	</p>
	<p>
		EL로 출력할 수 있는 데이터들에는 일단 setAttribute 된 데이터들이다.
	</p>
	<ul>
		<li> application 에 세팅된 데이터: <%=application.getAttribute("visit") %>, ${visit } </li>
		<li> session 에 세팅된 데이터: <%=session.getAttribute("role") %>, ${role } </li>
		<li>request 에 세팅된 데이터: <%=request.getAttribute("today") %>,${today } </li>
	</ul>
	<p>
		각 영역에 세팅된 데이터를 출력을 하는 정석은 찍고자 하는 영역을 지정해주는 것이다.
		생략을 하면 request에서 찾고 session에서 찾고 application에서 찾아서 알아서 출력된다.
	</p>
	<ul>
		<li>${applicationScope.visit }</li>
		<li>${sessionScope.role }</li>
		<li>${requestScope.today }</li>
	
	</ul>
	
	<p>
		보통 requestScope의 데이터 출력을 할 떄는 보통 지정하지 않고 session이나 application의 데이터 값은 
		scope를 붙여서 접근한다.
	</p>
</body>
</html>