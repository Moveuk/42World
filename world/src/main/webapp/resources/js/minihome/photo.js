
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
$(function () {
    $(".photo_content").hide();
    $(".photoFolders li:first").addClass("active").show();
    $(".photoFolders:first img").attr('src', '../resources/img/open.png');
    $(".photo_content:first").show();

    $(".photoFolders li").click(function () {
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

$(function () {
    $(".photoFolders li a").click(function () {
        var folder = $(this).children('span').html();
        $(".photo_content input[name=kind]").attr('value', folder);

    })
})
/* 
function folder(){
	var po = JSON.parse(${photoList});
	alert(po[2].content );
	
	
	
} */
		