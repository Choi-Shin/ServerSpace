<%@page import="javax.tools.DocumentationTool.Location"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>

<%
	request.setAttribute("req", "5678");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	if (id.equals("") || password.equals("")) {
		out.println("<script>alert('아이디나 비밀번호를 입력해주세요');");
		out.println("history.back();</script>"); }
	else if (id.equals("abc") && password.equals("1234")) {
		session.setAttribute("id", id);
		session.setAttribute("password", password);
		out.println("<html><body><h4>로그인되었습니다.</h4>");
		out.println("<h4>로그인 아이디: " + session.getAttribute("id") + "</h4>");
		out.println("<a href='sessionLogout.jsp'>로그아웃</a>");
		out.println("</body></html>");
	} else {
		out.println("<script>alert('아이디나 비밀번호가 틀렸습니다.');");
		out.println("history.back();</script>");
	}
	%> 
	
</body>
</html>