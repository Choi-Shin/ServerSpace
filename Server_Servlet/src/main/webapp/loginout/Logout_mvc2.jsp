<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	로그인 성공::<br>
	Jsp:: <%= session.getAttribute("id") %><br>
	Jsp:: <%= session.getAttribute("pw") %><br>
	EL:: ${id}<br>
	EL:: ${pw}<br>
</body>
</html>