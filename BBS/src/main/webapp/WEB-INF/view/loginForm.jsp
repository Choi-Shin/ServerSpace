<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login.do" method="post">
	<c:if test="${errors.idOrPwNotMatch}"></c:if>
	아이디:<input type="text" name="id" value="${param.id}">
	<c:if test="${errors.id}">ID를 입력하세요.</c:if>
	암호:<input type="password" name="password">
	<c:if test="${errors.password}">암호를 입력하세요.</c:if>
	<input type="submit" value="로그인">
	</form>
</body>
</html>