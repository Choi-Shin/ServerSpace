<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	<form action="join.do" method="POST">
		<p>
			아이디:<br> <input type="text" name="id" value="${param.id}">
			<c:if test="${errors.id}">아이디를 입력하세요<br></c:if>
			<c:if test="${errors.duplicateId}">이미 사용 중인 아이디입니다.<br></c:if>
		</p>
		<p>
			이름:<br><input type="text" name="name" value="${param.name}">
			<c:if test="${errors.name}">이름을 입력하세요.<br></c:if>
		</p>
		<p>
			암호:<br><input type="password" name="password">
			<c:if test="${errors.password}">암호를 입력하세요.<br></c:if>
		</p>
		<p>
			확인:<br><input type="password" name="confirmPassword">
			<c:if test="${errors.confirmPassword}">확인을 입력하세요.<br></c:if>
			<c:if test="${errors.notMatch}">암호와 확인이 일치하지 않습니다.<br></c:if>
		</p>
		<input type="submit" value="가입"/>
	</form>
</body>
</html>