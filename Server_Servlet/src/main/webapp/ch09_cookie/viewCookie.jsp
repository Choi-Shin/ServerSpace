<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Cookie[] c = request.getCookies(); 
if (c != null && c.length>0) {
	for(int i=0; i<c.length; i++) {
		out.println(c[i].getName() + " : " + c[i].getValue() + "<br>");
	}
} else {
	out.println("쿠키가 존재하지 않습니다.");
}

%>
</body>
</html>