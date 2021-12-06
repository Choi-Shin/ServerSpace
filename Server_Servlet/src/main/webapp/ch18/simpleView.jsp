<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC model2 :: View</title>
</head>
<body>
URL:: http://localhost:8010/Server_Servlet/simple<br>
type:: date인 경우 = 날짜 출력 <br>


결과 (JSP-attribute)::<%= request.getAttribute("result") %><br>
결과 (EL-attribute):: ${result}<br>
결과 (JSP-parameter)::<%= request.getParameter("type") %><br>
결과 (EL-parameter):: ${param.type}<br>
</body>
</html>