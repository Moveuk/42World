<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css?ver=1.0 ">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main1.css?ver=1.0 ">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main1_section05.css ">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/purchase.css">    




<body>
	<section>
		<div class="header_main">
			<div class="header_main_logo">
				<img src="${pageContext.request.contextPath}/resources/img/logo3.png" alt="로고자리">
			</div>
			<div class="header_main_logo_right"></div>
			<div class="header_main_ul">
				<ul>
					<li>
						<form name="frmm" action="getProductList">
							<input name="category" type="hidden" value="music">

							<input type="submit" value="배경음악">
						</form>
					</li>
					<li>
						<form name="frmm" action="getProductList">
							<input name="category" type="hidden" value="skin">

							<input type="submit" value="스킨">
						</form>
					</li>
					<li>
						<form name="frmm" action="getProductList">
							<input name="category" type="hidden" value="font">

							<input type="submit" value="글꼴">
						</form>
					</li>
					<li>
						<form name="frmm" action="getProductList">
							<input name="category" type="hidden" value="minimi">

							<input type="submit" value="미니미">
						</form>
					</li>
					<li>
						<form name="frmm" action="getProductList">
							<input name="category" type="hidden" value="miniroom">

							<input type="submit" value="스토리룸">
						</form>
					</li>
				</ul>
			</div>
		</div>