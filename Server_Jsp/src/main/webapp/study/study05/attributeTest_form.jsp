<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, td, th{
border : 1px solid black;
}
</style>
</head>
<body>
<form action="attributeTest1.jsp" method="post">
<table>
<thead>
<tr><th colspan="2">Application 영역에 저장할 내용들</th></tr>
</thead>
<tbody id="tbody">
<tr>
<td>이름</td><td><input type="text" name="name" placeholder="이름을 입력하세요."></td>
</tr>
<tr>
<td>아이디</td><td><input type="text" name="id" placeholder="아이디를 입력하세요."></td>
</tr>
</tbody>
<tfoot>
<tr><td colspan="2"><button type="submit">전송</button></td></tr>
</tfoot>
</table>
</form>
</body>
</html>