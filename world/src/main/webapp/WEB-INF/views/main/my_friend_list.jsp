<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function delete1(){
		document.frmm.action = "deleteFriend";
		document.frmm.submit();
	}
</script>
</head>
<body>
	<h2>내 일촌 목록</h2>
	<table border=1>
		<tr>
			<td>이름</td>
			<td>일촌명</td>
			<td>일촌명 수정</td>
			<td>일촌 삭제</td>
		</tr>
		
		<form name="frmm" method="post" action="updateFriend">
		
		<c:forEach items="${myFriendList }" var="friendVO">
			<tr>
				<td><a href="#">${friendVO.friendFrom}</a></td>
				<td>${friendVO.nicknameFrom}</td>
				
				<input type="hidden" name="nicknameFrom" value="${friendVO.nicknameFrom }">
				<input type="hidden" name="friendFrom" value="${friendVO.friendFrom }">
				<input type="hidden" name="friendTo" value="${friendVO.friendTo }">
				
				<td><input type="submit" value="수정"></td>
				<td><input type="button" onclick="delete1()" value="삭제"></td>
			</tr>
		</c:forEach>
		
		</form>
		
	</table>
</body>
</html>