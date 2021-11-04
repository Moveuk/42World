<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css?ver=1.0 ">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main1.css?ver=1.0 ">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main1_section05.css ">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/friendsearch.css?ver=1.1 "  >
<style>
* {
	box-sizing: border-box;
}

html {
	font-family: sans-serif;
	scroll-snap-type: mandatory;
	scroll-snap-points-y: repeat(100vh);
	scroll-snap-type: y mandatory;
}

section {
	border-bottom: 1px solid white;
	height: 100vh;
	scroll-snap-align: start;
}
.main1_main_profile_div_right_dotori{
	color:red;
}
</style>
<script>
	function openWin() {
         window.name = "friendForm";
         window.open("friend/requestFriendFormm", "일촌신청", "width=500, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=yes" ); 
	}
	
	function request(){
		
	    $.ajax({
		url: "/cart/cartList2",
		type: "POST", 
		
		success : function(data){
			$(data).each(function(){
				console.log(this.price + " " + this.name + " " + this.category);
				});
			},
		error :function(){
			alert("request error!");
			}
		
		}); 		
	}
	
	function enter(){
		if(event.keyCode==13){
			
			var name = $("#friendinput").val();
			console.log(name);
	
			 
			$.ajax({
		         url : 'member/getMember',
		         method : 'POST',
		         data : 'name=' + name,
		         type : "POST",

		         success : function(data) {
					 $(".friend_tbody").remove(); 
					 $(".friendsearch_table").append("<tbody class='friend_tbody'></tbody>");
					 
					 
		        	 $(data).each(
			                  function(index) {
			                     console.log(index)
			                      $(".friend_tbody").append("<tr id='friend_tr"+index+"' class='friend_tr'></tr>");
			                      $("#friend_tr"+index).append("<td id='friendsearch_table_profile_td"+index+"' class='friendsearch_table_profile_td'><img  src='${pageContext.request.contextPath}/resources/img/minimi/minimi10.gif'></td>");
			                      $("#friend_tr"+index).append(" <td id='friendsearch_table_name_td"+index+"' class='friendsearch_table_name_td'><a href='#'>"+this.name+"</a></td>");
			                      $("#friend_tr"+index).append(" <td id='friendsearch_table_gender_td"+index+"' class='friendsearch_table_gender_td'>"+this.gender+"</td>");
			                      $("#friend_tr"+index).append(" <td id='friendsearch_table_birth_td"+index+"' class='friendsearch_table_birth_td'>"+this.birth1+"</td>");
			                    
			                     
			                     
			                     
			                  }); 
				 
				},
		         error : function() {
		            alert("request error!");
		         }
		      })  
		}
	}
</script>
<body>
	<section>
		<div class="header_main">
			<div class="header_main_logo">
				<img src="${pageContext.request.contextPath}/resources/img/logo3.png" alt="로고자리">
			</div>
			<div class="header_main_logo_right"></div>
			<div class="header_main_ul">
				<ul>
					<li>
						<form name="frmm" action="product/getProductList">
							<input name="category" type="hidden" value="music">

							<input type="submit" value="배경음악">
						</form>
					</li>
					<li>
						<form name="frmm" action="product/getProductList">
							<input name="category" type="hidden" value="skin">

							<input type="submit" value="스킨">
						</form>
					</li>
					<li>
						<form name="frmm" action="product/getProductList">
							<input name="category" type="hidden" value="font">

							<input type="submit" value="글꼴">
						</form>
					</li>
					<li>
						<form name="frmm" action="product/getProductList">
							<input name="category" type="hidden" value="minimi">

							<input type="submit" value="미니미">
						</form>
					</li>
					<li>
						<form name="frmm" action="product/getProductList">
							<input name="category" type="hidden" value="miniroom">

							<input type="submit" value="스토리룸">
						</form>
					</li>
					<li>
						<!-- <form name="frmm" action="product/getProductList">
							<input name="category" type="hidden" value="miniroom">

							<input type="submit" value="스토리룸">
						</form> -->
						<input type="button" onclick="request1()" value="도토리결제">					</li>
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
									<img class="main1_main_rank_div_content_img" src="${pageContext.request.contextPath}/resources/img/p1.jpeg">
								</td>
								<td class="main1_main_rank_div_content_name_td" rowspan="2">
									<a class="main1_main_rank_div_content_name">이동욱</a>
								</td>
								<td class="main1_main_rank_div_content_guest_td">
									<a>총 방문자</a>
								</td>
							</tr>
							<tr>
								<td class="main1_main_rank_div_content_guest_td">
									<a class="a1">13000</a>
									<a class="a2">명</a>
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
									<img class="main1_main_rank_div_content_img" src="${pageContext.request.contextPath}/resources/img/p2.jpeg">
								</td>
								<td class="main1_main_rank_div_content_name_td" rowspan="2">
									<a class="main1_main_rank_div_content_name">김령규</a>
								</td>
								<td class="main1_main_rank_div_content_guest_td">
									<a>총 방문자</a>
								</td>
							</tr>
							<tr>
								<td class="main1_main_rank_div_content_guest_td">
									<a class="a1">12590</a>
									<a class="a2">명</a>
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
									<img class="main1_main_rank_div_content_img" src="${pageContext.request.contextPath}/resources/img/p3.png">
								</td>
								<td class="main1_main_rank_div_content_name_td" rowspan="2">
									<a class="main1_main_rank_div_content_name">박영권</a>
								</td>
								<td class="main1_main_rank_div_content_guest_td">
									<a>총 방문자</a>
								</td>
							</tr>
							<tr>
								<td class="main1_main_rank_div_content_guest_td">
									<a class="a1">11040</a>
									<a class="a2">명</a>
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
									<img class="main1_main_rank_div_content_img" src="${pageContext.request.contextPath}/resources/img/p4.jpeg">
								</td>
								<td class="main1_main_rank_div_content_name_td" rowspan="2">
									<a class="main1_main_rank_div_content_name">최정환</a>
								</td>
								<td class="main1_main_rank_div_content_guest_td">
									<a>총 방문자</a>
								</td>
							</tr>
							<tr>
								<td class="main1_main_rank_div_content_guest_td">
									<a class="a1">10520</a>
									<a class="a2">명</a>
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
									<img class="main1_main_rank_div_content_img" src="${pageContext.request.contextPath}/resources/img/p5.jpeg">
								</td>
								<td class="main1_main_rank_div_content_name_td" rowspan="2">
									<a class="main1_main_rank_div_content_name">피효정</a>
								</td>
								<td class="main1_main_rank_div_content_guest_td">
									<a>총 방문자</a>
								</td>
							</tr>
							<tr>
								<td class="main1_main_rank_div_content_guest_td">
									<a class="a1">120</a>
									<a class="a2">명</a>
								</td>
							</tr>
						</table>



					</div>
				</div>

			</div>
			<div class="main1_main_profile">
				<div class="main1_main_profile_div">
					<div class="main1_main_profile_div_top">
						<a class="main1_main_profile_div_top_name">${sessionScope.loginName}</a>
						<a class="main1_main_profile_div_top_name_1">님의 42WORLD</a>
						<input class="main1_main_profile_div_top_button" type="button" value="로그아웃">
					</div>
					<div class="main1_main_profile_div_left">
						<img src="${pageContext.request.contextPath}/resources/img/minimi/${sessionScope.loginPropic}">
					</div>
					<div class="main1_main_profile_div_right">
						<table>
							<tr>
								<td class="main1_main_profile_div_right_td1">
									<a>오늘 방문자</a>
								</td>
								<td>
									<a class="main1_main_profile_div_right_guest">${GuestCount}</a>
								</td>
							</tr>
							<tr>
								<td class="main1_main_profile_div_right_td1">
									<a>새게시물</a>
								</td>
								<td class="main1_main_profile_div_right_board">
									<a>0</a>
								</td>
							</tr>
							<tr>
								<td class="main1_main_profile_div_right_td1">
									<a>일촌신청</a>
								</td>
								<td class="main1_main_profile_div_right_friend">
									<a href="#" onclick="openWin()">${FriendCount}</a>
								</td>
							</tr>
							<tr>
								<td class="main1_main_profile_div_right_td1">
									<a>선물함</a>
								</td>
								<td class="main1_main_profile_div_right_present">
									<a>${ItemCount}</a>
								</td>
							</tr>
							<tr>
								<td class="main1_main_profile_div_right_td1">
									<a>내 도토리</a>
								</td>
								<td class="main1_main_profile_div_right_dotori">
									<a>${DotorySum}</a>
								</td>
							</tr>
							<tr>
								<td class="main1_main_profile_div_right_td1">
									<a>장바구니</a>
								</td>
								<td class="main1_main_profile_div_right_dotori">
									<a href="cart/cartList">${CartCount}</a>
								</td>
							</tr>
						</table>
						<br>
					</div>
					<div class="main1_main_profile_div_footer">
						<input type="button"
							onclick="window.open('openMinihome','memberNo minihome','width=1400,height=800,location=no,status=no,scrollbars=yes')"
							value="내 미니홈피가기">
					</div>

				</div>
			</div>
		</div>
	</section>
	<section>
	
		 <div class="friendsearch_div">
        <div class="friendsearch_title_div">
          <p class="friendsearch_title" >친구 검색페이지</p>
          <span class="friendsearch_subtitle" >친구의 이름을 검색해 보세요.</span><br>
          <span class="friendsearch_subtitle" >(친구의 이름을 클릭하면 미니홈피로 이동합니다.)</span>
        </div>
        
        <div class="friendsearch_name">
            <input id="friendinput" type = "text" placeholder="이름을 입력하고 ENTER를 누르세요." onkeypress="enter()">
           
        </div>
        <div class="friendsearch_table">
            <table class="table table-hover">
                <thead>
                  <tr>
                    <th >프로필</th>
                    <th >이름</th>
                    <th >성별</th>
                    <th >생년월일</th>                    
                  </tr> 
                </thead>
                <tbody class="friend_tbody">
                  <tr class="friend_tr">
                    <td class="friendsearch_table_profile_td"><img  src="${pageContext.request.contextPath}/resources/img/minimi/minimi10.gif"></td>
                    <td class="friendsearch_table_name_td"><a href="#">최정환</a></td>
                    <td class="friendsearch_table_gender_td">남자</td>
                    <td class="friendsearch_table_birth_td">1994.08.01</td>
                  </tr>
                  <tr class="friend_tr">
                    <td class="friendsearch_table_profile_td"><img  src="${pageContext.request.contextPath}/resources/img/minimi/minimi13.gif"></td>
                    <td class="friendsearch_table_name_td"><a href="#">피효정</a></td>
                    <td class="friendsearch_table_gender_td">남자</td>
                    <td class="friendsearch_table_birth_td">1996.01.14</td>
                  </tr>
                  

                </tbody>
              </table>
        </div>
    </div>
	</section>

	<section>
		<div id="section05" class="section sec05">
			<div class="section05_wrap">
				<strong>이런 게 궁금하셨죠?</strong>
				<ul>
					<li>
						<button type="button">
							홈페이지 가이드 1
							<span></span>
						</button>
						<p>
							설명1
							<br>
							설명1
						</p>
					</li>
					<li>
						<button type="button">
							홈페이지 가이드 2
							<span></span>
						</button>
						<p>
							설명2
							<br>
							설명2
						</p>
					</li>
					<li>
						<button type="button">
							홈페이지 가이드 3
							<span></span>
						</button>
						<p>
							설명3
							<br>
							설명3
						</p>
					</li>
					<li>
						<button type="button">
							홈페이지 가이드 4
							<span></span>
						</button>
						<p>
							설명4
							<br>
							설명4
						</p>
					</li>
					<li>
						<button type="button">
							홈페이지 가이드 5
							<span></span>
						</button>
						<p>
							설명5
							<br>
							설명5
						</p>
					</li>
					<li>
						<button type="button">
							홈페이지 가이드 6
							<span></span>
						</button>
						<p>
							설명6
							<br>
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

</html>