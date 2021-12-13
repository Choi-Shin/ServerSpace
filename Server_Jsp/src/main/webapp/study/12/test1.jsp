<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% session = request.getSession(true); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Session 생성</h3>
새로운 세션이 생성되었습니다.<br>
세션ID: <%=session.getId() %>
<% session.setAttribute("id", request.getParameter("id"));%><br>
<a href="test2.jsp">세션내용 보기</a>
</body>
</html>