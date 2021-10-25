<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function
send2() {
	
	
	
	 document.formm.action = "upload";
	document.formm.submit(); 
	window.open("about:blank", "_self").close();
	/* opener.document.$(".tab_content").load("photo");
	document.formm.close();
	opener.focus(); */
	
	// 부모창 주소값 리다이렉트
	// 자식창 종료 exit. close ....  
	//$("#mainPhoto").get(0).click();
}
</script>
<body>
				
 	<form name="formm" action="upload" method="post" enctype="multipart/form-data">
		<input type="file" name="uploadfile" placeholder="파일선택"/>
		<input type="button" onclick="send2()">
	</form>
	
	
</body>
</html>