<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>42world</title>
</head>
<body>
<form method="post" action="insertCart.do" name="formm">
	<h1>환영합니다.</h1>
	<h1>42world index</h1>
	<hr>
	<a href="member/confirmID">login</a>
	<br>
	<br>
	<br>
	<a href="member/getMemberList"> member list </a><br>
	<a href="product/getProductList"> product list </a><br>
	
	<!-- insert oracle -->
	<input type="text" name="name">
	<br>
	<input type="button" onclick="send2()" value = "insert cart">
</form>	
	<a href="item/getItemList"> item list </a><br>
	<a href="main/profile">profile~</a>
<form method="post" action = "member/login" >
	<input type="text" name="email">
	<input type="text" name="password">
	<input type="submit" value="login">
</form>		
	


</body>
<script>
	function send2() {
		document.formm.action = "insertCart.do";
		document.formm.submit(); 
		alert("장바구니 담기 성공");
	}

</script>
</html>
