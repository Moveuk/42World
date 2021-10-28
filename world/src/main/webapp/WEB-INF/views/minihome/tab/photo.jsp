<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
	$(function() {
		$(".photo_content").hide();
		$(".photoFolders li:first").addClass("active").show();
		$(".photoFolders:first img").attr('src', '../resources/img/open.png');
		$(".photo_content:first").show();

		$(".photoFolders li").click(function() {

			// $(".photo_content").hide();

			$(".photo_content").css('display', 'none');
			var href = $(this).find("a").attr("href");
			$(href).css('display', 'block');

			//   $(".photoFolders li").removeClass("active");
			$(".photoFolders img").attr('src', '../resources/img/close.png');
			$(this).children("img").attr('src', '../resources/img/open.png');
			// 

			var string = href
			var no = string.replace(/[^0-9]/g, '');
			$(".photo_content").eq(no - 1).css('display', 'block');

			//var folderName = $(this).children("a").text();
			//console.log("==" + folderName);
			var folderName = $(this).children("a").text();
			console.log("==" +folderName);

			$.ajax({
				url : 'openMinihome/photoList',
				method : 'POST',
				data : "value="+folderName,
				success : function(data) {
					//$(".photo_content").eq(no - 1).
					//$(".right").html(data);
					
					//location.href="photo";
					//$('.photo_content').load(location.href+".photo_content>*","");

					//$('.photo_content').load(document.URL + ' .photo_content');
					//$('.photo_content').load(window.location + ' .photo_content');
					
					//const json = '{"result":true, "count":42}';
					//const json = '{"fileName":"jpg","date":42}'
					//const obj = JSON.parse(json);
					console.log("넘어옵니다");
					console.log(data.length);
					for(var i=0;i<data.length;i++){
						console.log(data.title);
					}
					
					
					console.log("--" + data);
					console.log(JSON.parse(data));
					obj = JSON.parse(data);
					$('.reload').load(location.href + ' .reload');
					
					console.log(window.location);
					console.log(obj.folder);
					$(".photo_content input[name=kind]").attr('value', obj.folder);
					
					
				},error:function(){
					console.log("ajax 통신 실패");
				}
				,complete:function(){// complete : ajax 통신 성공여부와 상관없이 무조건 실행할 함수 정의
					console.log("ajax 통신 성공여부와 상관없이 무조건 실행");
				}
			})

			//	 $(activeTab).fadeIn();
			return false;
		});
	})
	function send() {
		$(".photo_content").eq(no).css('display', 'block');
	}
	function form_submit() {
		open.window('../minihome/addPhoto.html', 'ap', 'width=600,height=800');
	}
	/* $(function () {
	    $(".photoFolders li a").click(function () {
	        var folder = $(this).children('span').html();
	        $(".photo_content input[name=kind]").attr('value', folder);
	    })
	}) */
	/* function folder(){
		var po = JSON.parse(${photoList});
	}
	function send() {
		$(".photo_content").eq(no).css('display', 'block');
	} */
</script>
<div class="left">
	<div class="leftContent">
		<p class="photoTitle">Photo</p>

		<c:forEach items="${photoFolderList}" var="photoFolderList"
			varStatus="status">
			<ul class="photoFolders">
				<li><img src="/resources/img/close.png"> <a
					href="#photoFolder${status.index+1}"><span>${photoFolderList.folder}</span></a></li>
			</ul>
		</c:forEach>
	</div>

	<input type="button" value="button" onclick="send()"> <input
		type="button" value="폴더추가" name="addFolder" onclick="folder()">

</div>

<div class="right">
	<div class="rightContent">

		<c:forEach items="${photoFolderList}" var="photoFolderList"
			varStatus="status">
			<div id="#photoFolder${status.index+1}" class="photo_content">
				<input type="text" value="기본 사진첩" name="kind" id="kind" readonly>
				<input type="button"
					onclick="window.open('uploadPhoto','ap','width=600,height=800')"
					value="사진추가하기">
<div class="reload">
				<c:forEach items="${photoList}" var="photoVO">
					<div class="photoForm">
						<div class="photoTitle">
							<input type="text" name="photoTitleInput" id="photoTitleInput"
								value="${photoVO.title}" readonly>
						</div>
						<div class="img">
							<img src="../resources/photo/${photoVO.filename}">
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
								<span>댓글</span> <input type="text" name="commentInput"
									placeholder="댓글을 작성해주세요" id="commentInput" name="commentInput">
								<input type="button" onclick="comentSubmit()"
									name="commentSubmit" id="commentSubmit" value="확인">
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
		</c:forEach>

		<!--  <div id="photoFolder2" class="photo_content">
			<input type="text" value="" name="kind" id="kind">
				<input type="button" value="사진추가d" name="addBoard" onclick="writingBoard()">
					
			<div class="photoForm">
				<div class="photoTitle">
					<input type="text" name="photoTitleInput" id="photoTitleInput" value="dd" readonly>
				</div>
				<div class="img">
					<img src="../resources/photo/1.jpg">
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
		</div> -->
		<!--<div id="photoFolder3" class="photo_content">
			<input type="text" value="" name="kind" id="kind">
			<div class="photoForm">
				<img src="/resources/img/friend.png">
			</div>
		</div> -->
	</div>
</div>
