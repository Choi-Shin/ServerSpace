<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Enumeration" %>
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

<%
    Enumeration<String> e = session.getAttributeNames();
    while(e.hasMoreElements()) {
        String name = e.nextElement();
        String value = (String)session.getAttribute(name);
        out.print("<tr><td>" + name + "</td><td>" + value + "</td></tr>");
    }
%>
</tbody></table>
</body>
</html>