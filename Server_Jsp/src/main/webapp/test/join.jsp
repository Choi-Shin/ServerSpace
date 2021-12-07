<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="Member" scope="page" />
<jsp:setProperty name="member" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	4. 입력된 데이터를 받아서 처리하는 join.jsp를 다음 조건에 따라 완성하시오 1) action태그를 이용하여 멤버객체
	생성하고 setProperty를 이용하여 데이터 setting 2) MemberDao를 이용하여 데이터를 입력하고 입력에
	성공하면 ‘입력성공’이라는 메시지를 띄우고 main.jsp로 넘기시오 3) 실패하면 ‘입력에 실패 하였습니다’라는 경고창을 띄고
	joimform.jsp를 돌아 가시오

	<%
MemberDao dao = MemberDao.getInstance();
int joinSuccess = dao.join(member);
if (joinSuccess == 0) {
%>
	<script type="text/javascript">
		alert("입력성공");
	</script>
	<%
	} else {
	%>
	<script type="text/javascript">
		alert("입력에 실패하였습니다.");
	</script>
	<%
	response.sendRedirect("joinform.jsp");
	}
	%>

</body>
</html>