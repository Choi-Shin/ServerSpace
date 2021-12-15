<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="ch11_el.Thermometer" %>
    <%
    	Thermometer t = new Thermometer();
    	request.setAttribute("th", t);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${th.setCelsius("서울", 27.3)}
서울 온도 :: 섭씨 ${th.getCelsius("서울")}도 <br>
서울 온도 :: 화씨 ${th.getFahrenheit("서울")}도 <br>
${th.info}<br>
</body>
</html>