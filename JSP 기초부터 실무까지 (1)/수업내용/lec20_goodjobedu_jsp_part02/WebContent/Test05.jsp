<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var = "uName">${ param.userName}</c:set>
	<c:set var = "uAge" value = "${ param.userAge}"/>
	
	${uName }님은 ${uAge }세로, <br>
	
	<%-- <c:if> : if문 --%>
	<c:if test="${uAge >= 20 }">
		성인입니다.
	</c:if>	
	<c:if test="${uAge < 20 }">
		미성년입니다.
	</c:if>	
	
	<%-- <c:choose> : 다중 if문 --%>
	<c:choose>
		<c:when test = "${uAge >= 20 }">
			성인 혹은 대학생.<br>
		</c:when>
		<c:when test = "${uAge >= 17 }">
			고등학생 <br>
		</c:when>
		<c:when test = "${uAge >= 14 }">
			중학생 <br>
		</c:when>
		<c:when test = "${uAge >= 8 }">
			초등학생 <br>
		</c:when>
		<c:otherwise>
			미취학아동
		</c:otherwise>
	</c:choose>
</body>
</html>