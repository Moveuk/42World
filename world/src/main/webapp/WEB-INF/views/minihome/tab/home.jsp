<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="left">
	<div class="leftContent">
		<img src="${pageContext.request.contextPath}/resources/img/${member.propic }" name="mainImg" id="mainImg"
			alt="mainImg">
		<textarea name="self" id="self" rows="5" cols="23" readonly>${member.subtitle }</textarea>
		<input type="button" name="leftEdit" id="leftEdit" value="EDIT" onclick="edit()">
		<hr style="width: 90%">
		<input type="text" name="name" id="name" value="피효정" size="2" readonly>
		<!-- <input type="text" name="gender" id="gender" value="여" size="1" readonly> -->
		<c:choose>
			<c:when test="${member.gender==1 }">
				<img src="${pageContext.request.contextPath}/resources/img/man.png" name="gender" id="gender" alt="genderImg">
			</c:when>
			<c:otherwise>
				<img src="${pageContext.request.contextPath}/resources/img/woman.png" name="gender" id="gender" alt="genderImg">
			</c:otherwise>
		</c:choose>

		<input type="text" name="birth" id="birth" value="${member.birth }" size="6" readonly>
		<input type="button" name="chkFriendAccept" id="chkFriendAccept" value="일촌 신청 확인" onclick="chkFreind(); return false">
		<input type="button" name="friendRandom" id="friendRandom" value="랜덤 미니홈피 가기">
		<script>
			function movehome() {
				document.formm.action = "/openfriendMinihome";
				document.formm.submit(); 
				
			}
		</script>
		<form name = "formm">
		<select id="friendWave" name="memberno"  onchange="movehome()">
			<option value="none">일촌 파도타기</option>
			<c:forEach items="${myFriendName }" var="name">
			
					<option   value="${name.friendFrom}">
					${name.message} (${name.nicknameFrom})
					</option> 							
			
			</c:forEach>
		</select>
		</form>
	</div>
</div>
<div class="right">
	<div class="rightContent">
		<div id="tab1">
			<p id="updateNews">UPDATE NEWS</p>
			<div class="tabHomeNew">
				<div class="newlyButtonWrap">
					<ul class="leftul">
						<li>
							<input type="button" name="newlyButtonPhoto" id="newlyButtonPhoto" value="사진첩">
							<a href="#">최근게시물1</a>
						</li>
					</ul>
					<ul class="leftul">
						<li>
							<input type="button" name="newlyButtonVideo" id="newlyButtonVideo" value="비디오">
							<a href="#">최근게시물2</a>
						</li>
					</ul>
					<ul class="leftul">
						<li>
							<input type="button" name="newlyButtonboard" id="newlyButtonboard" value="게시판">
							<a href="#">최근게시물3</a>
						</li>
					</ul>
					<ul class="leftul">
						<li>
							<input type="button" name="newlyButtonPhoto" id="newlyButtonPhoto" value="사진첩">
							<a href="#">최근게시물4</a>
						</li>
					</ul>
				</div>
				<div class="updateCategory">
					<div class="updateCategory_content">
						<ul>
							<li class="buttonAndCategory">
								<input type="button" name="rightNewlyButton" id="rightNewlyButton" value="new">
								&nbsp;&nbsp;게시판
							</li>
							<li>1/5</li>
						</ul>
					</div>
					<div class="updateCategory_content">
						<ul>
							<li class="buttonAndCategory">
								<input type="button" name="rightNewlyButton" id="rightNewlyButton" value="new">
								&nbsp;&nbsp;방명록
							</li>
							<li>1/5</li>
						</ul>
					</div>
					<div class="updateCategory_content">
						<ul>
							<li class="buttonAndCategory">
								<input type="button" name="rightNewlyButton" id="rightNewlyButton" value="new">
								&nbsp;&nbsp;사진첩
							</li>
							<li>1/5</li>
						</ul>
					</div>
					<div class="updateCategory_content">
						<ul>
							<li class="buttonAndCategory">
								<input type="button" name="rightNewlyButton" id="rightNewlyButton" value="new">
								&nbsp;&nbsp;동영상
							</li>
							<li>1/5</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="tabHomeStoryRoom">
				<p>나의 미니미와 스토리룸을 소개합니다.</p>
				<div class="miniroomImg">
					<div class="miniroom">
						<img src="/resources/img/miniroom/miniroom2.gif" alt="miniroomBackImg" id="miniroomBackImg" name="miniroomBackImg">
					</div>
					<div class="minimi">
						<img src="/resources/img/minimi/minimi13.gif" alt="minimiImg" name="minimiImg" id="minimiImg">
					</div>
				</div>
			</div>
			<div class="home_comment">
				<div class="commentHeader">
					<div class="commentTitle">
						<p>일촌평</p>
					</div>
					<div class="commentForm">
						<p>Friend Say</p>
						<input type="text" name="commentInput" placeholder="친구에게 일촌평을 작성해주세요" id="commentInput" name="commentInput">
						<input type="button" onclick="commentSubmit()" name="commentSubmit" id="commentSubmit" value="확인">
					</div>
				</div>
				<div class="commentList">
					<ul>
						<li>
							효정아 안녕?
							<a href="#">&nbsp;&nbsp;홍길동</a>
						</li>
						<li>
							아이스크림 먹으러 가자~
							<a href="#">&nbsp;&nbsp;짱구</a>
						</li>
						<li>
							커피 마실래?
							<a href="#">&nbsp;&nbsp;둘리</a>
						</li>
						<li>
							효정아 안녕?
							<a href="#">&nbsp;&nbsp;홍길동</a>
						</li>
						<li>
							아이스크림 먹으러 가자~
							<a href="#">&nbsp;&nbsp;짱구</a>
						</li>
						<li>
							커피 마실래?
							<a href="#">&nbsp;&nbsp;둘리</a>
						</li>
						<li>
							효정아 안녕?
							<a href="#">&nbsp;&nbsp;홍길동</a>
						</li>
						<li>
							아이스크림 먹으러 가자~
							<a href="#">&nbsp;&nbsp;짱구</a>
						</li>
						<li>
							커피 마실래?
							<a href="#">&nbsp;&nbsp;둘리</a>
						</li>
						<li>
							효정아 안녕?
							<a href="#">&nbsp;&nbsp;홍길동</a>
						</li>
						<li>
							아이스크림 먹으러 가자~
							<a href="#">&nbsp;&nbsp;짱구</a>
						</li>
						<li>
							커피 마실래?
							<a href="#">&nbsp;&nbsp;둘리</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>