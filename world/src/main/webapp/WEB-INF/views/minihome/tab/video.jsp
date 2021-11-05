<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="shortcut icon" href="#">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>


function addVideoForm(){
	 $(".videoForm").remove();
	 
	 $(".reload").append("<div id='videoForm' class='videoForm'></div>");
	 $("#videoForm").append("<div id='videoTitle' class='videoTitle'></div>");
        $("#videoTitle" ).append("<input type='text' value='title' name='title'>");
      
    $("#videoForm" ).append("<div id='videoImg' class='img'></div>");
        $("#videoImg" ).append("<input type='file' name='uploadfile' placeholder='파일선택' onchange='setImage(event)'/>");
    $("#videoForm" ).append("<div id='videoContent' class='content'></div>");
        $("#videoContent" ).append("<textarea rows='17' cols='65' name='content'></textarea>");
    $("#videoForm" ).append("<div id='videoFooter' class='videoFooter'></div>");
        $("#videoFooter" ).append("<button id='videoButton' class='videoUpdateButton' onclick='addVideo()'>등록</button>");
        /* $("#videoFooter" ).append("<a href='openMinihome/videoDelete?videoNo="+this.videoNo+"' role='button' class='videoDeleteButton'>삭제</button>"); */

}
function updateVideoList(e){
	
		var string =  $(e).attr('id');
		var no = string.replace(/[^0-9]/g, '');
		
		 const videoNo = document.getElementById('videoNo'+no).value;
		console.log(videoNo);
		 
       $.ajax({
         url : 'openMinihome/updateVideoList',
         method : 'POST',
         data : 'videoNo=' + videoNo ,
         type : "POST",

         success : function(data) {
			 $(".videoForm").remove(); 

            
            $(data).each(
                  function(index) {
                     console.log(index)
                      $(".reload").append("<div id='videoForm"+index+"' class='videoForm'></div>");
                      $("#videoForm"+index ).append("<div id='videoTitle"+index+"' class='videoTitle'></div>");
                         $("#videoTitle"+index).append("<input type='hidden' id='videoNo"+index+"' value='"+this.videoNo+"' name='videoNo'>");
                         $("#videoTitle"+index).append("<input type='hidden' id='folderName"+index+"' value='"+this.folder+"' name='videoName'>");
                             $("#videoTitle"+index).append("<input id='videoTitle' type='text' value='"+this.title+"'>");
                             $("#videoForm"+index).append("<div id='video"+index+"' class='video'></div>");
                             $("#video"+index).append("<video id='videoSource"+index+"' controls width='250'>");
			            		$("#videoSource"+index).append("<div class='dd'>"+this.filename+"</div>");
			            			$("#videoSource"+index).append("<source src='/resources/video/"+this.filename+"' type='video/webm'>");

								   									 
			            			$("#videoSource"+index).append("<source src='/resources/video/"+this.filename+"' type='video/mp4'>");
                         $("#videoForm"+index).append("<div id='videoContent"+index+"' class='content'></div>");
                             $("#videoContent"+index).append("<p>"+this.videoContent+"</p>");
                         $("#videoForm"+index).append("<div id='videoFooter"+index+"' class='videoFooter'></div>");
                             $("#videoFooter"+index).append("<button id='videoButton"+index+"' class='videoButton' onclick='updateVideo()'>수정</button>");
                            
                  });
         },
         error : function() {
            alert("request error!");
         }
      })  
}

function deleteVideo(e){
	var string =  $(e).attr('id');
	var no = string.replace(/[^0-9]/g, '');
console.log("deleteVideo no"+no);


 	const videoNo = document.getElementById('videoNo'+no).value;
 	const folder = document.getElementById('folderName'+no).value;
	 
	$.ajax({
         url : 'openMinihome/deleteVideo',
         method : 'POST',
         data : 'videoNo=' + videoNo + '&folder=' + folder,
         type : "POST",

         success : function(data) {
       		 $('#videoForm'+no).remove();
			
		alert("삭제되었습니다.");	 
		},
         error : function() {
            alert("request error!");
         }
      })  
}
function updateVideo(){
	
	/* var string =  $(e).attr('id');
	var no = string.replace(/[^0-9]/g, ''); */
	
	 const videoNo = document.getElementById('videoNo0').value;
	 const folder = document.getElementById('folderName0').value;
	 const videoTitle = document.getElementById('videoTitle').value;
	 const videoContent = document.getElementById('videoContent0').value;
	 
   $.ajax({
     url : 'openMinihome/updateVideo',
     method : 'POST',
     data : 'videoNo=' + videoNo + '&folder=' + folder + '&title=' + videoTitle+'&videoContent='+videoContent+'&filename=flower.webm',
     type : "POST",

     success : function(data) {
			
			
		 $(".videoForm").remove();
		
		$(data).each(
				function(index) {
					console.log(index)
					 $(".reload").append("<div id='videoForm"+index+"' class='videoForm'></div>");
					 $("#videoForm"+index ).append("<div id='videoTitle"+index+"' class='videoTitle'></div>");
					 $("#videoTitle"+index).append("<input type='hidden' id='videoNo"+index+"' value='"+this.videoNo+"' name='videoNo'>");
	                    $("#videoTitle"+index).append("<p>title"+this.title+"</p>");
	                  
	                    $("#videoForm"+index).append("<div id='video"+index+"' class='video'></div>");
	                    $("#video"+index).append("<video id='videoSource"+index+"' controls width='250'>");
	            		$("#videoSource"+index).append("<div class='dd'>"+this.filename+"</div>");
	            			$("#videoSource"+index).append("<source src='/resources/video/"+this.filename+"' type='video/webm'>");

						   									 
	            			$("#videoSource"+index).append("<source src='/resources/video/"+this.filename+"' type='video/mp4'>");
	                $("#videoForm"+index).append("<div id='videoContent"+index+"' class='content'></div>");
	                    $("#videoContent"+index).append("<p>"+this.videoContent+"</p>");
	                $("#videoForm"+index).append("<div id='videoFooter"+index+"' class='videoFooter'></div>");
	                    $("#videoFooter"+index).append("<button id='videoButton"+index+"' class='videoUpdateButton' onclick='updateVideoList(this)'>수정</button>");
	                    $("#videoFooter"+index).append("<button id='videoButton"+index+"' class='videoMoveButton'>이동</button>");
	                    $("#videoFooter"+index).append("<a href='openMinihome/videoDelete?videoNo="+this.videoNo+"' role='button' class='videoDeleteButton'>삭제</button>");
	                $("#videoForm"+index).append("<div id='videoComment"+index+"' class='comment'></div>");
	                    $("#videoComment"+index).append("<div id='videoCommentForm"+index+"' class='commentForm'></div>");
	                        $("#videoCommentForm"+index).append("<span>댓글</span>");
	                        $("#videoCommentForm"+index).append("<input type='text' id='videoCommentInput"+index+"' placeholder='댓글을 작성해주세요'>");
	                        $("#videoCommentForm"+index).append("<input type='button' id='videoCommentSubmit"+index+"' class='commentSubmit' value='확인'></div>");
	                    $("#videoComment"+index).append("<div id='videoCommentList"+index+"' class='commentList'></div>");
	                        $("#videoCommentList"+index).append("<ul id='videoCommentListUl"+index+"'></ul>");
	                        
	                        
	                        $.ajax({
	    						url : 'openMinihome/videoReplyList',
	    						method : 'POST',
	    						data : 'videoNo=' + this.videoNo ,
	    						type : "POST",

	    						success : function(data) {
	    							
	    							$(data).each( 
	    								function(index1) {
										console.log(index);
										console.log(this.replyNo+" " + this.replyContent +" " + this.videoNo);
				                        $("#videoCommentListUl"+index).append("<li id='videoCommentListLi"+index1+"'>"+this.replyContent+"</li>"); //댓글 한 개
				                        	$("#videoCommentListLi"+index1).append("<a href='#'>"+this.name+"</a>");
		                        
	                     			   }
	                        		)
	    						}
	                        });
					console.log(this.videoNo + " "
							+ this.videoContent + " "
							+ this.uploadDate + " "
							+ this.filename);
				});
		alert("수정되었습니다.");	 
	},
     error : function() {
        alert("request error!");
     }
  })  
}


$(function() {
	$(".video_content").hide();
	$(".videoFolders li:first").addClass("active").show();
	$(".videoFolders:first img").attr('src', '../resources/img/open.png');
	$(".video_content:first").show();
	$(".videoForm_hide").hide();

	$(".videoFolders li").click(
			function() {

				$(".video_content").css('display', 'none');
				var href = $(this).find("a").attr("href");
				$(href).css('display', 'block');

				$(".videoFolders img").attr('src', '../resources/img/close.png');
				$(this).children("img").attr('src', '../resources/img/open.png');

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

									 $("#videoTitle"+index).append("<input type='hidden' id='videoNo"+index+"' value='"+this.videoNo+"' name='videoNo'>");
			                         $("#videoTitle"+index).append("<input type='hidden' id='folderName"+index+"' value='"+this.folder+"' name='videoName'>");
					                   
					            		$("#videoTitle"+index).append("<p>title"+this.title+"</p>");
					            	$("#videoForm"+index).append("<div id='video"+index+"' class='video'></div>");
					            		$("#video"+index).append("<video id='videoSource"+index+"' controls width='250'>");
					            		$("#videoSource"+index).append("<div class='dd'>"+this.filename+"</div>");
					            			$("#videoSource"+index).append("<source src='/resources/video/"+this.filename+"' type='video/webm'>");

										   									 
					            			$("#videoSource"+index).append("<source src='/resources/video/"+this.filename+"' type='video/mp4'>");
					            	$("#videoForm"+index).append("<div id='videoContent"+index+"' class='content'></div>");
					            		$("#videoContent"+index).append("<p>"+this.videoContent+"</p>");
					            	$("#videoForm"+index).append("<div id='videoFooter"+index+"' class='videoFooter'></div>");
					            		$("#videoFooter"+index).append("<button id='videoButton"+index+"' class='videoUpdateButton' onclick='updateVideoList(this)'>수정</button>");
					            		$("#videoFooter"+index).append("<button id='videoButton"+index+"' class='videoScrapButton'>이동</button>");
					            		$("#photoFooter"+index).append("<button id='videoButton"+index+"' class='videoDeleteButton' onclick='deleteVideo(this)'>삭제</button>");
					            		
					            	$("#videoForm"+index).append("<div id='videoComment"+index+"' class='comment'></div>");
					            		$("#videoComment"+index).append("<div id='videoCommentForm"+index+"' class='commentForm'></div>");
					            			$("#videoCommentForm"+index).append("<span>댓글</span>");
					            			$("#videoCommentForm"+index).append("<input type='text' id='videoCommentInput"+index+"' placeholder='댓글을 작성해주세요'>");
					            			$("#videoCommentForm"+index).append("<input type='button' id='videoCommentSubmit"+index+"' class='commentSubmit' value='확인'></div>");
					            		$("#videoComment"+index).append("<div id='videoCommentList"+index+"' class='commentList'></div>");
					            			$("#videoCommentList"+index).append("<ul id='videoCommentListUl"+index+"'></ul>");
					                        
					            			 $.ajax({
						    						url : 'openMinihome/videoReplyList',
						    						method : 'POST',
						    						data : 'videoNo=' + this.videoNo ,
						    						type : "POST",

						    						success : function(data) {
						    							
						    							$(data).each( 
						    								function(index1) {
															console.log(index);
															console.log(this.replyNo+" " + this.replyContent +" " + this.videoNo);
									                        $("#videoCommentListUl"+index).append("<li id='videoCommentListLi"+index1+"'>"+this.replyContent+"</li>"); //댓글 한 개
									                        	$("#videoCommentListLi"+index1).append("<a href='#'>"+this.name+"</a>");
							                        
						                     			   }
						                        		)
						    						}
						                        });
					            
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
				<li><img src="/resources/img/close.png"><a href="#videoFolder${status.index+1}"><span>${videoFolderList.folder}</span></a></li>
			</ul>
		</c:forEach>
	</div>
</div>

<div class="right">
	<div class="rightContent">
		<c:forEach items="${videoFolderList}" var="videoFolderList"
			varStatus="status">
			<div id="#videoFolder${status.index+1}" class="video_content">
				<input type="text" value="${videoFolderList.folder }" name="kind" id="kind" readonly>
				<!-- <input type="button"
					onclick="window.open('uploadPhoto','ap','width=600,height=800')"
					value="비디오 추가하기"> -->
					<input type="button" name="addVideo" onclick="addVideoForm()" value="비디오추가하기">
			</div>
		</c:forEach>
		
		<input type="hidden" value="memberno"><!--멤버넘버 히든으로 가져오기  -->
		<div id="dv" class="reload">
			<c:forEach items="${firstVideoList}" var="videoVO">
				<input type="hidden" value="${videoVO.videoNo }" name="videoNo" id="videoNo">
				<div class="videoForm">
					<div class="videoTitle">
						<%-- <input type="text" name="videoTitleInput" id="videoTitleInput" value="${videoVO.title}" readonly> --%>
						<p>${videoVO.title}</p>
					</div>
					<div class="video">
						<!-- <video autoplay controls width="250" style="border: 1px rgb(93, 94, 93) solid;">
							<source src="/resources/video/video.mp4" type="video/mp4">
							<source src="ds2.ogv" type="video/ogv">
							<source src="ds2.webm" type="video/webm">
						</video> -->
						<video controls width="250">

						    <source src="/resources/video/flower.webm" type="video/webm">
						
						    <source src="/resources/video/flower.mp4" type="video/mp4">
						
						</video>
					</div>
					<div class="content">
						<p>${videoVO.videoContent}</p>
					</div>
					<div class="videoFooter">
						<button class="videoUpdateButton" onclick="">수정</button>
						<button class="videoScrapButton" onclick="">이동</button>
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
