<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
form {
width: 500px;
}
legend {
border : 1px solid black;
}
</style>
</head>
<body>
<form action="PersonalInfoServlet">
<fieldset><legend>고객 정보 입력창</legend>
	이름: <input type="text" name="name" required="required" /><br>
	성별: <input type="radio" name="gender" value='남' checked="checked">남&nbsp;
		 <input type="radio" name="gender" value='여'>여 <br>
	나이: <input type="number" name="age" required="required"> <br>
	<input type="submit" value="제출">
	</fieldset>
</form>
</body>
</html>