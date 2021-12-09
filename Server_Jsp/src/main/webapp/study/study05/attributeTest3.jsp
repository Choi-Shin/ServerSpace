<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table, td, th{
border : 1px solid black;
}
</style>
</head>
<body>
<h3>영역과 속성 테스트</h3>
<table><thead>
<tr><th colspan="2">Application 영역에 저장된 내용들</th></tr>
</thead>
<tbody>
<tr><td>이름</td><td><%=application.getAttribute("name") %></td></tr>
<tr><td>아이디</td><td><%=application.getAttribute("id")%></td></tr>
</tbody></table><br>

<table><thead>
<tr><th colspan="2">Session 영역에 저장된 내용들</th></tr>
</thead>
<tbody>
<tr><td>address</td><td><%=session.getAttribute("city") %></td></tr>
<tr><td>tel</td><td><%=session.getAttribute("phone")%></td></tr>
<tr><td>email</td><td><%=session.getAttribute("email")%></td></tr>
</tbody></table>
</body>
</html>