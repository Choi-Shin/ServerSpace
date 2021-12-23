<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>암호 변경</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	암호를 변경했습니다.
	<br> 3초 뒤 메인화면으로 이동합니다.
	<a href="index.jsp" id="wait">지금 바로 가기</a>

</body>
<script type="text/javascript">
$(function () {
	setTimeout(() => {
		index();
	}, 3000);
});
function index() {
	location.href = "index.jsp";
}
</script>
</html>