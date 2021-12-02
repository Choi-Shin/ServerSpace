<%@ page language="java" contentType="text/html"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-80">
<title>Insert title here</title>
</head>
<body>
	<%
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	String subject = request.getParameter("subject");
	%>
	<table>
	<tr><td>학번</td><td><%=num %></td></tr>
	<tr><td>이름</td><td><%=name %></td></tr>
	<tr><td>학년</td><td><%=grade %></td></tr>
	<tr><td>선택과목</td><td><%=subject %></td></tr>
	</table>
</body>
</html>