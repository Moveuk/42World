<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/photo.css">

<div class="left">
	<div class="leftContent">
		<p class="videoTitle">Video</p>
		<ul class="videoFolders">
			<li>
				<img src="/resources/img/open.png">
				<a href="#videoFolder1">${folderVO.folderName }</a>
			</li>
		</ul>
		<ul class="videoFolders">
			<li>
				<img src="/resources/img/close.png">
				<a href="#videoFolder2">자유 비디오 폴더</a>
			</li>
		</ul>
		<ul class="videoFolders">
			<li>
				<img src="/resources/img/close.png">
				<a href="#videoFolder3">풍경 비디오 폴더</a>
			</li>
		</ul>
	</div>
</div>
<div class="right">
	<div class="rightContent">
		<div id="videoFolder1" class="video_content">
			<c:if test="${videoList!=null }">널이 아닙니다.</c:if>
			<c:forEach items="${videoList}" var="videoVO">
				<div class="videoForm">
					<form action="">
						<input type="hidden" name="" value="${videoVO.videoNo }">
						<div class="videoTitle">
							<input type="text" name="videoTitleInput" id="videoTitleInput" value="${videoVO.title}" readonly>
						</div>
						<div class="video">
							<video autoplay controls width="480" style="border: 1px rgb(93, 94, 93) solid;">
								<source src="/resources/video/${videoVO.filename}" type="video/mp4">
								<source src="ds2.ogv" type="video/ogv">
								<source src="ds2.webm" type="video/webm">
							</video>
						</div>
						<div class="videoFooter">
							<a href="#">수정</a>
							|
							<a href="#">이동</a>
							|
							<a href="#">삭제</a>
						</div>
					</form>
					<form action="" name="replyForm">
						<input type="hidden" name="${video.videoNo }">
					</form>
					<div class="comment">
						<div class="commentForm">
							<span>댓글</span>
							<input type="text" name="commentInput" placeholder="댓글을 작성해주세요" id="commentInput" name="commentInput">
							<input type="button" onclick="comentSubmit()" name="commentSubmit" id="commentSubmit" value="확인">
						</div>
						<div class="commentList">
							<ul>
								<c:forEach items="${replyList}" var="replyVO">
								<li>
									${replyVO.replyContent }
									<a href="#">&nbsp;&nbsp;${replyVO.writerID }</a>
								</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>