<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String id = (String)session.getAttribute("id");
String password = (String)session.getAttribute("password");
out.println("id : " + id + "/ password : " + password);
out.println("req = " + (String)request.getAttribute("req"));
session.removeAttribute("id");
session.removeAttribute("password");
if(session.getAttribute("id") == null && session.getAttribute("password") == null) {
	out.println("로그아웃되었습니다.<br>");
	out.println("<a href='sessionLogin.jsp'>로그인 페이지로 이동<a>");
}
%>
</body>
</html>