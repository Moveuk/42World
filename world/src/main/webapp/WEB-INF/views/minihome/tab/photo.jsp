<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">


/*function addPhoto(){
       $(".photoForm").remove();
      $(".photoFolders img").attr('src', '../resources/img/close.png');
      $(".reload").append("<div id='addPhotoForm' class='addPhotoForm'></div>");
         $("#addPhotoForm").append("<div id='photo' class='photo'></div>");
          $("#photo").append("<input type='file' name='uploadfile' placeholder='파일선택' onchange='setImage(event)'"/>);  
       
      location.href='addPhoto.jsp';
   }*/
   function addPhotoForm(){
       $(".photoForm").remove();
       
       $(".reload").append("<div id='photoForm' class='photoForm'></div>");
       $("#photoForm").append("<div id='photoTitle' class='photoTitle'></div>");
            $("#photoTitle" ).append("<input type='text' value='title' name='title'>");
          
        $("#photoForm" ).append("<div id='photoImg' class='img'></div>");
            $("#photoImg" ).append("<input type='file' name='uploadfile' placeholder='파일선택' onchange='setImage(event)'/>");
        $("#photoForm" ).append("<div id='photoContent' class='content'></div>");
            $("#photoContent" ).append("<textarea rows='17' cols='65' name='content'></textarea>");
        $("#photoForm" ).append("<div id='photoFooter' class='photoFooter'></div>");
            $("#photoFooter" ).append("<button id='photoButton' class='photoUpdateButton' onclick='addPhoto()'>등록</button>");
            /* $("#photoFooter" ).append("<a href='openMinihome/photoDelete?photoNo="+this.photoNo+"' role='button' class='photoDeleteButton'>삭제</button>"); */

   }
   function updatePhotoList(e){
      
         var string =  $(e).attr('id');
         var no = string.replace(/[^0-9]/g, '');
         
          const photoNo = document.getElementById('photoNo'+no).value;
         console.log(photoNo);
          
          $.ajax({
            url : 'openMinihome/updatePhotoList',
            method : 'POST',
            data : 'photoNo=' + photoNo ,
            type : "POST",

            success : function(data) {
             $(".photoForm").remove(); 

               
               $(data).each(
                     function(index) {
                        console.log(index)
                         $(".reload").append("<div id='photoForm"+index+"' class='photoForm'></div>");
                         $("#photoForm"+index ).append("<div id='photoTitle"+index+"' class='photoTitle'></div>");
                            $("#photoTitle"+index).append("<input type='hidden' id='photoNo"+index+"' value='"+this.photoNo+"' name='photoNo'>");
                            $("#photoTitle"+index).append("<input type='hidden' id='folderName"+index+"' value='"+this.folder+"' name='photoName'>");
                                $("#photoTitle"+index).append("<input id='photoTitle' type='text' value='"+this.title+"'>");
                            $("#photoForm"+index).append("<div id='photoImg"+index+"' class='img'></div>");
                                $("#photoImg"+index).append("<img src='../resources/photo/"+this.filename+"'>");
                            $("#photoForm"+index).append("<div id='photoContent"+index+"' class='content'></div>");
                                $("#photoContent"+index).append("<p>content"+this.photoContent+"</p>");
                            $("#photoForm"+index).append("<div id='photoFooter"+index+"' class='photoFooter'></div>");
                                $("#photoFooter"+index).append("<button id='photoButton"+index+"' class='photoButton' onclick='updatePhoto()'>수정</button>");
                               
                     });
            },
            error : function() {
               alert("request error!");
            }
         })  
   }
   function folder(){
      
   }
   
   function deletePhoto(e){
      var string =  $(e).attr('id');
      var no = string.replace(/[^0-9]/g, '');
   console.log("deletePhoto no"+no);
   
   
       const photoNo = document.getElementById('photoNo'+no).value;
       const folder = document.getElementById('folderName'+no).value;
       
      $.ajax({
            url : 'openMinihome/deletePhoto',
            method : 'POST',
            data : 'photoNo=' + photoNo + '&folder=' + folder,
            type : "POST",

            success : function(data) {
                  $('#photoForm'+no).remove();
            
         alert("삭제되었습니다.");    
         },
            error : function() {
               alert("request error!");
            }
         })  
   }
   function updatePhoto(){
      
      /* var string =  $(e).attr('id');
      var no = string.replace(/[^0-9]/g, ''); */
      
       const photoNo = document.getElementById('photoNo0').value;
       const folder = document.getElementById('folderName0').value;
       const photoTitle = document.getElementById('photoTitle').value;
       const photoContent = document.getElementById('photoContent0').value;
       
       $.ajax({
         url : 'openMinihome/updatePhoto',
         method : 'POST',
         data : 'photoNo=' + photoNo + '&folder=' + folder + '&title=' + photoTitle+'&photoContent='+photoContent+'&filename=3.jpg',
         type : "POST",

         success : function(data) {
            
            
          $(".photoForm").remove();
         
         $(data).each(
               function(index) {
                  console.log(index)
                   $(".reload").append("<div id='photoForm"+index+"' class='photoForm'></div>");
                   $("#photoForm"+index ).append("<div id='photoTitle"+index+"' class='photoTitle'></div>");
                   $("#photoTitle"+index).append("<input type='hidden' id='photoNo"+index+"' value='"+this.photoNo+"' name='photoNo'>");
                          $("#photoTitle"+index).append("<p>title"+this.title+"</p>");
                        
                      $("#photoForm"+index).append("<div id='photoImg"+index+"' class='img'></div>");
                          $("#photoImg"+index).append("<img src='../resources/photo/"+this.filename+"'>");
                      $("#photoForm"+index).append("<div id='photoContent"+index+"' class='content'></div>");
                          $("#photoContent"+index).append("<p>content"+this.photoContent+"</p>");
                      $("#photoForm"+index).append("<div id='photoFooter"+index+"' class='photoFooter'></div>");
                          $("#photoFooter"+index).append("<button id='photoButton"+index+"' class='photoUpdateButton' onclick='updatePhotoList(this)'>수정</button>");
                          $("#photoFooter"+index).append("<button id='photoButton"+index+"' class='photoMoveButton'>이동</button>");
                          $("#photoFooter"+index).append("<a href='openMinihome/photoDelete?photoNo="+this.photoNo+"' role='button' class='photoDeleteButton'>삭제</button>");
                      $("#photoForm"+index).append("<div id='photoComment"+index+"' class='comment'></div>");
                          $("#photoComment"+index).append("<div id='photoCommentForm"+index+"' class='commentForm'></div>");
                              $("#photoCommentForm"+index).append("<span>댓글</span>");
                              $("#photoCommentForm"+index).append("<input type='text' id='photoCommentInput"+index+"' placeholder='댓글을 작성해주세요'>");
                              $("#photoCommentForm"+index).append("<input type='button' id='photoCommentSubmit"+index+"' class='commentSubmit' value='확인'></div>");
                          $("#photoComment"+index).append("<div id='photoCommentList"+index+"' class='commentList'></div>");
                              $("#photoCommentList"+index).append("<ul id='photoCommentListUl"+index+"'></ul>");
                              
                              
                              $.ajax({
                            url : 'openMinihome/replyList',
                            method : 'POST',
                            data : 'photoNo=' + this.photoNo ,
                            type : "POST",

                            success : function(data) {
                               
                               $(data).each( 
                                  function(index1) {
                                 console.log(index);
                                 console.log(this.replyNo+" " + this.replyContent +" " + this.photoNo);
                                       $("#photoCommentListUl"+index).append("<li id='photoCommentListLi"+index1+"'>"+this.replyContent+"</li>"); //댓글 한 개
                                          $("#photoCommentListLi"+index1).append("<a href='#'>"+this.name+"</a>");
                                 
                                       }
                                    )
                            }
                              });
                  console.log(this.photoNo + " "
                        + this.photoContent + " "
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
      $(".photo_content").hide();
      $(".photoFolders li:first").addClass("active").show();
      $(".photoFolders:first img").attr('src', ${pageContext.request.contextPath}'/resources/img/open.png');
      $(".photo_content:first").show();
      $(".photoForm_hide").hide();

      $(".photoFolders li").click(
            function() {

               // $(".photo_content").hide();

               $(".photo_content").css('display', 'none');
               var href = $(this).find("a").attr("href");
               $(href).css('display', 'block');
               
               $(".photoFolders img").attr('src', '../resources/img/close.png');
               $(this).children("img").attr('src', '../resources/img/open.png');

               var string = href
               var no = string.replace(/[^0-9]/g, '');
               $(".photo_content").eq(no - 1).css('display', 'block');

               var folderName = $(this).children("a").text();
               console.log("==" + folderName);
               //$(".photo_content input[name=kind]").attr('value', this.folder);
               

               $.ajax({
                  url : 'openMinihome/photoList',
                  method : 'POST',
                  data : 'folder=' + folderName,
                  type : "POST",

                  success : function(data) {
                     
                     
                      $(".photoForm").remove();
                     
                     $(data).each(
                           function(index) {
                              console.log(index)
                               $(".reload").append("<div id='photoForm"+index+"' class='photoForm'></div>");
                               $("#photoForm"+index ).append("<div id='photoTitle"+index+"' class='photoTitle'></div>");
                               $("#photoTitle"+index).append("<input type='hidden' id='photoNo"+index+"' value='"+this.photoNo+"' name='photoNo'>");
                                     $("#photoTitle"+index).append("<input type='hidden' id='folderName"+index+"' value='"+this.folder+"' name='photoName'>");
                                      $("#photoTitle"+index).append("<p>"+this.title+"</p>");
                                    
                                  $("#photoForm"+index).append("<div id='photoImg"+index+"' class='img'></div>");
                                      $("#photoImg"+index).append("<img src='../resources/photo/"+this.filename+"'>");
                                  $("#photoForm"+index).append("<div id='photoContent"+index+"' class='content'></div>");
                                      $("#photoContent"+index).append("<p>content"+this.photoContent+"</p>");
                                  $("#photoForm"+index).append("<div id='photoFooter"+index+"' class='photoFooter'></div>");
                                      $("#photoFooter"+index).append("<button id='photoButton"+index+"' class='photoUpdateButton' onclick='updatePhotoList(this)'>수정</button>");
                                      $("#photoFooter"+index).append("<button id='photoButton"+index+"' class='photoMoveButton'>이동</button>");
                                      $("#photoFooter"+index).append("<button id='photoButton"+index+"' class='photoDeleteButton' onclick='deletePhoto(this)'>삭제</button>");
                                      /* $("#photoFooter"+index).append("<a href='openMinihome/photoDelete?photoNo="+this.photoNo+"' role='button' class='photoDeleteButton'>삭제</button>"); */
                                  $("#photoForm"+index).append("<div id='photoComment"+index+"' class='comment'></div>");
                                      $("#photoComment"+index).append("<div id='photoCommentForm"+index+"' class='commentForm'></div>");
                                          $("#photoCommentForm"+index).append("<span>댓글</span>");
                                          $("#photoCommentForm"+index).append("<input type='text' id='photoCommentInput"+index+"' placeholder='댓글을 작성해주세요'>");
                                          $("#photoCommentForm"+index).append("<input type='button' id='photoCommentSubmit"+index+"' class='commentSubmit' value='확인'></div>");
                                      $("#photoComment"+index).append("<div id='photoCommentList"+index+"' class='commentList'></div>");
                                          $("#photoCommentList"+index).append("<ul id='photoCommentListUl"+index+"'></ul>");
                                          
                                          
                                          $.ajax({
                                        url : 'openMinihome/replyList',
                                        method : 'POST',
                                        data : 'photoNo=' + this.photoNo ,
                                        type : "POST",

                                        success : function(data) {
                                           
                                           $(data).each( 
                                              function(index1) {
                                             console.log(index);
                                             console.log(this.replyNo+" " + this.replyContent +" " + this.photoNo);
                                                   $("#photoCommentListUl"+index).append("<li id='photoCommentListLi"+index1+"'>"+this.replyContent+"</li>"); //댓글 한 개
                                                      $("#photoCommentListLi"+index1).append("<a href='#'>"+this.name+"</a>");
                                             
                                                   }
                                                )
                                        }
                                          });
                              console.log(this.photoNo + " "
                                    + this.photoContent + " "
                                    + this.uploadDate + " "
                                    + this.filename);
                           });
                  },
                  error : function() {
                     alert("request error!");
                  }
               })
               return false;
            });
   })
   function send() {
      $(".photo_content").eq(no).css('display', 'block');
   }
   function form_submit() {
      open.window('../minihome/addPhoto.html', 'ap', 'width=600,height=800');
   }
   function rem() {
      $(".photoForm").remove();
   }   
   
</script>
<div class="left">
   <div class="leftContent">
      <p class="photoTitle">Photo</p>

      <c:forEach items="${photoFolderList}" var="photoFolderList"
         varStatus="status">
         <ul class="photoFolders">
            <li><img src="/resources/img/close.png"> <a href="#photoFolder${status.index+1}"><span>${photoFolderList.folder}</span></a></li>
         </ul>
      </c:forEach>
   </div>
    <input type="button" value="폴더추가" name="addFolder" onclick="folder()">
</div>

<div class="right">
   <div class="rightContent">
      <c:forEach items="${photoFolderList}" var="photoFolderList"
         varStatus="status">
         <div id="#photoFolder${status.index+1}" class="photo_content">
            <input type="text" value="${photoFolderList.folder }" name="kind" id="kind" readonly>
            <!-- <input type="button" name="addPhoto" onclick="window.open('uploadPhoto','ap','width=600,height=800')" value="사진추가하기"> -->
            <input type="button" name="addPhoto" onclick="addPhotoForm()" value="사진추가하기">
         </div>
      </c:forEach>
      <input type="hidden" value="memberno"><!--멤버넘버 히든으로 가져오기  -->
      <div id="dv" class="reload">
      
         <c:forEach items="${photoList}" var="photoVO">
            <input type="hidden" value="${photoVO.photoNo }" name="photoNo" id="photoNo">
            <div class="photoForm">
               <div class="photoTitle">
                  <p>${photoVO.title}</p>
               </div>
               <div class="img">
                  <img src="../resources/photo/${photoVO.filename}">
               </div>
               <div class="content">
                  <p>내용</p>
               </div>
               <div class="photoFooter">
                  <button class="photoUpdateButton" onclick="">수정</button>
                  <button class="photoScrapButton" onclick="">이동</button>
                  <!-- <button class="photoDeleteButton" onclick="photoDeleteButton()">삭제</button> -->
                  <a href="openMinihome/photoDelete?photoNo=${photoVO.photoNo}" role="button" class="photoDeleteButton">삭제</a>
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