<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="jsp_forward.jpeg"><br>
<%
request.setAttribute("number", "1234");
%>
<jsp:forward page="to.jsp?name=hong">
<jsp:param value="abcd" name="id"/>
</jsp:forward>
현재 페이지는 form.jsp 입니다.
</body>
</html>