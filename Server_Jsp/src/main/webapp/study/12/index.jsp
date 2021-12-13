<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
function idSubmit() {
	var idForm = document.idForm;
	if($("input[name='id']").val() != "") {
		idForm.action = "test1.jsp";
		idForm.submit();
	} else {
		idForm.action = "#";
		idForm.submit();
	}
}

</script>
</head>
<body>
<form name="idForm" method="post">
<table width="100%">
<tr><td>ID:<input type="text" name="id" size="15">
		   <input type="button" value="확인" onclick="idSubmit()"></td></tr>
</table>
</form>
</body>
</html>