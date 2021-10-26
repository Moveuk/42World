<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>42World</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css ">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main1.css ">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main1_section05.css ">


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
</style>

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
						<a href="#">배경음악</a>
					</li>
					<li>
						<a href="#">스킨</a>
					</li>
					<li>
						<a href="#">글꼴</a>
					</li>
					<li>
						<a href="#">미니미</a>
					</li>
					<li>
						<a href="#">스토리룸</a>
					</li>
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
									<a class="main1_main_rank_div_content_name">홍길동</a>
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
									<a class="main1_main_rank_div_content_name">홍길동</a>
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
										<a class="main1_main_rank_div_content_number_a">3</a>
									</div>
								</td>
								<td class="main1_main_rank_div_content_img_td" rowspan="2">
									<img class="main1_main_rank_div_content_img" src="${pageContext.request.contextPath}/resources/img/p3.png">
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
									<a class="a1">13000</a>
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
									<a class="main1_main_rank_div_content_name">홍길동</a>
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
									<div class="main1_main_rank_div_content_number_1">
										<a class="main1_main_rank_div_content_number_a">5</a>
									</div>
								</td>
								<td class="main1_main_rank_div_content_img_td" rowspan="2">
									<img class="main1_main_rank_div_content_img" src="${pageContext.request.contextPath}/resources/img/p5.jpeg">
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
									<a class="a1">13000</a>
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
						<a class="main1_main_profile_div_top_name">홍길동</a>
						<a class="main1_main_profile_div_top_name_1">님의 42WORLD</a>
						<input class="main1_main_profile_div_top_button" type="button" value="로그아웃">
					</div>
					<div class="main1_main_profile_div_left">
						<img src="${pageContext.request.contextPath}/resources/img/minimi/minimi13.gif">
					</div>
					<div class="main1_main_profile_div_right">


						<table>
							<tr>
								<td class="main1_main_profile_div_right_td1">
									<a>오늘 방문자</a>
								</td>
								<td>
									<a class="main1_main_profile_div_right_guest">0</a>
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
									<a>0</a>
								</td>
							</tr>
							<tr>
								<td class="main1_main_profile_div_right_td1">
									<a>선물함</a>
								</td>
								<td class="main1_main_profile_div_right_present">
									<a>0</a>
								</td>
							</tr>
							<tr>
								<td class="main1_main_profile_div_right_td1">
									<a>내 도토리</a>
								</td>
								<td class="main1_main_profile_div_right_dotori">
									<a>0</a>
								</td>
							</tr>
						</table>
						<br>
					</div>
					<div class="main1_main_profile_div_footer">
						<input type="button"
							onclick="window.open('openMinihome','userID minihome','width=1400,height=800,location=no,status=no,scrollbars=yes')"
							value="내 미니홈피가기">
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
	$('.sec05 button').on('click', function() {
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

</html>