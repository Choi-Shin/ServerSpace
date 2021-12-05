<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	response.setContentType("text/html;charset=utf-8");
	out.println("<html><head><meta charset='UTF-8'></head><body><h3>ID: " + id + "<br>PW: " + pw + "</h3></body></html>");
	%>
</body>
</html>