<%@ page language="java" contentType="text/html"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-80">
<title>Insert title here</title>
<style>
table, td {
	border:1px solid black;
}
td {
	width: 200px;
}
</style>
</head>
<body>
	<%
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	String subject = request.getParameter("subject");
	%>
	<h2>학생 정보</h2>
	<table>
	<tr><td>학번</td><td><%=num %></td></tr>
	<tr><td>이름</td><td>${param.name}</td></tr>
	<tr><td>학년</td><td><%=request.getParameter("grade") %></td></tr>
	<tr><td>선택과목</td><td><%	out.println(subject);%></td></tr>
	</table>
</body>
</html>