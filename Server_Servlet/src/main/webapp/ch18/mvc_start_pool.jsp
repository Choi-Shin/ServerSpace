<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img{
width: 500px;
height: auto;
}
</style>
</head>
<body>
Connection Pool : 많은 자원을 낭비하는 Connection(연결설정)을<br>
사용자가 요청할 때마다 매번 연결하지 않고 <br>
미리 일정 개수만큼 connection을 맺어 필요한 DAO 클래스에서는<br>
빌려 사용하고 반환하는 방법<br>
과거에는 Connection Pool 기능을 구현한 클래스(DBCPInit.java)를 직접 작성하여 사용하였으나<br>
현재에는 Connection Pool 기능이 포함되어있는 라이브러리를 사용.<hr>
Pool API:: javax.sql.DataSource, JNDI(Java Naming Directory Interface) 기법<hr>
<img src="connectionPool1.png"><br>
<img src="connectionPool2.png"><br>
<img src="JNDI.png"><br>
<a href="emppool">MVC Connection Pool</a>
</body>
</html>