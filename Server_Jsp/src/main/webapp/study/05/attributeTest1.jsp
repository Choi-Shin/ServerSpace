<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table, td, th{
border : 1px solid black;
}
</style>
<body>
<h3>영역과 속성 테스트</h3>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String id = request.getParameter("id");
%>
<% application.setAttribute("name", name); %>
<% application.setAttribute("id", id); %>

<h5><%=application.getAttribute("name") %>님 반갑습니다.<br>
<%=application.getAttribute("name") %>님의 아이디는 <%=application.getAttribute("id") %>입니다.
</h5>

<form action="attributeTest2.jsp" method="post">
<table>
<thead>
<tr><th colspan="2">Session 영역에 저장할 내용들</th></tr>
</thead>
<tbody>
<tr>
<td>email 주소</td><td><input type="email" name="email" placeholder="aaaa@naver.com"></td>
</tr>
<tr>
<td>집 주소</td><td><input type="text" name="city" placeholder="주소를 입력해주세요.(예:서울)"></td>
</tr>
<tr>
<td>전화번호</td><td><input type="tel" name="phone" placeholder="전화번호를 입력해주세요."></td>
</tr>
</tbody>
<tfoot>
<tr><td colspan="2"><button type="submit">전송</button></td></tr>
</tfoot>
</table>
</form>
</body>
</html>