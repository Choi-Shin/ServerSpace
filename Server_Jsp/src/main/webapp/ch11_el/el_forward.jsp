<%@page import="ch11_el.Member"%>
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
	String name = "홍길동";
	String id = "abcd";
	request.setAttribute("name", name);
	request.setAttribute("id", id);
	Member m = new Member();
	m.setId(id);
	m.setName(name);
	request.setAttribute("member", m);
	RequestDispatcher member = request.getRequestDispatcher("el_forward2.jsp");
	member.forward(request, response);
%>
</body>
</html>