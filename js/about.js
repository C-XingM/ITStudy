$(function () {
    //选项卡
    $("#aboutTab li").click(function () {
        $("#aboutTab li").css("border", "3px solid #fff");
        $("#aboutTab li").find("a").css("color", "#787D82");
        $(this).css("border-left", "3px solid #f20d0d");
        $(this).find("a").css("color", "#f20d0d");

    });

});