<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="testBean" class="user.TestBean"/>
<jsp:setProperty property="userName" name="testBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>자바빈을 사용하는 JSP페이지</h2>
<span>입력된 이름은 <jsp:getProperty property="userName" name="testBean"/> </span>
</body>
</html>