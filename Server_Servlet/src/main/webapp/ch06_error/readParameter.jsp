<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%--   <%@ page errorPage="/error/viewErrorMessage.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
name Parameter1 :: <%=request.getParameter("name").toUpperCase() %>
<hr>
<%
try {
out.println(request.getParameter("name"));
} catch(Exception e) {
	out.println("에러가 발생하였습니다.");
}
%>
</body>
</html>