<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/photo.css">

<div class="left">
	<div class="leftContent">
		<p class="photoTitle">Photo</p>
		<ul class="photoFolders">
			<li><img src="/resources/img/open.png"> <a href="photo?folder='1">1</a></li>
		</ul>
		<ul class="photoFolders">
			<li><img src="/resources/img/close.png"> <a href="photo?folder='2'">2</a></li>
		</ul>
		<ul class="photoFolders">
			<li><img src="/resources/img/close.png"> <a href="photo?folder='3'">3</a></li>
		</ul>
		
	</div>
	<input type="button" value="폴더추가" name="addFolder" onclick="folder()">
</div>

<div class="right">
	<div class="rightContent">
			<div id="photoFolder1" class="photo_content">
				<input type="text" value="기본 사진첩" name="kind" id="kind" readonly>
				<input type="button" value="사진추가" name="addBoard" onclick="writingBoard()">
				<c:forEach items="${photoList}" var="photoVO">
						
						<div class="photoForm">
							<div class="photoTitle">
								<input type="text" name="photoTitleInput" id="photoTitleInput" value="${photoVO.title}" readonly>
							</div>
							<div class="img">
								<img src="../resources/photo/${photoVO.location}">
							</div>
							<div class="content">
								<p>내용</p>
							</div>
							<div class="photoFooter">
								<button class="photoButton" onclick="">수정</button>
								<button class="photoButton" onclick="">이동</button>
								<button class="photoButton" onclick="">삭제</button>
							</div>
							<div class="comment">
								<div class="commentForm">
									<span>댓글</span> <input type="text" name="commentInput" placeholder="댓글을 작성해주세요" id="commentInput" name="commentInput">
									<input type="button" onclick="comentSubmit()" name="commentSubmit" id="commentSubmit" value="확인">
								</div>
								<div class="commentList">
									<ul>
										<li>dd<a href="#">&nbsp;&nbsp;</a>
										</li>
									</ul>
								</div>
							</div>
						</div>

				</c:forEach>
			</div>

		<!-- <div id="photoFolder2" class="photo_content">
			<input type="text" value="" name="kind" id="kind">
			<div class="photoForm">
				<div class="photoTitle">
					<input type="text" name="photoTitleInput" id="photoTitleInput" value="사진타이틀입니다" readonly>
				</div>
				<div class="img">
					<img src="/resources/img/dotoriimg2.png">
				</div>
				<div class="photoFooter">
					<button class="photoButton" onclick="">수정</button>
					<button class="photoButton" onclick="">이동</button>
					<button class="photoButton" onclick="">삭제</button>
				</div>
				<div class="comment">
					<div class="commentForm">
						<span>댓글</span> <input type="text" name="commentInput" placeholder="댓글을 작성해주세요" id="commentInput" name="commentInput">
						<input type="button" onclick="comentSubmit()" name="commentSubmit" id="commentSubmit" value="확인">
					</div>
					<div class="commentList">
						<ul>
							<li>도도리 귀여워요~ <a href="#">&nbsp;&nbsp;홍길동</a>
							</li>
							<li>퍼가요~♡ <a href="#">&nbsp;&nbsp;뽀로로</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="photoFolder3" class="photo_content">
			<input type="text" value="" name="kind" id="kind">
			<div class="photoForm">
				<img src="/resources/img/friend.png">
			</div>
		</div> -->
	</div>
</div>
