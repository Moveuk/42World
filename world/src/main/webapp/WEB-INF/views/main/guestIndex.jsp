<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>7. 방문자 확인 기능</h2><br>
	
	<form name="formm" method="post" action="guest/guestList">
		방문자를 조회할 미니홈피 주인의 아이디를 입력하세요.<br>
		<input type="text" name="visitTo" value="fox">
		
		<input type="submit" value="방문자 확인"> <br>
	</form>
</body>
</html>