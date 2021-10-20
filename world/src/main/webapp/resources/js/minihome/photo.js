$(function () {
    $(".photo_content").hide();
    $(".photoFolders li:first").addClass("active").show();
    $(".photoFolders:first img").attr('src', '../resources/img/open.png');
    $(".photo_content:first").show();

    $(".photoFolders li").click(function () {

        $(".photoFolders li").removeClass("active");
        $(".photoFolders img").attr('src', '../resources/img/close.png');
        $(this).addClass("active");
        $(this).children("img").attr('src', '../resources/img/open.png');
        $(".photo_content").hide();


        var activeTab = $(this).find("a").attr("href");


        $(activeTab).fadeIn();

        return false;
    });
})