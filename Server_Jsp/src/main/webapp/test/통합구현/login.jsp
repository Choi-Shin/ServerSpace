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
	int result = (int) session.getAttribute("result");
	if (result > 0) {
	%>
	<script type="text/javascript">
		alert("로그인 성공");
	</script>
	<%
	pageContext.forward("main.do");
	} else if (result == 0) {
	%>
	<script>
		alert("암호가 다릅니다.");
	</script>
	<%
	pageContext.forward("loginForm.jsp");
	} else {
	%>
	<script>
		alert("아이디가 존재하지 않습니다.");
	</script>
	<%
	pageContext.forward("loginForm.jsp");
	}
	%>
</body>
</html>