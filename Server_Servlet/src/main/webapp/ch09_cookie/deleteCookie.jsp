<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Cookie[] c = request.getCookies(); 
	for(int i = 0; i<c.length; i++) {
		c[i].setMaxAge(0);
		response.addCookie(c[i]);
		out.println(c[i]);
	}
%>
</body>
</html>