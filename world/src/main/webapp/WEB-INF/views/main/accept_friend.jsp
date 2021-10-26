<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>일촌 신청 페이지</title>

        <link rel="stylesheet" href="/css/accept_friend.css "  >
	
		<script>
			function reject() {
					document.frmm.action = "rejectFriend";
					document.frmm.submit(); 
				}

		</script>
	
    </head>
    
    <body>
        <div class="accept_friend_main">
        
        <form name="frmm" method="post" action="acceptFriend">
        	<input type="hidden" name="friendFrom" value="${acceptFriend.friendFrom }">
        	<input type="hidden" name="friendTo" value="${acceptFriend.friendTo }">
        	<input type="hidden" name="nicknameFrom" value="${acceptFriend.nicknameFrom }">
        	<input type="hidden" name="nicknameTo" value="${acceptFriend.nicknameTo }">
        	<input type="hidden" name="message" value="${acceptFriend.message }">
            
            <div class="accept_friend_main_content">
                <div class="accept_friend_main_content_1">
                    <div class="accept_friend_main_content_1_1">
                        <span>일촌</span> 신청
                    </div>
                    <div class="accept_friend_main_content_1_2">
                        <img src="/img/friend.png" alt="이미지">
                    </div>
                </div>
                <hr>
                <div class="accept_friend_main_content_2">
                    <p>보낸이 : <a href="#">${friendName.message}</a></p>
                </div>
                <div class="accept_friend_main_content_3">
                    <div class="accept_friend_main_content_3_1">
                        <img src="/img/minimi/minimi14.gif" alt="미니미">
                    </div>
                    <div class="accept_friend_main_content_3_2">
                        <a href="#">${friendName.message}</a>님께서 <a href="#">${myName}</a>님과 <br><b>일촌맺기</b>를 희망합니다.
                    </div>
                </div>
                <div class="accept_friend_main_content_4">
                    <textarea name="content" rows="6px" cols="50px" readonly>${acceptFriend.message }</textarea><br>
                    
                </div>
                
                <div class="accept_friend_main_content_5">
                    <p><span>아래 일촌명으로 신청하셨습니다.</span><br>
                        <a href="#">${friendName.message}</a>(${acceptFriend.nicknameFrom }) - <a href="#">${myName}</a>(${acceptFriend.nicknameTo })</p>
                    <hr><br>
                    <p><span>일촌을 맺으시겠습니까?</span></p><br><br>
                </div>
               
                <div class="accept_friend_main_content_6">
                    <input type="submit" name="yes" value="예">
                    <input type="button" onClick="window.close()" name="later" value="나중에">
                    <input type="button" onclick="reject()" name="no" value="아니오">
                </div>               
             </div>
             
             </form>
             
        </div>
        
      
    </body>
</html>