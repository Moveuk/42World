<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="updateFriendDB" method="post" name="formm">
		<input type="hidden" value="${updateFriend.friendTo }" name="friendTo">
		<input type="hidden" value="${updateFriend.friendFrom}" name="friendFrom">
	
		변경하실 일촌명을 입력해주세요<br>
		<input type="text" name="nicknameFrom" value="${updateFriend.nicknameFrom }"><br><br>
		<input type="submit" value="수정하기">
	</form>
</body>
</html>