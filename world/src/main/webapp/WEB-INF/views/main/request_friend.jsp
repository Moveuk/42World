<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일촌 신청 페이지</title>
</head>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/request_friend2.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
/* 	$(function() {
/* 		console.log(window.opener.document.formm.name1.value);
		$("a#friendFrom").text(window.opener.document.formm.name2.value);
		$("a#friendTo").text(window.opener.document.formm.name1.value);
		
		document.getElementById("friendFrom").value = '1';
		document.getElementById("friendTo").value = window.opener.document.formm.name1.value; */
		
		

		
		/*
	}) */
</script>
<body>
	<div class="request_friend_main">
		<div class="request_friend_main_top">
			<img src="/img/loadimg.png  " alt="이미지"> <span>반가운 초대</span>
		</div>
		<div class="request_friend_main_contentWrap">
			<div class="request_friend_main_content">
				<div class="request_friend_main_content_1">
					보내는이: <a id="friendFrom" href="#">${loginUser }</a>
				</div>
				<hr>
				<div class="request_friend_main_content_2">
					<div class="request_friend_main_content_2_1">
						<img src="/img/minimi/minimi13.gif" alt="미니미">
					</div>
					<div class="request_friend_main_content_2_2">
						<a id="friendTo" href="#"></a>님께 일촌을 신청합니다.
					</div>
				</div>
				<hr>
				
				<form action="requestFriend" method="post" name="formm">
								
				<input type="text" name="friendTo" id="friendTo">
				<input type="text" name="friendFrom" id="friendFrom">
					<div class="request_friend_main_content_3">
							 <a id="friendTo" href="#"></a>님을 <a id="friendFrom" href="#"></a>님의
						<input type="text"name="nicknameTo">으로<br>
							 <a id="friendTo" href="#"></a>님을 
							 <a	id="friendFrom" href="#"></a>님의
						<input type="text" name="nicknameFrom">으로<br>

					</div>
					<hr>
					<div class="request_friend_main_content_4">
						<pre>     일촌 맺고 싶어요
               <span>예) 상대방을 나의 멋진 선배로
                   나를 상대방의 예쁜 후배로</span>
						</pre>
						</pre>
					</div>
					<div class="request_friend_main_content_5">
						<textarea name="message" rows="5" cols="50"></textarea>
						<br> 상대방이 동의하시면 일촌이 맺어집니다<br>
				</form>
				
				<button type="submit" class="btn1">
					<img src="/img/loadimg.png"><span>보내기</span>
				</button>
				<button type="reset" class="btn2">
					<img src="/img/cancel.png"><span>취소</span>
				</button>
			</div>
		</div>
	</div>
	</div>
</body>
</html>