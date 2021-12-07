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
	String v1_ = request.getParameter("v1");
	String v2_ = request.getParameter("v2");
	int v1 = Integer.parseInt(v1_);
	int v2 = Integer.parseInt(v2_);
	System.out.println(v1+v2);
	out.print(v1+v2);
	%>
</body>
</html>