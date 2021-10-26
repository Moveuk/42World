<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>9.장바구니 기능</h2><br>
	
	<h3>현재까지 나의 장바구니에 담긴 리스트 조회</h3><br><br>
	
	<form name="formm" method="post" action="cart/cartList">
		조회할 장바구니의 유저 아이디를 입력하세요.<br>
		<input type="text" name="userId" value="fox">
		
		<input type="submit" value="내 장바구니 가기"> <br>
	</form>
	
	
</body>
</html>