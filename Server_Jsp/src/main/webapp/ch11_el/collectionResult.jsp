<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1. Array출력<br>
(1) 단순 출력<br>
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
2. ArrayList 출력<br>
${fruits[0]}<br>
${fruits[1]}<br>
${fruits[2]}<br>
-반복문 사용 출력<br>
<c:forEach items="${fruits}" var="fruit" varStatus="status">
${fruit}
<c:if test="${not status.last}"><br></c:if>
</c:forEach><br>
-java.util.List (for문)<br>
<%
List<String> list = (List<String>)request.getAttribute("fruits");
for(int i=0; i<list.size(); i++) {
	out.print(list.get(i)+"<br>");
}
%>
3. Map 출력<br>
(1)jstl 출력<br>
<c:forEach items="${map}" var="m" varStatus="status">
${m}<br>
</c:forEach>
(2)EL출력<br>
hong1=${map["hong1"]}<br>
hong2=${map["hong2"]}<br>
hong2=${map["hong3"]}<br>
${map.hong1}<br>
${map.hong2}<br>
${map.hong3}<br>
(3)jsp 반복문 출력<br>
<%
HashMap<String, String> map = (HashMap<String, String>)request.getAttribute("map");
for(String key : map.keySet()) {
	out.print(key + " = " +map.get(key)+"<br>");
}
%>
<hr>
<c:forEach items="${map}" var="m">
${m}
</c:forEach><br>
<hr>
<c:forEach var="entry" items="${map}">
${entry.key} :: ${entry.value}<br>
</c:forEach>
<hr>

4. user Class 출력(Bean)<br>
id=${member.id}<br>
name=${member.name}<br>
</body>
</html>