<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	function setImage(event){
		var reader = new FileReader();
		reader.onload=function(event){
			var img = document.createElement("img"); 
			img.setAttribute("src", event.target.result);
			document.querySelector("div#image_container").appendChild(img); 
			}; 
		reader.readAsDataURL(event.target.files[0]); }

</script>
 
<body>
				
 	<form name="formm" id="formm" action="upload" method="post" enctype="multipart/form-data">
 	
		<input type="file" name="uploadfile" placeholder="파일선택" onchange="setImage(event);"/>
		
	<div id="image_container"></div>
		
		제목 : <input type="text" name="uploadname" id="uploadname">
		
		폴더:<input type="text" value="${photoList.folder }">
		
		<input type="submit" id="btnUpload" onclick="send2()">
		
    
	</form>
	
</body>
</html>