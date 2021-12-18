
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<script type="text/javascript">
    function test() {
      var p1 = document.getElementById('pw1').value;
      var p2 = document.getElementById('pw2').value;
      if( p1 != p2 ) {
        alert("비밀번호가 일치 하지 않습니다");
        return false;
      } else{
        alert("비밀번호가 일치합니다");
        return true;
      }
    } 
</script>
</head>
<body>
2. 아이디, 암호, 암호확인, 이름으로 구성된 화면(joinform.jsp)을 다음 조건에 맞게 구현하시오
1) submit하면 join.jsp를 실행, method는 post
2) 서비할 때 암호와 암호 확인이 같은지 체크
3) 항목 필수여부 체크, 처음 커서는 id에 위치

<form action="join.jsp" method="post">
    아이디<input type="text" name="id" autofocus><br>
    암호<input type="password" name="pw" id="pw1"><br>
   	암호 확인<input type="password" name="pw" id="pw2" onchange="test()"><br>
    이름<input type="text" name="name"><br>
    <input type="submit" value="전송">
</form>
</body>
</html>