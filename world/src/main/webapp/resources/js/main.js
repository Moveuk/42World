/* 메인 페이지 오른쪽 탭 기능 */
$(function () {
	// 페이지 띄움
	$(".tab_content").load(document.location.href+"/home");
	console.log(document.location.href);
	// 탭 클릭 상태 표시
    $(".tabs li:first").addClass("active").show();
    $(".tabs li:first a").css({ "color": "black" });

    $(".tabs li").click(function (e) {
		
		/* 오른쪽 탭 클릭시 active class 제거 및 탭 색 반전 하이라이트 */
		e.preventDefault( );
        $(".tabs li").removeClass("active");
        $(".tabs li").find("a").css({ "color": "white" });
        $(this).addClass("active");
        $(this).find("a").css({ "color": "black" });
        /*$(".tab_content").hide();*/

		/* 탭 href에서 jsp파일 이름 불러옴 */
        var activeFilePath = $(this).find("a").attr("href");
		// jquery load로 탭별로 불러옴
		$(".tab_content").load(activeFilePath);
		
		console.log(activeFilePath);
			
        return false;
    });
})

/*
$(function () {
    $(".profile_content").hide();
    $(".profileFolders li:first").addClass("active").show();
    $(".profile_content:first").show();

    $(".profileFolders li").click(function () {

        $(".profileFolders li").removeClass("active");
        $(this).addClass("active");
        $(".profile_content").hide();


        var activeTab = $(this).find("a").attr("href");


        $(activeTab).fadeIn();

        return false;
    });
})
$(function () {
    $(".video_content").hide();
    $(".videoFolders li:first").addClass("active").show();
    $(".videoFolders:first img").attr('src', '../img/open.png');
    $(".video_content:first").show();

    $(".videoFolders li").click(function () {

        $(".videoFolders li").removeClass("active");
        $(".videoFolders img").attr('src', '../img/close.png');
        $(this).addClass("active");
        $(this).children("img").attr('src', '../img/open.png');
        $(".video_content").hide();


        var activeTab = $(this).find("a").attr("href");


        $(activeTab).fadeIn();

        return false;
    });
})
$(function () {
    $(".board_content").hide();
    $(".boardFolders li:first").addClass("active").show();
    $(".boardFolders:first img").attr('src', '../img/open.png');
    $(".board_content:first").show();
    $(".middleTable").show();

    $(".boardFolders li").click(function () {

        $(".boardFolders li").removeClass("active");
        $(".boardFolders img").attr('src', '../img/close.png');
        $(this).addClass("active");
        $(this).children("img").attr('src', '../img/open.png');
        $(".board_content").hide();
        $(".middleTableAtag").hide();
        $(".middleTable").show();


        var activeTab = $(this).find("a").attr("href");


        $(activeTab).fadeIn();

        return false;
    });

    $(function () {
        $(".middleTableAtag").hide();
        $("#tab5 .rightHome .middleTable a").click(function () {
            $(".middleTable").hide();
            $(".middleTableAtag").show();

        });
    })
})
$(function () {
    $(".boardFolders li a").click(function () {
        var folder = $(this).children('span').html();
        $(".board_content input[name=kind]").attr('value', folder);

    })
})
$(function () {
    $("#tab5 .right .rightHome .board_content .middleTable td").children('a').click(function () {
        var title = $(this).html();
        $(".board_content .middleTableAtag .AtagTitle input[name=title]").attr('value', title);
        var name = $(this).parents('tr').children('td').eq(1).html();
        $(".board_content .middleTableAtag .information input[name=name]").attr('value', name);
        var date = $(this).parents('tr').children('td').eq(2).html();
        $(".board_content .middleTableAtag .information input[name=date]").attr('value', date);
        
        var cnt = $(this).parents('tr').children('td').eq(3).html();
        $(".board_content .middleTableAtag .information input[name=cnt]").attr('value', '조회수:'+cnt);
       
        
    })
})
*/

function edit() {
    window.open("editLeftHome.html", "edit", "width=400, height=600")
}
function chkFreind() {
    window.open("chkFriend.html", "edit", "width=400, height=600")
}
function writingBoard() {
    window.open("addBoard.html", "edit", "width=400, height=600")
}
function goMinihome(){
    alert("해당 미니홈피 사이트 이동");
}