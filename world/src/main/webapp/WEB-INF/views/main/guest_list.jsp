<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>방문자 히스토리</h2>
오늘의 방문자에게 마음을 전해보세요<br>
(친구의 이름을 클릭하면 미니홈피로 이동합니다.)
	<table>
		<tr>
			<th>방문일자</th>
			<th>방문자</th>
		</tr>
		
		<c:forEach items="${guestList }" var="guestVO">
			<tr>
				<td>${guestVO.visitDate }</td>
				<td><a href="#"> ${guestVO.visitFrom }</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>