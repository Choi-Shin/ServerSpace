<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="country" value="${'Korea'}"/>
<c:if test="${country != null}">
국가명 :: <c:out value="${country}"></c:out>
</c:if>
<br>
<c:choose>
<c:when test="${country =='Korea'}">
<c:out value="${country}의 겨울은 춥다."></c:out>
</c:when>
<c:when test="${country =='Canada'}">
<c:out value="${country}의 겨울은 춥다."></c:out>
</c:when>
<c:otherwise>
<c:out value="그 이외의 나라들의 겨울은 알 수 없다."></c:out>
</c:otherwise>
</c:choose>
</body>
</html>