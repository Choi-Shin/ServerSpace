<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement" %>
<%@ page language="java" contentType="text/html"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="utf-80">
<title>Insert title here</title>
<style>
table, td {
	border:1px solid black;
}
td {
	width: 200px;
}
</style>
</head>
<body>
<% 
String num = request.getParameter("num");
String name = request.getParameter("name");
String grade = request.getParameter("grade");
String subject = request.getParameter("subject");

String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";

try {
	Class.forName(driver);
	Connection con = DriverManager.getConnection(url, "jsp","jsp");
	String sql = "insert into student values("+num+", '"+name+"', '"+grade+"', '"+subject+"')";
    Statement stmt = con.createStatement();
    int result = stmt.executeUpdate(sql);
	if (result>0) {
		out.println(result+"행 삽입 완료");
	} else {
		out.println("저장에 실패하였습니다.");
	}
} catch(Exception e){
	System.out.println(e.getMessage());
}
%>
</body>
</html>