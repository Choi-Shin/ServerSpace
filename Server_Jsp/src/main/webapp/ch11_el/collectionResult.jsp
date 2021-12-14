<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
(1)Array<br>
${w[0]}<br>
${w[1]}<br>
${w[2]}<br>

(2) getAttribute, 반복문 사용<br>
<%
	String[] w = (String[])request.getAttribute("w");
	for (String winner : w) {
		out.println(winner + " ");
	}
	out.println("<br>");
	
	String[] w2 = (String[])request.getAttribute("w");
	for (int i=0; i<w2.length; i++) {
		out.println(w2[i] + " ");
	}
	out.println("<br>");
%>
</body>
</html>