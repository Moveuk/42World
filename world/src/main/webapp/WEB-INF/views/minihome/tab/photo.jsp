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
			var folderName = $(this).find("span").text();
			console.log(folderName);
			//   $(".photoFolders li").removeClass("active");
			$(".photoFolders img").attr('src', '../resources/img/close.png');
			$(this).children("img").attr('src', '../resources/img/open.png');
			// 
			console.log("여기까지는 옵니다1");
			var string = href
			var no = string.replace(/[^0-9]/g, '');
			console.log("여기까지는 옵니다2");
			$(".photo_content").eq(no - 1).css('display', 'block');
			console.log("여기까지는 옵니다3");
			
			 $.ajax({

				url:'openMinihome/photoList'
				, method : 'POST'
			        , data: 'folder='+folderName
			        , success :function(resp){
					//$(".photo_content").eq(no - 1).
			        //	$(".right").html(resp);
					console.log(resp);
				}
				
				
			}) 
			
			return false;
		});
	})
	function form_submit() {
		open.window('../minihome/addPhoto.html', 'ap', 'width=600,height=800');
	}

<<<<<<< HEAD

        $(activeTab).fadeIn();

        return false;
    });
})
$(function () {
    $(".photoFolders li a").click(function () {
        var folder = $(this).children('span').html();
        $(".photo_content input[name=kind]").attr('value', folder);

    })
})

function folder(){
	var po = JSON.parse(${photoList});
	
	
	
	
}
		
=======
	function send() {
		$(".photo_content").eq(no).css('display', 'block');
	}
>>>>>>> develop
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

				<c:forEach items="${photoList}" var="photoVO">
						${status.index+1}
						<div class="photoForm">
						<div class="photoTitle">
							<input type="text" name="photoTitleInput" id="photoTitleInput"
								value="${photoVO.title}" readonly>
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
		</c:forEach>

		
	</div>
</div>
