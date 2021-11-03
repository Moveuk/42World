<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<div class="rightHomeTab">
		<ul class="tabs">
			<li>
				<a href="${member.memberNo }/home">HOME</a>
			</li>
			<li>
				<a href="${member.memberNo }/profile">PROFILE</a>
			</li>
			<li>
				<a href="${member.memberNo }/photo?folder='1'">PHOTO</a>
			</li>
			<li>
				<a href="${member.memberNo }/video">VIDEO</a>
			</li>
			<li>
				<a href="${member.memberNo }/board">BOARD</a>
			</li>
			<li>
				<a href="${member.memberNo }/visitors">VISITORS</a>
			</li>
			<!-- <c:if test="${session.member.memberNo}"></c:if> memberNo와 홈페이지 주인 정보가 같으면 보이도록
			 -->
			<li>
				<a href="${member.memberNo }/setting/myinfo">SETTING</a>
			</li>
			<!-- <c:if test="${session.member.memberNo}"></c:if> memberNo와 홈페이지 주인 정보가 같으면 보이도록
			 -->
			<li>
				<a href="setting/myinfo">SETTING</a>
			</li>
		</ul>
	</div>