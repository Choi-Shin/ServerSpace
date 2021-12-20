[문항5]  DB에 저장하는 MemberDao를 생략합니다. 
처리가 완료된 후에 login.jsp에서 result값을 check하여 
0보다 크면 로그인 성공을 띄우고 main.do를 실행 
result값이 0이면 암호가 다르다고 경고 메시지 보내고 loginForm화면 실행 
result값이 -1이면 없는 아이디라고 경고메세지 보내고 loginForm화면 실행
---------------------------
[답안]
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
