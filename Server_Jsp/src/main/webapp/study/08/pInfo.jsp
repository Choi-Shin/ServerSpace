<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
request영역으로부터 자바빈 객체를 가져오기<br>
<jsp:useBean id="pinfo" class="customer.PersonalInfo" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="pinfo"/>
이름: <jsp:getProperty property="name" name="personalInfo"/>
성별: <jsp:getProperty property="gender" name="personalInfo"/>
나이: <jsp:getProperty property="age" name="personalInfo"/>
</body>
</html>