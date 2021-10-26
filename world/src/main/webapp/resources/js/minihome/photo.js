<<<<<<< HEAD

/* $(function () {
    $(".photo_content").hide();
    $(".photoFolders li:first").addClass("active").show();
    $(".photoFolders:first img").attr('src', '../resources/img/open.png');
    $(".photo_content:first").show();

    $(".photoFolders li").click(function () {
		aj();
        $(".photoFolders img").attr('src', '../resources/img/close.png');
        $(this).children("img").attr('src', '../resources/img/open.png');
        $(".photo_content").hide();
    	
    	
        $(".photoFolders li").removeClass("active");
        $(this).addClass("active");


        var activeTab = $(this).find("a").attr("href");


        $(activeTab).fadeIn();

        return false;
    });
})
function aj(){
	$.ajax({
		url:
	})
} */
=======
>>>>>>> feature_visitors
$(function () {
    $(".photo_content").hide();
    $(".photoFolders li:first").addClass("active").show();
    $(".photoFolders:first img").attr('src', '../resources/img/open.png');
    $(".photo_content:first").show();

    $(".photoFolders li").click(function () {
<<<<<<< HEAD
        $(".photoFolders img").attr('src', '../resources/img/close.png');
        $(this).children("img").attr('src', '../resources/img/open.png');
        $(".photo_content").hide();
    	
    	
        $(".photoFolders li").removeClass("active");
        $(this).addClass("active");


        var activeTab = $(this).find("a").attr("href");


        $(activeTab).fadeIn();
=======

		
		/* 탭 href에서 jsp파일 이름 불러옴 */
        var folderName = $(this).find("a").text();

>>>>>>> feature_visitors

        return false;
    });
})
<<<<<<< HEAD

$(function () {
    $(".photoFolders li a").click(function () {
        var folder = $(this).children('span').html();
        $(".photo_content input[name=kind]").attr('value', folder);

    })
})
/* 
function folder(){
=======
$(function () {
    $(".photoFolders li a").click(function () {
		$(".tab_content").load($(this).attr("href"));
    })
})

/*function folder(){
>>>>>>> feature_visitors
	var po = JSON.parse(${photoList});
	alert(po[2].content );
	
	
	
<<<<<<< HEAD
} */
=======
}*/
>>>>>>> feature_visitors
		