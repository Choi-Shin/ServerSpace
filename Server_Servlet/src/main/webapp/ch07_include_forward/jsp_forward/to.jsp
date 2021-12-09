<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
[JSP request]<br>
number : <%=request.getAttribute("number") %><br>
id : <%=request.getParameter("id") %><br>
name : <%=request.getParameter("name") %><hr>
[EL 표기법]<br>
number : ${number}<br>
id : ${param.id}<br>
name : ${param.name}<br>
</body>
</html>