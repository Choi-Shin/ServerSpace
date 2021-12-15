<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 표현식 출력</title>
</head>
<body>
Attribute name :: <%=request.getAttribute("name") %><br>
scope name :: ${requestScope.name}<br>
member.id :: ${member.id} <br>
member.name :: ${member.name} <br>

요청 URI(생략전) <br>
요청 URI: ${pageContext.request.requestURI} <br>
요청 URI(jsp): <%=request.getRequestURI() %> <br>
파라미터 code: ${param.code} <br>
변수에 선언된 이름을 request에 담기: <%=request.getAttribute("name") %>
</body>
</html>