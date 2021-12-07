<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<% 
String id = request.getParameter("memberId");
if(id.equals("admin")) {
    response.sendRedirect("index.jsp");
} else {
	out.println("잘못된 id 입니다.");
}
%>
</body>
</html>