<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/minihomepage.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/home.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/profile.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/photo.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/video.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/board.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/visitors.css">
<title>Document</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/minihome/photo.js"></script>
</head>

<script>
function/*
send2() {
	 document.formm.action = "photo";
	document.formm.submit(); 
	$(document.formm).setTimeout(function(){
		 $("#mainPhoto").get(0).click();
		  console.log('Works!');
		 
		}, 3000);

 $.ajax({
		type:"POST",
		url:"photo",
		data:"mainPhoto",
		success function(data){
			
		} 
	}) */
	/* var form=$('#formm');
 	var formData = new FormData(form);
 	formData.append("fileObj",$("#uploadfile").files);
 	$.ajax({
 		url:photo,
 		processData:false,
 		contentType:false,
 		data:formData,
 		type:'POST',
 		success:function(result){
 			alert("업로드성공")
 		}
 	})
 	
 	event.preventDefault();
 	
 	var form=$('#formm');
 	var data = new FormData(form);
 	
 	
}
*/
</script>
<body>
	<div class="back">
		<div class="blueBox">
			<div class="dot">
				<div class="whiteBox">
					<div class="top">
						<!-- <input type="button" onclick="send2()" value="test">
						<form name="formm" action="photo" method="post" enctype="multipart/form-data">
										<a href="photo" id="mainPhoto">PHOTO</a>
		<input type="button" onclick="send2()">
						
		<input type="file" name="uploadfile" placeholder="파일선택"/>
	</form>
		<input type="button" onclick="send3()"> -->
						<div class="count">
							<input type="text" name="count_today" id="count_today"
								value="today | total" readonly>
						</div>
						<div class="mainTitle">
							<input type="text" name="mainTitle_content"
								id="mainTitle_content" value="메인타이틀입니다" readonly>
						</div>
					</div>
					<div class="bottom tab_content">


						<%-- 자바 스크립트로 처리 --%>
						<%-- <%@ include file="../minihome/tab/home.jsp"%> --%>


					</div>
				</div>
			</div>
		</div>
	</div>
	<%-- 오른쪽 상태창 및 음악 플레이어 --%>
	<%@ include file="./statusBar.jsp"%>
	<%-- 메뉴 탭 --%>
	<%@ include file="./menuTab.jsp"%>
</body>
</html>