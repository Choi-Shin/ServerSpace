<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>영역과 속성 테스트</h3>
<%
request.setCharacterEncoding("UTF-8");
String email = request.getParameter("email");
String city = request.getParameter("city");
String phone = request.getParameter("phone");
session.setAttribute("email", email);
session.setAttribute("city", city); 
session.setAttribute("phone", phone); 
%>

<h5><%=application.getAttribute("name") %>님의 정보가 모두 저장되었습니다.
<a href="attributeTest3.jsp">확인하러 가기</a>
</h5>
</body>
</html>