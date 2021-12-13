<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Session 정보</h3>
Attribute id 값 : <%=(String)session.getAttribute("id")%><br>
isNew() : <%=session.isNew()%><br>
세션ID : <%=session.getId() %><br>
세션 생성시간 : <%=new Date(session.getCreationTime()).toLocaleString()  %><br>
세션 마지막 접속시간 : <%= new Date(session.getLastAccessedTime()).toLocaleString() %><br>
<a href="test3.jsp">세션 삭제하기</a>
</body>
</html>