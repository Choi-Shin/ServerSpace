<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
img {
	width: 500px;
	height: auto;
}
</style>
</head>
<body>
application Scope/Attribute<br>
application<br>
: JSP 기본 객체 중 하나 <br>
: javax.servlet.servletContext <br>
: 서버가 시작해서 종료될 때까지의 일련의 변수를 공유<br>
<img src="jsp_기본객체.png"><br>
<img src="Scope_Attribute.png"><br>
서버정보:: <%=application.getServerInfo() %><br>
서블릿 메이저 버전: <%=application.getMajorVersion() %><br>
서블릿 마이너 버전: <%=application.getMinorVersion() %><br>		
</body>
</html>