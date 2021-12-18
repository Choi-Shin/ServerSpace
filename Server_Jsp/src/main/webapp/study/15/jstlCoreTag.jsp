<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><b>JSTL Core 라이브러리 실습(배열저장:1~10)</b></h3>
<%
	int[] oneToTen = {1,2,3,4,5,6,7,8,9,10};
	request.setAttribute("oneToTen", oneToTen);
%>
<c:forEach items="${oneToTen}" var="num">
<c:out value="${num}"></c:out>&nbsp;
</c:forEach><br>
<c:forEach items="${oneToTen}" var="num" begin="0" end="6">
<c:out value="${num}"></c:out>&nbsp;
</c:forEach><br><br>
<h3><b>JSTL Core 라이브러리 실습2(ArrayList:홍길동, 이순신, 유관순)</b></h3>
<%
ArrayList<String> name = new ArrayList<>();
name.add("홍길동");
name.add("이순신");
name.add("유관순");
request.setAttribute("name", name);
%>
<c:forEach items="${name}" var="name">
<c:out value="${name}"></c:out>&nbsp;
</c:forEach><br>
<h3><b>JSTL Core 라이브러리 실습3(String: A,B,C,D)</b></h3>
<%
	String alpha = "A,B,C,D";
	request.setAttribute("alpha", alpha);
%>
<c:forTokens items="${alpha}" delims="," var="a">
${a}<br>
</c:forTokens>

</body>
</html>