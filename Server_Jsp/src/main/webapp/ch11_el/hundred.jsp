<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
//1~100: 합
(jsp) => forward => hundredResult.jsp => EL 결과 확인
<%
	int sum = 0;
	for (int i =1; i<=100; i++) {
		sum += i;
	}
%>
<jsp:forward page="hundredResult.jsp?sum=<%=sum%>">
<jsp:param value="<%=sum %>" name="sum"/>
</jsp:forward>
</body>
</html>