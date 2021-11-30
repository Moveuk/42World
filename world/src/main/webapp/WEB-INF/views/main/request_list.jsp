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
	<form id="frmm" method="post" action="checkRequest">
		<table border=1>
			<tr>
				<td>보낸이</td>
			</tr>
			<c:forEach items="${requestList }" var="friendVO">
				<tr>
					<td><a href="#" onclick="document.getElementById('frmm').submit();">${friendVO.friendFrom }</a></td>
					<input type="hidden" value="${friendVO.friendFrom}" name="friendFrom">
					<input type="hidden" value="${friendVO.friendTo}" name="friendTo">
					
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>