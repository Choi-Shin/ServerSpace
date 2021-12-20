
[문항2]
--------------------------
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
	<form action="join.do">
		<table>
			<thead>
				<tr>
					<td colspan="2">로그인</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" required="required"
						autofocus="autofocus"></td>
				</tr>
				<tr>
					<td>암호</td>
					<td><input type="password" name="password" required="required"></td>
				</tr>
			</tbody>
			<tfoot><tr><td colspan="2"><input type="submit" value="확인"></td></tr></tfoot>
		</table>
	</form>
</body>
</html>
