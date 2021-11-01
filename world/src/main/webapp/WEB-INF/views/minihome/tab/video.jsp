<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="shortcut icon" href="#">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
$(function() {
	$(".video_content").hide();
	$(".videoFolders li:first").addClass("active").show();
	$(".videoFolders:first img").attr('src', '../resources/img/close.png');
	$(".video_content:first").show();
	$(".videoForm_hide").hide();

	$(".videoFolders li").click(
			function() {

				$(".video_content").css('display', 'none');
				var href = $(this).find("a").attr("href");
				$(href).css('display', 'block');

				$(".videoFolders img").attr('src',
						'../resources/img/close.png');
				$(this).children("img").attr('src',
						'../resources/img/open.png');

				var string = href
				var no = string.replace(/[^0-9]/g, '');
				$(".video_content").eq(no - 1).css('display', 'block');

				var folderName = $(this).children("a").text();
				console.log("==" + folderName);

				
				$.ajax({
					url : 'openMinihome/videoList',
					method : 'POST',
					data : 'folder=' + folderName,
					type : "POST",

					success : function(data) {
						$(".videoForm").remove();
						$(data).each(
								function(index) {
								$(".reload").append("<div id='videoForm"+index+"' class='videoForm'></div>");
									$("#videoForm"+index ).append("<div id='videoTitle"+index+"' class='videoTitle'></div>");
										$("#videoTitle"+index).append("<input type='hidden' value='"+this.videoNo+"' name='videoNo'");
					            		$("#videoTitle"+index).append("<p>title"+this.title+"</p>");
					            	$("#videoForm"+index).append("<div id='videoImg"+index+"' class='img'></div>");
					            		$("#videoImg"+index).append("<img src='../resources/video/"+this.filename+"'>");
					            	$("#videoForm"+index).append("<div id='videoContent"+index+"' class='content'></div>");
					            		$("#videoContent"+index).append("<p>content"+this.videoContent+"</p>");
					            	$("#videoForm"+index).append("<div id='videoFooter"+index+"' class='videoFooter'></div>");
					            		$("#videoFooter"+index).append("<button id='videoButton"+index+"' class='videoButton'>수정</button>");
					            		$("#videoFooter"+index).append("<button id='videoButton"+index+"' class='videoButton'>이동</button>");
					            		$("#videoFooter"+index).append("<a href='openMinihome/videoDelete?videoNo="+this.videoNo+"' role='button' class='videoDeleteButton'>삭제</button>");
					            	$("#videoForm"+index).append("<div id='videoComment"+index+"' class='comment'></div>");
					            		$("#videoComment"+index).append("<div id='videoCommentForm"+index+"' class='commentForm'></div>");
					            			$("#videoCommentForm"+index).append("<span>댓글</span>");
					            			$("#videoCommentForm"+index).append("<input type='text' id='videoCommentInput"+index+"' placeholder='댓글을 작성해주세요'>");
					            			$("#videoCommentForm"+index).append("<input type='button' id='videoCommentSubmit"+index+"' class='commentSubmit' value='확인'></div>");
					            		$("#videoComment"+index).append("<div id='videoCommentList"+index+"' class='commentList'></div>");
					            			$("#videoCommentList"+index).append("<ul id='videoCommentListUl"+index+"'></ul>");
					                        
					            
								});
					},
					error : function() {
						alert("request error!");
					}

				})
				return false;
			});
})
</script>
<div class="left">
	<div class="leftContent">
		<p class="videoTitle">Video</p>

		<c:forEach items="${videoFolderList}" var="videoFolderList"
			varStatus="status">
			<ul class="videoFolders">
				<li><img src="/resources/img/close.png"><a
					href="#videoFolder${status.index+1}"><span>${videoFolderList.folder}</span></a></li>
			</ul>
		</c:forEach>
	</div>
</div>

<div class="right">
	<div class="rightContent">
		<c:forEach items="${videoFolderList}" var="videoFolderList"
			varStatus="status">
			<div id="#videoFolder${status.index+1}" class="video_content">
				<input type="text" value="기본 비디오" name="kind" id="kind" readonly>
				<input type="button"
					onclick="window.open('uploadPhoto','ap','width=600,height=800')"
					value="비디오 추가하기">
			</div>
		</c:forEach>
		
		<div id="dv" class="reload">
			<c:forEach items="${firstVideoList}" var="videoVO">
				<div class="videoForm">
					<div class="videoTitle">
						<%-- <input type="text" name="videoTitleInput" id="videoTitleInput" value="${videoVO.title}" readonly> --%>
						<p>${videoVO.title}</p>
					</div>
					<div class="video">
						<video autoplay controls width="250" style="border: 1px rgb(93, 94, 93) solid;">
							<source src="/resources/video/video.mp4" type="video/mp4">
							<source src="ds2.ogv" type="video/ogv">
							<source src="ds2.webm" type="video/webm">
						</video>
					</div>
					<div class="content">
						<p>${videoVO.videoContent}</p>
					</div>
					<div class="videoFooter">
						<button class="videoButton" onclick="">수정</button>
						<button class="videoButton" onclick="">이동</button>
						<a href="openMinihome/videoDelete?videoNo=${videoVO.videoNo}" role="button" class="videoDeleteButton">삭제</a>
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
	</div>
</div>
