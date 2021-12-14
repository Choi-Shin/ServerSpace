<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="com.bean.LoginBean"/>
<jsp:setProperty property="*" name="login"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 실습</title>
</head>
<body>
<h2><bold>ID, PW를 EL 형태로 입력 받기</bold></h2>
사용자 아이디 : ${login.userid} <br>
사용자 비밀번호 : ${login.passwd} 
</body>
</html>