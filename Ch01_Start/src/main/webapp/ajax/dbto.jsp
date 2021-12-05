<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title></title>
<script>
	
</script>
</head>
<body>
	<%
	String name = request.getParameter("name");
	String a = request.getParameter("age");
	String s = request.getParameter("salary");

	int age = Integer.parseInt(a);
	int salary = Integer.parseInt(s);

	try {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, "jsp", "jsp");
		String sql = "insert into join values (?,?,?)";
		/* 	String sql = "insert into join values ('"+name+"',"+age+","+salary+")"; */
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setInt(2, age);
		pstmt.setInt(3, salary);

		int result = pstmt.executeUpdate();
		con.close();
		pstmt.close();
	} catch (Exception e) {
		System.out.println(e.getMessage());
	}
	%>
</body>
</html>