<%@page import="java.util.Enumeration"%>
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
	String[] sport = request.getParameterValues("sport");
	String sex = request.getParameter("sex");
	if (sport != null) {
		for (int i = 0; i < sport.length; i++)
			out.print("<h4>좋아하는 운동: " + sport[i] + "<br>");
	} else
		out.println("<h4>좋아하는 운동: 없음");
	out.println("<br>성별: " + sex);
	%>
	<hr>
	<%
	Enumeration<String> sports = session.getAttributeNames();
	String sex2 = (String) session.getAttribute("s2");
	
	while(sports.hasMoreElements()) {
		String sessionName = sports.nextElement();
		String sessionValue = session.getAttribute(sessionName).toString();
		
		out.println("Name:: " + sessionName + "<br>");
		out.println("Value:: " + sessionValue + "<br>");
	}
	%>
	
	JSP:: <%= request.getParameter("id") %> <br>
	EL:: ${id}

</body>
</html>