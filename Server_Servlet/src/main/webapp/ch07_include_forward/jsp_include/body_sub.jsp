<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP::include</title>
</head>
<body>
body_sub에서 name파라미터 값:: ${param.name}<hr>
name파라미터 목록: <br>
<ul>
<%
	String[] names = request.getParameterValues("name");
	for(String name : names) {
		out.println("<li>" + name + "</li>");
	}
%>
</ul>

</body>
</html>