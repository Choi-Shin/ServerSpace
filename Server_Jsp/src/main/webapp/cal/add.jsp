<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    input {
        width: 40px;
    }
    input:invalid {
        border: 3px solid red;
    }
</style>
</head>
<body>
<form action="Add" method="post">
    <p><h3>계산할 값을 입력하세요.</h3>
    <input type="text" name="x" pattern="[0-9]+">&nbsp;+
    <input type="text" name="y" pattern="[0-9]+">
    <input type="submit" value=계산>
    </p>
</form>
</body>
</html>