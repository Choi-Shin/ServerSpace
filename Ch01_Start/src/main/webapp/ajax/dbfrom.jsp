<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP::AJAX::DB</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
try {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Class.forName(driver);
	Connection con = DriverManager.getConnection(url, "jsp", "jsp");
	Statement stmt = con.createStatement();
	String sql = "select * from join";
	ResultSet rs = stmt.executeQuery(sql);
	while (rs.next()) {
		String name = rs.getString(1);
		String age = rs.getString(2);
		String salary = rs.getString("money");
		
		String strXML = " ";
		strXML += "<join>";
		strXML += "<person>";
		strXML += "<name>" + name + "</name>";
		strXML += "<age>" + age + "</age>";
		strXML += "<salary>" + salary + "</salary>";
		strXML += "</person>";
		strXML += "</join>";
		out.write(strXML);
	}
}catch(Exception e) {
	System.out.println(e.getMessage());
}

%>
</body>
</html>