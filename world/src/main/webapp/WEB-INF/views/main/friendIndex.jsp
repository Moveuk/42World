<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script language="javascript" type="text/javascript">

function openWin(){  
	 
    window.name = "friendForm";
    window.open("friend/requestFriendForm", "일촌신청", "width=500, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=yes" ); 
}  





</script>
</head>
<body>
	<h2>1. 일촌 신청 기능</h2><br>
	(가정)현재 로그인 아이디:turtle <br><br>
	
	fox 유저(일촌 신청할 상대 유저 id값 불러오기) <br>
	<form name="formm" method="post">
		<input type="text" id="name1" name="name1" value="name1">
		<input type="text" id="name2" name="name2" value="name2">
		
		<input type="button" value="일촌신청" onClick="openWin()"> <br><br><br>
	</form>
	<h2>2. 일촌 받기 기능</h2><br>
	(가정)현재 로그인 아이디:fox <br><br>
	
	<form name="formm2" method="post" action="friend/requestList">
		<input type="text" id="friendTo" name="friendTo" value="fox">
		
		<input type="submit" value="일촌신청함 확인 ">
	</form>
	
	<h2>3. 일촌 수정/끊기 기능</h2><br>
	(가정)현재 로그인 아이디:fox <br><br>
	<form name="formm3" method="post" action="friend/myFriendList">
		<input type="text" id="friendTo" name="friendTo" value="fox">
		
		<input type="submit" value="내 일촌 리스트 ">
	</form>
	
	
	

	
</body>
</html>