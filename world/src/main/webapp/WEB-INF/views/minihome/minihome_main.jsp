<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/minihomepage.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/profile.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/photo.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/video.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/visitors.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board.css">
<title>Document</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/minihome/photo.js"></script>
</head>
<body>
	<div class="back">
		<div class="blueBox">
			<div class="dot">
				<div class="whiteBox">
					<div class="top">
						<div class="count">
							<input type="text" name="count_today" id="count_today" value="today | total" readonly>
						</div>
						<div class="mainTitle">
							<input type="text" name="mainTitle_content" id="mainTitle_content" value="메인타이틀입니다" readonly>
						</div>
					</div>
					<div class="bottom tab_content">
<<<<<<< HEAD
						<%-- 자바 스크립트로 처리 --%>
=======
						<%-- <%@ include file="../minihome/tab/home.jsp"%> --%>
>>>>>>> 6245ede7bf3d44a4e4aeabaedaffca5e092fbef7
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