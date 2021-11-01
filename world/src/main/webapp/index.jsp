<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
<<<<<<< HEAD
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>42월드</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css ">
=======
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>42World</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
    <script type="text/javascript">
    
/*     function requestPay2() {
		
    	
    	
    		//가맹점 식별코드
    		IMP.init('imp96463033');
    		IMP.request_pay({
    		    pg : 'kcp',
    		    pay_method : 'card',
    		    merchant_uid :2,
    		    name : '도토리' , //결제창에서 보여질 이름
    		    amount : 100, //실제 결제되는 가격
    		    buyer_email : 'iamport@siot.do',
    		    buyer_name : '구매자이름',
    		    buyer_tel : '010-1234-5678',
    		    buyer_addr : '서울 강남구 도곡동',
    		    buyer_postcode : '123-456'
    		}, function(rsp) {
    			console.log(rsp);
    			// 결제검증
    			$.ajax({
    	        	type : "POST",
    	        	data : 'memberNo=' + '3' +'&giftTo='+'3' +'&price='+'100',
    	        	url : "insertDotory" 
    	        }).done(function(data) {
    	        	
    	        	console.log(data);
    	        	
    	        	// 위의 rsp.paid_amount 와 data.response.amount를 비교한후 로직 실행 (import 서버검증)
    	        	if(rsp.paid_amount == data.response.amount){
    		        	alert("결제 및 결제검증완료");
    	        	} else {
    	        		alert("결제 실패");
    	        	}
    	        });
    		}
    		
    		
    		
    		);
    	
      } */
    </script>
>>>>>>> 27462d240832c41ebc3708a41f8e554d25176f26
</head>
<body>
<<<<<<< HEAD
	<form method="post" action="login" id="formm">
		<div class="index_main">
			<div class="index_login">
				<div class="index_login_logo">
					<a>
						<ul>
							<li>
								<img class="index_login_logo_logo1" src="${pageContext.request.contextPath}/resources/img/logo1.jpeg">
							</li>
							<li>
								<img class="index_login_logo_logo2" src="${pageContext.request.contextPath}/resources/img/logo2.jpeg">
							</li>
						</ul>
					</a>
				</div>
				<div class="index_login_input">
					<input type="text" id="email" name="email" placeholder="아이디(이메일)">
					<input type="text" id="password" name="password" placeholder="비밀번호">
				</div>
				<div class="index_login_button">
					<input type="submit" value="로그인">
				</div>
				<div class="index_login_link">
					<ul class="index_login_link_ul">
						<li>
							<a class="index_login_link_finduser" href=#>아이디/비밀번호 찾기</a>

						</li>
						<li>
							<a>|</a>
						</li>
						<li>
							<a class="index_login_link_join" href=#>회원가입</a>
						</li>
					</ul>
					<div id="ball" class="ball1">1</div>
					<div id="ball1" class="ball2">2</div>
					<div id="ball2" class="ball3"></div>
					<div id="ball" class="ball4">4</div>
					<div id="ball2" class="ball5">5</div>
					<div id="ball1" class="ball6">6</div>
					<div id="ball2" class="ball7">7</div>
					<div id="ball" class="ball8">8</div>
					<div id="ball2" class="ball9">9</div>
					<div id="ball1" class="ball10">10</div>
				</div>

			</div>

		</div>
		<div id="box"></div>
	</form>
</body>
=======
    <section>
        <div class="header_main">
            <div class="header_main_logo">
                <img src="../resources/img/logo3.png" alt="로고자리">
            </div>
            <div class="header_main_logo_right">

            </div>
            <div class="header_main_ul">
                <ul>
                    <li><a href="#">배경음악</a></li>
                    <li><a href="#">스킨</a></li>
                    <li><a href="#">글꼴</a></li>
                    <li><a href="#">미니미</a></li>
                    <li><a href="#">스토리룸</a></li>
                     <li><a href="#" onclick="request1()">도토리 결제</a></li>
                    <input type="button" onclick="request1()" value="도토리결제">
                </ul>
            </div>
        </div>

        <div class="main1_main">
            <div class="main1_main_rank">
                <div class="main1_main_rank_div">
                    <div class="main1_main_rank_div_content">
                        <table>
                            <tr>
                                <td class="main1_main_rank_div_content_number_td" rowspan="2">
                                    <div class="main1_main_rank_div_content_number">
                                        <a class="main1_main_rank_div_content_number_a">1</a>
                                    </div>
                                </td>
                                <td class="main1_main_rank_div_content_img_td" rowspan="2">
                                    <img class="main1_main_rank_div_content_img" src="../resources/img/p1.jpeg">
                                </td>
                                <td class="main1_main_rank_div_content_name_td" rowspan="2">
                                    <a class="main1_main_rank_div_content_name">홍길동</a>
                                </td>
                                <td class="main1_main_rank_div_content_guest_td">
                                    <a>총 방문자</a>
                                </td>
                            </tr>
                            <tr>
                                <td class="main1_main_rank_div_content_guest_td">
                                    <a class="a1">13000</a><a class="a2">명</a>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td class="main1_main_rank_div_content_number_td" rowspan="2">
                                    <div class="main1_main_rank_div_content_number">
                                        <a class="main1_main_rank_div_content_number_a">2</a>
                                    </div>
                                </td>
                                <td class="main1_main_rank_div_content_img_td" rowspan="2">
                                    <img class="main1_main_rank_div_content_img" src="../resources/img/p2.jpeg">
                                </td>
                                <td class="main1_main_rank_div_content_name_td" rowspan="2">
                                    <a class="main1_main_rank_div_content_name">홍길동</a>
                                </td>
                                <td class="main1_main_rank_div_content_guest_td">
                                    <a>총 방문자</a>
                                </td>
                            </tr>
                            <tr>
                                <td class="main1_main_rank_div_content_guest_td">
                                    <a class="a1">13000</a><a class="a2">명</a>
                                </td>
                            </tr>
                        </table>

                        <table>
                            <tr>
                                <td class="main1_main_rank_div_content_number_td" rowspan="2">
                                    <div class="main1_main_rank_div_content_number">
                                        <a class="main1_main_rank_div_content_number_a">3</a>
                                    </div>
                                </td>
                                <td class="main1_main_rank_div_content_img_td" rowspan="2">
                                    <img class="main1_main_rank_div_content_img" src="../resources/img/p3.png">
                                </td>
                                <td class="main1_main_rank_div_content_name_td" rowspan="2">
                                    <a class="main1_main_rank_div_content_name">홍길동</a>
                                </td>
                                <td class="main1_main_rank_div_content_guest_td">
                                    <a>총 방문자</a>
                                </td>
                            </tr>
                            <tr>
                                <td class="main1_main_rank_div_content_guest_td">
                                    <a class="a1">13000</a><a class="a2">명</a>
                                </td>
                            </tr>
                        </table>

                        <table>
                            <tr>
                                <td class="main1_main_rank_div_content_number_td" rowspan="2">
                                    <div class="main1_main_rank_div_content_number_1">
                                        <a class="main1_main_rank_div_content_number_a">4</a>
                                    </div>
                                </td>
                                <td class="main1_main_rank_div_content_img_td" rowspan="2">
                                    <img class="main1_main_rank_div_content_img" src="../resources/img/p4.jpeg">
                                </td>
                                <td class="main1_main_rank_div_content_name_td" rowspan="2">
                                    <a class="main1_main_rank_div_content_name">홍길동</a>
                                </td>
                                <td class="main1_main_rank_div_content_guest_td">
                                    <a>총 방문자</a>
                                </td>
                            </tr>
                            <tr>
                                <td class="main1_main_rank_div_content_guest_td">
                                    <a class="a1">13000</a><a class="a2">명</a>
                                </td>
                            </tr>
                        </table>

                        <table>
                            <tr>
                                <td class="main1_main_rank_div_content_number_td" rowspan="2">
                                    <div class="main1_main_rank_div_content_number_1">
                                        <a class="main1_main_rank_div_content_number_a">5</a>
                                    </div>
                                </td>
                                <td class="main1_main_rank_div_content_img_td" rowspan="2">
                                    <img class="main1_main_rank_div_content_img" src="../resources/img/p5.jpeg">
                                </td>
                                <td class="main1_main_rank_div_content_name_td" rowspan="2">
                                    <a class="main1_main_rank_div_content_name">홍길동</a>
                                </td>
                                <td class="main1_main_rank_div_content_guest_td">
                                    <a>총 방문자</a>
                                </td>
                            </tr>
                            <tr>
                                <td class="main1_main_rank_div_content_guest_td">
                                    <a class="a1">13000</a><a class="a2">명</a>
                                </td>
                            </tr>
                        </table>



                    </div>
                </div>

            </div>
            <div class="main1_main_profile">
                <div class="main1_main_profile_div">
                    <div class="main1_main_profile_div_top">
                        <a class="main1_main_profile_div_top_name">홍길동</a><a
                            class="main1_main_profile_div_top_name_1">님의 42WORLD</a>
                        <input class="main1_main_profile_div_top_button" type="button" value="로그아웃">
                    </div>
                    <div class="main1_main_profile_div_left">
                        <img src="../resources/img/minimi/minimi13.gif">
                    </div>
                    <div class="main1_main_profile_div_right">


                        <table>
                            <tr>
                                <td class="main1_main_profile_div_right_td1"><a>오늘 방문자</a></td>
                                <td> <a class="main1_main_profile_div_right_guest">0</a></td>
                            </tr>
                            <tr>
                                <td class="main1_main_profile_div_right_td1"><a>새게시물</a></td>
                                <td class="main1_main_profile_div_right_board"> <a>0</a></td>
                            </tr>
                            <tr>
                                <td class="main1_main_profile_div_right_td1"><a>일촌신청</a></td>
                                <td class="main1_main_profile_div_right_friend"> <a>0</a></td>
                            </tr>
                            <tr>
                                <td class="main1_main_profile_div_right_td1"><a>선물함</a></td>
                                <td class="main1_main_profile_div_right_present"> <a>0</a></td>
                            </tr>
                            <tr>
                                <td class="main1_main_profile_div_right_td1"><a>내 도토리</a></td>
                                <td class="main1_main_profile_div_right_dotori"> <a>0</a></td>
                            </tr>
                        </table>
                        <br>
                    </div>
                    <div class="main1_main_profile_div_footer">
                        <input type="button" onclick="window.open('openMinihome','userID minihome','width=1400,height=800,location=no,status=no,scrollbars=yes')" value="내 미니홈피가기">
                    </div>

                </div>
            </div>
        </div>
    </section>
    <section>
        <h1>Section Two</h1>
    </section>
    <section>
        <h1>Section Three</h1>
    </section>
    <section>
        <h1>Section Four</h1>
    </section>
    <section>
        <div id="section05" class="section sec05">
            <div class="section05_wrap">
                <strong>이런 게 궁금하셨죠?</strong>
                <ul>
                    <li>
                        <button type="button">홈페이지 가이드 1<span></span></button>
                        <p>
                            설명1<br>
                            설명1
                        </p>
                    </li>
                    <li>
                        <button type="button">홈페이지 가이드 2<span></span></button>
                        <p>
                            설명2<br>
                            설명2
                        </p>
                    </li>
                    <li>
                        <button type="button">홈페이지 가이드 3<span></span></button>
                        <p>
                            설명3<br>
                            설명3
                        </p>
                    </li>
                    <li>
                        <button type="button">홈페이지 가이드 4<span></span></button>
                        <p>
                            설명4<br>
                            설명4
                        </p>
                    </li>
                    <li>
                        <button type="button">홈페이지 가이드 5<span></span></button>
                        <p>
                            설명5<br>
                            설명5
                        </p>
                    </li>
                    <li>
                        <button type="button">홈페이지 가이드 6<span></span></button>
                        <p>
                            설명6<br>
                            설명6
                        </p>
                    </li>
                </ul>
            </div>
        </div>
    </section>
</body>

<script>
    // section 05
    $('.sec05 button').on('click', function () {
        if ($(this).parent().hasClass('on')) {
            $(this).parent().removeClass('on')
            $(this).next().stop().slideUp(500, 'swing');

            return;
        }
        $('.sec09 ul li.on').removeClass('on');
        $(this).parent().addClass('on');
        $('.sec09 button').next().stop().slideUp(500, 'swing');
        $(this).next().stop().slideDown(500, 'swing');

    });

</script>
<script>
function request1() {
	
	IMP.init('imp96463033');
	IMP.request_pay({
	    pg : 'kcp',
	    pay_method : 'card',
	    merchant_uid :19,
	    name : '도토리' , //결제창에서 보여질 이름
	    amount : 100, //실제 결제되는 가격
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '구매자이름',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울 강남구 도곡동',
	    buyer_postcode : '123-456'
    }, function (rsp) { // callback
       if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
        // jQuery로 HTTP 요청
        console.log("여기!!");       
        $.ajax({
            url: "/insertDotory", // 예: https://www.myservice.com/payments/complete
            method: "POST",
            type:"POST",
            data: 'memberNo=' + '3' +'&giftto='+'3' +'&price='+'100'
 
        }).done(function (data) { 
        	alert("결제에 성공하였습니다.");
        	
        
       }) 
      } else {
        alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
      } 
    }); 
  }
</script>

>>>>>>> 27462d240832c41ebc3708a41f8e554d25176f26
</html>