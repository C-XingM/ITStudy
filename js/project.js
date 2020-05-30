var projectdata,videodata;
$(function () {
    //主要内容获取
    $.ajax({
        url: 'http://127.0.0.1/bootstrap/mobang/ITStudy/php/project.php', //也可以用$.getJSON()
        type: 'get',
        dataType: "json", //返回json数据    
        success: Projectdata
    });
    $.ajax({
        url: 'http://127.0.0.1/bootstrap/mobang/ITStudy/php/video.php', //也可以用$.getJSON()
        type: 'get',
        dataType: "json", //返回json数据    
        success: Videodata
    });
    Videonav();
    window.addEventListener('hashchange', function() { 
        findurl(); 
    });
});
//视频显示界面-课程导航栏
function Videonav(){
    $("#videoTab li").click(function () {
        $("#videoTab li").find("a").css({"color":"#333333","border": "0"});
        $(this).find("a").css({"color":"#167ed9","border-top": "2px solid #167ed9"});
    });
}
//进入播放界面
function Videodata(data){
    videodata=data;
    findurl();
    //点击显示页的视频模块
    // $(".project-content .all>div").click(function () {  
    //     var name =$(this).find(".name").text();
    //     Videoshow(name,data);
       
       
    // });
}
function Videoshow(id,data){
        var vdatas = projectdata.filter(function (e) {
            return e.id == id;
        });
        var vdata = data.filter(function (e) {
            return e.type == vdatas[0].a_name;
        });     
        // 课程目录
        $(".video02 .tab-content ul").html("");
        for (var row = 0 ; row < vdata.length; row++){
            var txt1=$("<li></li>")
            var txt2=$("<i></i>")
            txt2.attr("class","fa fa-play");
            txt1.append(txt2,"第"+(row+1)+"节：",vdata[row].name)
            $(".video02 .tab-content ul").append(txt1);
        }
        // 视频地址添加
        $(".video02 .tab-content ul li").click(function(){
            $(".video01 .video-show video").html("");
            var source =$("<source>");
            source.attr({"src":vdata[$(this).index()].download,"type":"video/mp4"});
            $(".video01 .video-show video").append(source);
            $(".video02 .tab-content ul li").css({"background-color":"#f4f4f4","color":"#787d82"});
            $(this).css({"background-color":"#2b333b","color":"#fff"});
            $(".project-content .video01 .video-chapters").text($(this).text());
            $("html , body").animate({scrollTop: 300});

        });
        $(".video02 .tab-content ul li").eq(0).trigger("click");
        // 课程介绍
        var pdata1 = projectdata.filter(function (e) {
            return e.id == id;
        });      
        $("#video-two p").text(pdata1[0].a_describe);
        //项目介绍页下载按钮
        $(".project-content .video01 .video-download").click(function(){
            //直接下载，用户体验好
            var $form = $('<form method="GET"></form>');
            $form.attr('action',pdata1[0].a_download);
            $form.appendTo($('body'));
            $form.submit();
        });
        //项目介绍页具体内容
        $(".project-content .video01 .video-name").text(pdata1[0].a_name);
        $(".project-content .video01 .video-level").text(pdata1[0].a_level);
        $(".project-content .video01 .video-course").text(pdata1[0].a_course+"节");
        $(".project-content .video01 .video-watch").text("15225人已学");
        //实战推荐
        var pdata2 = projectdata.filter(function (e) {
            return e.a_type == pdata1[0].a_type;
        });
        var name = pdata1[0].a_name;
        $(".video-push .push-head").siblings().remove();
        for(var row of pdata2){
            if(row.a_name != name){
            var txt1 =$("<a></a>");
            var txt2 =$("<i></i>");
            txt1.attr({"href":"project.html#project"+row.id,"class":"list-group-item name","data-toggle":"tooltip","title":row.a_name});
            txt2.attr("class","fa fa-file-video-o");
            txt1.append(txt2,row.a_name);
            $(".video-push .push-head").after(txt1);
            } 
        }
        $(".video-push .name").click(function(){
            $("html , body").animate({scrollTop: 300});
        });

}
//分类导航栏+搜索框
function Projectdata(data) {
    var projectdatas = data;
    projectdata = data;
    $(".project-nav ul li a").click(function () {
        if ($(this).text() != "全部项目") {
            var find = $(this).text();
            projectdatas = data.filter(function (e) {
                return e.a_type == find;
            }) 
        }else{
            projectdatas = data;
        }
        $(".project-nav ul>li>a").css("color", "#07111b");
        $(this).css("color", "#cc8800");
        project(projectdatas);
    });
    $(".project-nav ul li").eq(0).find("a").trigger("click");
    $("#project-find .input-group-addon").click(function () {
        $(".project-content .all").show();
        $(".project-content .video").hide();
        var find = $("#project-find .form-control").val();
        projectdata = data.filter(function (e) {
            find = find.trim().replace(/\s/g, "").toLowerCase();
            var i = (e.a_name.toLowerCase().indexOf(find) >= 0);
            return i;
        });
        project(projectdata);
        $("#project-find .form-control").attr("placeholder", $("#project-find .form-control").val());
        $("#project-find .form-control").val("");

    });
    $(document).keydown(function (e) {
        if (e.keyCode == 13) {
            $("#project-find .input-group-addon").trigger("click");
            return false;
        }
    });
}
//加载项目信息--内容显示
function project(datas) {
    // $(".project-content .all").show();
    // $(".project-content .video").hide();
    $(".project-content .all").html("");
    for (var row of datas) {
        var txt = $("<a></a>");
        var txt0 = $("<div></div>");
        var txt1 = $("<div></div>");
        var txt2 = $("<img></img>");
        var txt3 = $("<div></div>");
        var txt4 = $("<p></p>");
        var txt5 = $("<strong></strong>");
        var txt6 = $("<p></p>");
        var txt7 = $("<span></span>");
        var txt8 = $("<span></span>");
        var txt9 = $("<span></span>");
        var txt10 = $("<i></i>");
        var txt11 = $("<p></p>");
        var txt12 = $("<strong></strong>");
        var txt13 = $("<span></span>");
        txt.attr("href", "project.html#project"+row.id);
        txt0.attr("class", "col-xs-2 col-sm-4");
        txt1.attr("class", "img");
        txt2.attr("src", row.a_img);
        txt4.attr({
            "data-toggle": "tooltip",
            "title": row.a_name
        });
        txt5.attr("class", "name");
        txt7.attr("class", "level");
        txt8.attr("class", "course");
        txt9.attr("class", "watch");
        txt5.text(row.a_name);
        txt7.text(row.a_level);
        txt8.text(row.a_course + "节") ;//+ row.a_time + "/小时"
        txt10.attr("class", "fa fa-user-o");
        txt12.text("￥" + row.a_money + ".00");
        txt13.text("限时优惠");
        txt11.append(txt12, txt13);
        txt9.append(txt10, "96")
        txt6.append(txt7, txt8, txt9);
        txt4.append(txt5);
        txt3.append(txt4, txt6);//, txt11
        txt1.append(txt2);
        txt0.append(txt1, txt3);
        txt.append(txt0)
        $(".project-content .all").append(txt);
    }
}
/* 跳转页面定位 */
function findurl() {
    var url = window.location.href;
    if (url.indexOf("#project") != -1) {
        //从地址中提取技术页面的技术
        var id = url.slice(url.indexOf("#") + 8) ;
        $(".project-content .all").hide();
        $(".project-content .video").show();
        Videoshow(id,videodata);
    }else{
        $(".project-content .all").show();
        $(".project-content .video").hide();
    }
}