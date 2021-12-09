<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP::include</title>
</head>
<body>
<img src="jsp_include.jpeg"><br>
include전 name parameter: <%=request.getParameter("name") %><hr>
<jsp:include page="body_sub.jsp">
<jsp:param value="hong" name="name"/>
</jsp:include>
include후 name parameter: <%=request.getParameter("name") %><hr>
</body>
</html>