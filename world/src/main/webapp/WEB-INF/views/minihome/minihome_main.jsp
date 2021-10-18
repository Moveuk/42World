<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/minihomepage.css">
    <link rel="stylesheet" type="text/css" href="../css/home.css">
    <link rel="stylesheet" type="text/css" href="../css/profile.css">
    <link rel="stylesheet" type="text/css" href="../css/photo.css">
    <link rel="stylesheet" type="text/css" href="../css/video.css">
    <link rel="stylesheet" type="text/css" href="../css/visitors.css">
    <link rel="stylesheet" type="text/css" href="../css/board.css">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="../js/jquery-ui.min.js"></script>
    <script src="../js/jquery.js"></script>
    <script src="../js/main.js"></script>
    
</head>

<body>
    <div class="back">
        <div class="blueBox">
            <div class="dot">

                <!-- 여기까지 화이트박스 -->
                <div id="tab1" class="tab_content">
                    <div class="whiteBox">
                        <div class="left">
                            <div class="count">
                                <input type="text" name="count_today" id="count_today" value="today | total" readonly>
                            </div>
                            <div class="leftHome">
                                <img src="../img/logo.jpg" name="mainImg" id="mainImg" alt="mainImg">
                                <textarea name="self" id="self" rows="5" cols="23"
                                    readonly>안녕하s세요. 반갑습니다. 42좋은 42월드입니다. 행복한 하루 되세요.</textarea>
                                <input type="button" name="leftEdit" id="leftEdit" value="EDIT" onclick="edit()">
                                <hr style="width:90%">
                                <input type="text" name="name" id="name" value="피효정" size="2" readonly>
                                <!-- <input type="text" name="gender" id="gender" value="여" size="1" readonly> -->
                                <img src="../img/woman.png" name="gender" id="gender" alt="genderImg">
                                <input type="text" name="birth" id="birth" value="0000-00-00" size="6" readonly>

                                <input type="button" name="chkFriendAccept" id="chkFriendAccept" value="일촌 신청 확인"
                                    onclick="chkFreind(); return false">


                                <input type="button" name="friendRandom" id="friendRandom" value="랜덤 미니홈피 가기">

                                <select id="friendWave" name="friendWave">
                                    <option value="none">일촌 파도타기</option>
                                    <option value="친구주소">친구이름</option>
                                    <option value="친구주소">친구이름</option>
                                    <option value="친구주소">친구이름</option>
                                    <option value="친구주소">친구이름</option>
                                    <option value="친구주소">친구이름</option>
                                </select>

                            </div>


                        </div>
                        <div class="right">
                            <div class="mainTitle">
                                <input type="text" name="mainTitle_content" id="mainTitle_content" value="메인타이틀입니다"
                                    readonly>
                            </div>

                            <div class="rightHome">
                                <div id="tab1">
                                    <p id="updateNews">UPDATE NEWS</p>
                                    <div class="tabHomeNew">
                                        <div class="left">
                                            <ul class="leftul">
                                                <li>
                                                    <input type="button" name="newlyButtonPhoto" id="newlyButtonPhoto"
                                                        value="사진첩">
                                                    <a href="#">최근게시물1</a>
                                                </li>
                                                <li>
                                                    <input type="button" name="newlyButtonVideo" id="newlyButtonVideo"
                                                        value="비디오">
                                                    <a href="#">최근게시물2</a>
                                                </li>
                                                <li>
                                                    <input type="button" name="newlyButtonboard" id="newlyButtonboard"
                                                        value="게시판">
                                                    <a href="#">최근게시물3</a>
                                                </li>
                                                <li>
                                                    <input type="button" name="newlyButtonPhoto" id="newlyButtonPhoto"
                                                        value="사진첩">
                                                    <a href="#">최근게시물4</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="right">

                                            <ul>
                                                <li><input type="button" name="rightNewlyButton" id="rightNewlyButton"
                                                        value="new">&nbsp;&nbsp;게시판</li>
                                                <li>1/5</li>
                                            </ul>
                                        </div>
                                        <div class="right">
                                            <ul>
                                                <li><input type="button" name="rightNewlyButton" id="rightNewlyButton"
                                                        value="new">&nbsp;&nbsp;방명록</li>
                                                <li>1/5</li>
                                            </ul>

                                        </div>
                                        <div class="right">
                                            <ul>
                                                <li>&nbsp;&nbsp;사진첩</li>
                                                <li>1/5</li>
                                            </ul>

                                        </div>
                                        <div class="right">
                                            <ul>
                                                <li><input type="button" name="rightNewlyButton" id="rightNewlyButton"
                                                        value="new">&nbsp;&nbsp;동영상</li>
                                                <li>1/5</li>
                                            </ul>

                                        </div>
                                    </div>
                                    <div class="tabHomeStoryRoom">
                                        <p>나의 미니미와 스토리룸을 소개합니다.</p>
                                        <div class="miniroomImg">
                                            <div class="miniroom">
                                                <img src="../img/miniroom.png" alt="miniroomBackImg"
                                                    id="miniroomBackImg" name="miniroomBackImg">
                                            </div>
                                            <div class="minimi">
                                                <img src="../img/minimi.png" alt="minimiImg" name="minimiImg"
                                                    id="minimiImg">
                                            </div>
                                        </div>


                                    </div>

                                    <div class="comment">
                                        <div class="commentTitle">
                                            <p>일촌평</p>
                                        </div>
                                        <div class="commentForm">
                                            <span>Friend Say</span>
                                            <input type="text" name="commentInput" placeholder="친구에게 일촌평을 작성해주세요"
                                                id="commentInput" name="commentInput">
                                            <input type="button" onclick="comentSubmit()" name="commentSubmit"
                                                id="commentSubmit" value="확인">
                                        </div>
                                        <div class="commentList">
                                            <ul>
                                                <li>효정아 안녕?<a href="#">&nbsp;&nbsp;홍길동</a></li>
                                                <li>아이스크림 먹으러 가자~<a href="#">&nbsp;&nbsp;짱구</a></li>
                                                <li>커피 마실래?<a href="#">&nbsp;&nbsp;둘리</a></li>
                                                <li>효정아 안녕?<a href="#">&nbsp;&nbsp;홍길동</a></li>
                                                <li>아이스크림 먹으러 가자~<a href="#">&nbsp;&nbsp;짱구</a></li>
                                                <li>커피 마실래?<a href="#">&nbsp;&nbsp;둘리</a></li>
                                                <li>효정아 안녕?<a href="#">&nbsp;&nbsp;홍길동</a></li>
                                                <li>아이스크림 먹으러 가자~<a href="#">&nbsp;&nbsp;짱구</a></li>
                                                <li>커피 마실래?<a href="#">&nbsp;&nbsp;둘리</a></li>
                                                <li>효정아 안녕?<a href="#">&nbsp;&nbsp;홍길동</a></li>
                                                <li>아이스크림 먹으러 가자~<a href="#">&nbsp;&nbsp;짱구</a></li>
                                                <li>커피 마실래?<a href="#">&nbsp;&nbsp;둘리</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>






                        </div>


                    </div>
                </div>
                <!--profile-->
                <div id="tab2" class="tab_content">
                    <div class="whiteBox">
                        <div class="left">
                            <div class="count">
                                <input type="text" name="count_today" id="count_today" value="today | total" readonly>
                            </div>
                            <div class="leftHome">
                                <p class="profileTitle">
                                    Profile
                                </p>
                                <ul class="profileFolders">

                                    <li><img src="../img/user.png"><a href="#profileFolder1">내 소개</a></li>
                                </ul>
                                <ul class="profileFolders">

                                    <li><img src="../img/audience.png"><a href="#profileFolder2">내 인맥</a></li>
                                </ul>
                                <ul class="profileFolders">

                                    <li><img src="../img/star.png"><a href="#profileFolder3">내 즐겨찾기</a></li>
                                </ul>
                            </div>


                        </div>
                        <div class="right">
                            <div class="mainTitle">
                                <input type="text" name="mainTitle_content" id="mainTitle_content" value="메인타이틀입니다"
                                    readonly>
                            </div>

                            <div class="rightHome">
                                <div id="profileFolder1" class="profile_content">

                                            profile1
                                </div>
                                <div id="profileFolder2" class="profile_content">

                                    profile2
                        </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--photo-->
                <div id="tab3" class="tab_content">
                    <div class="whiteBox">
                        <div class="left">
                            <div class="count">
                                <input type="text" name="count_today" id="count_today" value="today | total" readonly>
                            </div>
                            <div class="leftHome">
                                <p class="photoTitle">
                                    Photo
                                </p>
                                <ul class="photoFolders">

                                    <li><img src="../img/open.png"><a href="#photoFolder1">기본 사진첩</a></li>
                                </ul>
                                <ul class="photoFolders">

                                    <li><img src="../img/close.png"><a href="#photoFolder2">자유 사진첩</a></li>
                                </ul>
                                <ul class="photoFolders">

                                    <li><img src="../img/close.png"><a href="#photoFolder3">풍경 사진첩</a></li>
                                </ul>

                            </div>


                        </div>
                        <div class="right">
                            <div class="mainTitle">
                                <input type="text" name="mainTitle_content" id="mainTitle_content" value="메인타이틀입니다"
                                    readonly>
                            </div>
                            <div class="rightHome">
                                <div id="photoFolder1" class="photo_content">

                                    <div class="photoForm">
                                        <div class="photoTitle">
                                            <input type="text" name="photoTitleInput" id="photoTitleInput"
                                                value="사진타이틀입니다" readonly>
                                        </div>
                                        <div class="img">
                                            <img src="../img/dotoriimg1.png">
                                        </div>
                                        <div class="photoFooter">
                                            <a href="#">수정</a> |
                                            <a href="#">이동</a> |
                                            <a href="#">삭제</a>
                                        </div>
                                        <div class="comment">
                                            <div class="commentForm">
                                                <span>댓글</span>
                                                <input type="text" name="commentInput" placeholder="댓글을 작성해주세요"
                                                    id="commentInput" name="commentInput">
                                                <input type="button" onclick="comentSubmit()" name="commentSubmit"
                                                    id="commentSubmit" value="확인">
                                            </div>
                                            <div class="commentList">
                                                <ul>
                                                    <li>도도리 귀여워요~<a href="#">&nbsp;&nbsp;홍길동</a></li>
                                                    <li>퍼가요~♡<a href="#">&nbsp;&nbsp;뽀로로</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="photoForm">
                                        <div class="photoTitle">
                                            <input type="text" name="photoTitleInput" id="photoTitleInput"
                                                value="사진타이틀입니다" readonly>
                                        </div>
                                        <div class="img">
                                            <img src="../img/dotoriimg2.png">
                                        </div>
                                        <div class="photoFooter">
                                            <a href="#">수정</a> |
                                            <a href="#">이동</a> |
                                            <a href="#">삭제</a>
                                        </div>
                                        <div class="comment">
                                            <div class="commentForm">
                                                <span>댓글</span>
                                                <input type="text" name="commentInput" placeholder="댓글을 작성해주세요"
                                                    id="commentInput" name="commentInput">
                                                <input type="button" onclick="comentSubmit()" name="commentSubmit"
                                                    id="commentSubmit" value="확인">
                                            </div>
                                            <div class="commentList">
                                                <ul>
                                                    <li>도도리 귀여워요~<a href="#">&nbsp;&nbsp;홍길동</a></li>
                                                    <li>퍼가요~♡<a href="#">&nbsp;&nbsp;뽀로로</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="photoFolder2" class="photo_content">

                                    <div class="photoForm">
                                        <div class="photoTitle">
                                            <input type="text" name="photoTitleInput" id="photoTitleInput"
                                                value="사진타이틀입니다" readonly>
                                        </div>
                                        <div class="img">
                                            <img src="../img/dotoriimg2.png">
                                        </div>
                                        <div class="photoFooter">
                                            <a href="#">수정</a> |
                                            <a href="#">이동</a> |
                                            <a href="#">삭제</a>
                                        </div>
                                        <div class="comment">
                                            <div class="commentForm">
                                                <span>댓글</span>
                                                <input type="text" name="commentInput" placeholder="댓글을 작성해주세요"
                                                    id="commentInput" name="commentInput">
                                                <input type="button" onclick="comentSubmit()" name="commentSubmit"
                                                    id="commentSubmit" value="확인">
                                            </div>
                                            <div class="commentList">
                                                <ul>
                                                    <li>도도리 귀여워요~<a href="#">&nbsp;&nbsp;홍길동</a></li>
                                                    <li>퍼가요~♡<a href="#">&nbsp;&nbsp;뽀로로</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="photoFolder3" class="photo_content">
                                    <div class="photoForm">
                                        <img src="../img/friend.png">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- 4 -->
                <div id="tab4" class="tab_content">
                    <div class="whiteBox">
                        <div class="left">
                            <div class="count">
                                <input type="text" name="count_today" id="count_today" value="today | total" readonly>
                            </div>
                            <div class="leftHome">
                                <p class="videoTitle">
                                    Video
                                </p>
                                <ul class="videoFolders">

                                    <li><img src="../img/open.png"><a href="#videoFolder1">기본 비디오 폴더</a></li>
                                </ul>
                                <ul class="videoFolders">

                                    <li><img src="../img/close.png"><a href="#videoFolder2">자유 비디오 폴더</a></li>
                                </ul>
                                <ul class="videoFolders">

                                    <li><img src="../img/close.png"><a href="#videoFolder3">풍경 비디오 폴더</a></li>
                                </ul>

                            </div>


                        </div>
                        <div class="right">
                            <div class="mainTitle">
                                <input type="text" name="mainTitle_content" id="mainTitle_content" value="메인타이틀입니다"
                                    readonly>
                            </div>
                            <div class="rightHome">
                                <div id="videoFolder1" class="video_content">
                                    <div class="videoForm">
                                        <div class="videoTitle">
                                            <input type="text" name="videoTitleInput" id="videoTitleInput"
                                                value="video title" readonly>
                                        </div>
                                        <div class="video">
                                            <video autoplay controls width="250"
                                                style="border:1px rgb(93, 94, 93) solid;">
                                                <source src="../img/video.mp4" type="video/mp4">
                                                <source src="ds2.ogv" type="video/ogv">
                                                <source src="ds2.webm" type="video/webm">
                                            </video>
                                        </div>
                                        <div class="videoFooter">
                                            <a href="#">수정</a> |
                                            <a href="#">이동</a> |
                                            <a href="#">삭제</a>
                                        </div>
                                        <div class="comment">
                                            <div class="commentForm">
                                                <span>댓글</span>
                                                <input type="text" name="commentInput" placeholder="댓글을 작성해주세요"
                                                    id="commentInput" name="commentInput">
                                                <input type="button" onclick="comentSubmit()" name="commentSubmit"
                                                    id="commentSubmit" value="확인">
                                            </div>
                                            <div class="commentList">
                                                <ul>
                                                    <li>도도리 귀여워요~<a href="#">&nbsp;&nbsp;홍길동</a></li>
                                                    <li>퍼가요~♡<a href="#">&nbsp;&nbsp;뽀로로</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div id="videoFolder2" class="video_content">

                                    <div class="videoForm">
                                        <div class="videoTitle">
                                            <input type="text" name="videoTitleInput" id="videoTitleInput"
                                                value="사진타이틀입니다" readonly>
                                        </div>
                                        <div class="video">
                                            <video autoplay controls width="250"
                                                style="border:1px rgb(93, 94, 93) solid;">
                                                <source src="../img/video.mp4" type="video/mp4">
                                                <source src="ds2.ogv" type="video/ogv">
                                                <source src="ds2.webm" type="video/webm">
                                            </video>
                                        </div>
                                        <div class="videoFooter">
                                            <a href="#">수정</a> |
                                            <a href="#">이동</a> |
                                            <a href="#">삭제</a>
                                        </div>
                                        <div class="comment">
                                            <div class="commentForm">
                                                <span>댓글</span>
                                                <input type="text" name="commentInput" placeholder="댓글을 작성해주세요"
                                                    id="commentInput" name="commentInput">
                                                <input type="button" onclick="comentSubmit()" name="commentSubmit"
                                                    id="commentSubmit" value="확인">
                                            </div>
                                            <div class="commentList">
                                                <ul>
                                                    <li>도도리 귀여워요~<a href="#">&nbsp;&nbsp;홍길동</a></li>
                                                    <li>퍼가요~♡<a href="#">&nbsp;&nbsp;뽀로로</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="videoFolder3" class="video_content">

                                    <div class="videoForm">
                                        <div class="videoTitle">
                                            <input type="text" name="videoTitleInput" id="videoTitleInput"
                                                value="사진타이틀입니다" readonly>
                                        </div>
                                        <div class="video">
                                            <video autoplay controls width="250"
                                                style="border:1px rgb(93, 94, 93) solid;">
                                                <source src="../img/video.mp4" type="video/mp4">
                                                <source src="ds2.ogv" type="video/ogv">
                                                <source src="ds2.webm" type="video/webm">
                                            </video>
                                        </div>
                                        <div class="videoFooter">
                                            <a href="#">수정</a> |
                                            <a href="#">이동</a> |
                                            <a href="#">삭제</a>
                                        </div>
                                        <div class="comment">
                                            <div class="commentForm">
                                                <span>댓글</span>
                                                <input type="text" name="commentInput" placeholder="댓글을 작성해주세요"
                                                    id="commentInput" name="commentInput">
                                                <input type="button" onclick="comentSubmit()" name="commentSubmit"
                                                    id="commentSubmit" value="확인">
                                            </div>
                                            <div class="commentList">
                                                <ul>
                                                    <li>도도리 귀여워요~<a href="#">&nbsp;&nbsp;홍길동</a></li>
                                                    <li>퍼가요~♡<a href="#">&nbsp;&nbsp;뽀로로</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
                <!-- 5 -->
                <div id="tab5" class="tab_content">
                    <div class="whiteBox">
                        <div class="left">
                            <div class="count">
                                <input type="text" name="count_today" id="count_today" value="today | total" readonly>
                            </div>
                            <div class="leftHome">
                                <p class="boardTitle">
                                    Board
                                </p>
                                <ul class="boardFolders">

                                    <li><img src="../img/open.png"><a href="#boardFolder1"><span>기본게시판폴더</span></a></li>
                                </ul>
                                <ul class="boardFolders">

                                    <li><img src="../img/close.png"><a href="#boardFolder2"><span>커피</span></a></li>
                                </ul>
                                <ul class="boardFolders">

                                    <li><img src="../img/close.png"><a href="#boardFolder3"><span>시계</span></a></li>
                                </ul>

                            </div>


                        </div>
                        <div class="right">
                            <div class="mainTitle">
                                <input type="text" name="mainTitle_content" id="mainTitle_content" value="메인타이틀입니다"
                                    readonly>
                            </div>
                            <div class="rightHome">
                                <div class="top">
                                    <div id="boardFolder1" class="board_content">
                                        <input type="text" value="기본 게시판" name="kind" id="kind" readonly>
                                        <input type="button" value="글쓰기" name="addBoard" onclick="writingBoard()">
                                        <div class="middleTable">
                                            <table>
                                                <tr>
                                                    <th>제목</th>
                                                    <th>작성자</th>
                                                    <th>작성일</th>
                                                    <th>조회</th>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" name="">일기장</a></td>
                                                    <td>피효정</td>
                                                    <td>2021.10.13</td>
                                                    <td>0</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">가계부</a></td>
                                                    <td>피효정</td>
                                                    <td>2021.10.13</td>
                                                    <td>0</td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="middleTableAtag">
                                            <div class="AtagTop">
                                                <div class="AtagTitle">
                                                    <input type="text" value="" name="title" id="title">                                        

                                                </div>
                                                <div class="AtagButton">
                                                    <a href="#">수정</a> |
                                                    <a href="#">이동</a> |
                                                    <a href="#">삭제</a>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="information">
                                                    <input type="button" value="" name="name" id="name" onclick="goMinihome()">  
                                                    <div class="informationRight">
                                                        <input type="text" value="" name="date" id="date">   
                                                        <input type="text" value="조회수:" name="cnt" id="cnt">          
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="boardFolder2" class="board_content">
                                        <input type="text" value="" name="kind" id="kind">
                                        <input type="button" value="글쓰기" name="addBoard" onclick="addBoardForm()">
                                        <div class="middleTable">
                                            <table>
                                                <tr>
                                                    <th>제목</th>
                                                    <th>작성자</th>
                                                    <th>작성일</th>
                                                    <th>조회</th>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" name="">라떼</a></td>
                                                    <td>피효정</td>
                                                    <td>2021.10.13</td>
                                                    <td>0</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">아메리카노</a></td>
                                                    <td>피효정</td>
                                                    <td>2021.10.13</td>
                                                    <td>0</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">에스프레소</a></td>
                                                    <td>피효정</td>
                                                    <td>2021.10.13</td>
                                                    <td>0</td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="middleTableAtag">
                                            <div class="AtagTop">
                                                <div class="AtagTitle">
                                                    <input type="text" value="" name="title" id="title" readonly>                                        

                                                </div>
                                                <div class="AtagButton">
                                                    <a href="#">수정</a> |
                                                    <a href="#">이동</a> |
                                                    <a href="#">삭제</a>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="information">
                                                    <input type="button" value="" name="name" id="name" onclick="goMinihome()">  
                                                    <div class="informationRight">
                                                        <input type="text" value="" name="date" id="date">   
                                                        <input type="text" value="조회수:" name="cnt" id="cnt">          
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="boardFolder3" class="board_content">
                                        <input type="text" value="" name="kind" id="kind">
                                        <input type="button" value="글쓰기" name="addBoard" onclick="addBoardForm()">
                                        <div class="middleTable">
                                            <table>
                                                <tr>
                                                    <th>제목</th>
                                                    <th>작성자</th>
                                                    <th>작성일</th>
                                                    <th>조회</th>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" name="">스와치</a></td>
                                                    <td>피효정</td>
                                                    <td>2021.10.13</td>
                                                    <td>0</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">오메가</a></td>
                                                    <td>피효정</td>
                                                    <td>2021.10.13</td>
                                                    <td>0</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">애플워치</a></td>
                                                    <td>피효정</td>
                                                    <td>2021.10.13</td>
                                                    <td>0</td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="middleTableAtag">
                                            <div class="AtagTop">
                                                <div class="AtagTitle">
                                                    <input type="text" value="" name="title" id="title">                                        

                                                </div>
                                                <div class="AtagButton">
                                                    <a href="#">수정</a> |
                                                    <a href="#">이동</a> |
                                                    <a href="#">삭제</a>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="information">
                                                    <input type="button" value="" name="name" id="name" onclick="goMinihome()">  
                                                    <div class="informationRight">
                                                        <input type="text" value="" name="date" id="date">   
                                                        <input type="text" value="조회수:" name="cnt" id="cnt">          
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 6 -->
                <div id="tab6" class="tab_content">
                    <div class="whiteBox">
                        <div class="left">
                            <div class="count">
                                <input type="text" name="count_today" id="count_today" value="today | total" readonly>
                            </div>
                            <div class="leftHome">
                                <img src="../img/logo.jpg" name="mainImg" id="mainImg" alt="mainImg">
                                <textarea name="self" id="self" rows="5" cols="23"
                                    readonly>안녕하s세요. 반갑습니다. 42좋은 42월드입니다. 행복한 하루 되세요.</textarea>
                                <input type="button" name="leftEdit" id="leftEdit" value="EDIT" onclick="edit()">
                                <hr style="width:90%">
                                <input type="text" name="name" id="name" value="피효정" size="2" readonly>
                                <!-- <input type="text" name="gender" id="gender" value="여" size="1" readonly> -->
                                <img src="../img/woman.png" name="gender" id="gender" alt="genderImg">
                                <input type="text" name="birth" id="birth" value="0000-00-00" size="6" readonly>

                                <input type="button" name="chkFriendAccept" id="chkFriendAccept" value="일촌 신청 확인"
                                    onclick="chkFreind(); return false">


                                <input type="button" name="friendRandom" id="friendRandom" value="랜덤 미니홈피 가기">

                                <select id="friendWave" name="friendWave">
                                    <option value="none">일촌 파도타기</option>
                                    <option value="친구주소">친구이름</option>
                                    <option value="친구주소">친구이름</option>
                                    <option value="친구주소">친구이름</option>
                                    <option value="친구주소">친구이름</option>
                                    <option value="친구주소">친구이름</option>
                                </select>

                            </div>


                        </div>
                        <div class="right">
                            <div class="mainTitle">
                                <input type="text" name="mainTitle_content" id="mainTitle_content" value="메인타이틀입니다" readonly>
                            </div>
        
                            <div class="rightHome">
                                <div id="tab6">
                                    <!-- 내가 방명록 작성할 때 - 시작 -->
                <div class="visitor_wrap">
                    <div class="visitor_top">
                        <table>
                            <tr>
                                <td class="visitor_top_table_left">▶방명록알림기능 사용중</td>
                                <td class="visitor_top_table_right">
                                    <button class="visitor_top_btn1" onclick="">글꼴설정</button>
                                    <button class="visitor_top_btn2" onclick="">방명록관리</button>
                                </td>
                            </tr>
                        </table>
                        
                    </div>
                    <div class="visitor_content">
                        <div class="visitor_content_minimi">
                            <img src="../img/minimi2.png" alt="미니미">
                        </div>
                        <div class="visitor_content_text">
                            <textarea>내용 작성하는 공간</textarea>
                        </div>
                        <div class="visitor_content_bottom">
                            <table>
                                <tr>
                                    <td class="visitor_content_bottom_td_left">
                                        미니미 <a href="#">[설정]</a>
                                    </td>
                                    <td class="visitor_content_bottom_td_right">
                                        <input type="checkbox">텍스티콘?&nbsp;&nbsp;
                                        <button>확인</button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                
                <!-- 내가 방명록 작성할 때 - 끝-->
                <br><br>
                <!-- 다른 사람이 쓴 방명록 -->
                
                    <div class="visitor_top2">
                        <table class="visitor_top2_table">
                            <tr>
                                <td class="visitor_top2_table_left">
                                    <span>NO.</span>visitorBookNo&nbsp;&nbsp; 
                                    <a href="#">name<img src="../img/house.png"></a>&nbsp;&nbsp; 
                                    <p>(date)</p></td>
                                <td class="visitor_top2_table_right">
                                    <ul class="visitor_top2_ul">
                                        <li><a href="#">비밀로 하기</a></li>
                                        <li>|</li>
                                        <li><a href="#">삭제</a></li>
                                        <li>|</li>
                                        <li><a href="#">신고</a></li>
                                    </ul>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="visitor_content2">
                        <div class="visitor_content2_minimi">
                            <img src="../img/minimi2.png" alt="미니미">
                        </div>
                        <div class="visitor_content2_text">
                            <div><textarea>칼라릴리~!!</textarea></div>
                        </div>
                        <div class="visitor_content2_bottom">
                            <textarea></textarea>
                            <button>확인</button>
                        </div>
                    </div>
                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        
            </div>






    <div class="music">
        music
    </div>

    <div class="rightHomeTab">
        <ul class="tabs">
            <li><a href="#tab1">HOME</a></li>
            <li><a href="#tab2">PROFILE</a></li>
            <li><a href="#tab3">PHOTO</a></li>
            <li><a href="#tab4">VIDEO</a></li>
            <li><a href="#tab5">BOARD</a></li>
            <li><a href="#tab6">VISITORS</a></li>
        </ul>
    </div>
    </div>

</body>

</html>