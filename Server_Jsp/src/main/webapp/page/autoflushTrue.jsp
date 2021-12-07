<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page buffer="1kb" autoFlush="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
buffer:: 출력물을 모아놓는 공간
<% 
    for(int i=0; i<1000; i++){
        out.println("1234");
    }
%>
</body>
</html>