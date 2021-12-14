<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% request.setAttribute("name","이순신"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어</title>
</head>
<body>
초기화 Parameter Name : ${initParam.Name}<br>
초기화 Parameter AGE : ${initParam.AGE}<hr>
요청 URI: ${pageContext.request.requestURI}<hr>
아이디 : ${param.id}<br>
선택한 운동 :
<!-- jstl 사용으로 선택한 운동의 개수를 받고 -->
<c:set var="count" value="${fn:length(paramValues.sports)}"/>
<!-- 개수가 0이 아닐 때에 -->
<c:if test="${count != 0 }">
<!-- 각각의 value를 forEach를 이용해 출력 -->
<c:forEach items="${paramValues.sports}" var="sport" varStatus="status">
${sport}
<!-- 마지막 value가 아닐 때에는 ", "를 추가하여 value 단위로 끊어준다. -->
<c:if test="${not status.last}">, </c:if>
</c:forEach> 
</c:if>
</body>
</html>