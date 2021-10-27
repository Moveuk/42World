<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script src="${pageContext.request.contextPath}/resources/js/minihome/se.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/minihomepage.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.7/tailwind.min.css">
<div class="left">
	<div id="setting_menu" class="leftContent text-green-400">
		<h2 id="setting_title" class="font-bold text-3xl">Manager</h2>
		<hr>
		<div id="setting_manageMinihome">
			<h3 class="text-lg text-gray-700 font-bold">미니홈피관리</h3>
			<ul>
				<li>
					<a href="setting/myinfo">기본정보</a>
				</li>
				<li>
					<a href="setting/menu">메뉴 관리</a>
				</li>
			</ul>
		</div>
		<div id="setting_setItem">
			<h3 class="text-lg text-gray-700 font-bold">아이템 설정관리</h3>
			<ul>
				<li>
					<a href="setting/skin">미니홈피 스킨 설정</a>
				</li>
				<li>
					<a href="setting/font">글꼴 설정</a>
				</li>
				<li>
					<a href="setting/minimi">스토리룸, 미니미 설정</a>
				</li>
				<li>
					<a href="setting/music">음악 설정</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<div class="right col-span-2 ">
	<div class="rightContent">
		<%@ include file="./setting/updateInfo.jsp"%>
	</div>
</div>