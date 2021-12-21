<%@page import="jdbc.connection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
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
try (Connection conn = ConnectionProvider.getConnection()){
	out.println("Connection Success!");
}catch(SQLException e) {
	out.println("Connection fail!" + e.getMessage());
	application.log("Connection fail", e);
}
%>
</body>
</html>