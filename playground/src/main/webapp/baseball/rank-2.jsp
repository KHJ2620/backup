<%@ page import="model.Rank"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<Rank> ranks = (List<Rank>) application.getAttribute("ranks");

List<Rank> extract;
if (ranks.size() > 5) {
	extract = ranks.subList(0, 5);
} else {
	extract = ranks.subList(0, ranks.size());
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자야구</title>
</head>
<body>
	<div style="text-align: center;">
		<h1>숫.자.야.구</h1>
		<h3>명예의 전당</h3>
		<%
		for (int i = 0; i < extract.size(); i++) {
		%>
		<p>
			<b>#<%=i + 1%></b>
			<%=extract.get(i).ip()%>
			<small>( 시도횟수 : <%=extract.get(i).turn()%> 걸린시간 : <%=extract.get(i).elapsed()%>ms
				)
			</small>
		</p>
		<%
		}
		%>
	</div>
</body>
</html>