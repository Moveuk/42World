<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<div class="rightHomeTab">
		<ul class="tabs">
			<li>
				<a href="${ownerInfo.userUrl }/home">HOME</a>
			</li>
			<li>
				<a href="${ownerInfo.userUrl }/profile">PROFILE</a>
			</li>
			<c:choose>
				<c:when test="${loginPhoto == 1}">
					<li>
						<a href="${ownerInfo.userUrl }/photo?folder='1'">PHOTO</a>
					</li>
				</c:when>
			</c:choose>	 
			<c:choose>
				<c:when test="${loginVideo == 1}">
					<li>
						<a href="${ownerInfo.userUrl }/video">VIDEO</a>
					</li>
				</c:when>
			</c:choose>	
			<c:choose>
				<c:when test="${loginBoard == 1}">
					<li>
						<a href="${ownerInfo.userUrl }/board">BOARD</a>
					</li>
				</c:when>
			</c:choose>			
			<li>
				<a href="${ownerInfo.userUrl }/visitors">VISITORS</a>
			</li>
			<!-- <c:if test="${session.member.memberNo}"></c:if> memberNo와 홈페이지 주인 정보가 같으면 보이도록
			 -->
			<li>
				<a href="${ownerInfo.userUrl }/setting/myinfo">SETTING</a>
			</li>
			<!-- <c:if test="${session.member.memberNo}"></c:if> memberNo와 홈페이지 주인 정보가 같으면 보이도록
			 -->
		</ul>
	</div>