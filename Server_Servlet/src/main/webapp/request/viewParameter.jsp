<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b>request.getParameterValues() 사용</b>
	<br>
	<% 
String[] v = request.getParameterValues("pet");
if (v != null) {
for(int i=0; i<v.length;i++){
%>
	<%= v[i] %>
	<br>
	<% 
}}
%>
	<b>request.getParameterNames() 사용</b>
	<br>
	<%
Enumeration<String> paramEnum = request.getParameterNames();
while(paramEnum.hasMoreElements()) {
	String name = paramEnum.nextElement();
	out.println(name + " ");
}
%><br>
	<b>request.getParameterMap() 사용</b>
	<br>
<%
Map<String, String[]> paramMap = request.getParameterMap();
String[] nameParam = (String[])paramMap.get("name");
if(nameParam != null) {
	out.println("name=" + nameParam[0]);
}
%><br>
</body>
</html>